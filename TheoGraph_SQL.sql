--Remove old temparory table if exists
DROP TABLE IF EXISTS TheographProcessedData;
DROP TABLE IF EXISTS #InputTempTable;
DROP TABLE IF EXISTS #DateExpand;

--Create temparory table using the dataset
SELECT DENSE_RANK() OVER(ORDER BY ClientId) ClientIndx
	  ,ROW_NUMBER() OVER(PARTITION BY ClientId Order By StartDate) EventIndx
	  ,[ClientId]
      ,[EventId]
      ,[StartDate]
      ,[EndDate]
      ,[EventType]
      ,[EventSubtype]
      ,[EventDesc]
	  ,DENSE_RANK() OVER(PARTITION BY ClientId Order By EventType) EventRank
	  ,CUME_DIST() OVER(PARTITION BY ClientID, EventType Order By EventSubtype) EventSubtypeRank
 INTO #InputTempTable
 FROM [InputData];

CREATE TABLE #DateExpand(
	ClientIndx int
	,EventIndx int
	,EventDate Date
);

--Variables to store the number of clients and events
DECLARE @clientCount INTEGER;
DECLARE @eventCount INTEGER;
DECLARE @start Date;
DECLARE @end Date;

SELECT @clientCount=MAX(ClientIndx) FROM #InputTempTable;
--Loop to traverse through each client
WHILE @clientCount > 0
BEGIN
	SELECT @eventCount=MAX(EventIndx) FROM #InputTempTable WHERE ClientIndx=@clientCount
	--Loop to traverse through each event of each client
	WHILE @eventCount > 0
	BEGIN
		SELECT @start=StartDate, @end=ISNULL(EndDate,CAST(GETDATE() as DATE)) FROM #InputTempTable WHERE ClientIndx=@clientCount AND EventIndx=@eventCount
		WHILE @start <= @end
		BEGIN
			INSERT INTO #DateExpand(ClientIndx,EventIndx,EventDate) VALUES(@clientCount, @eventCount, @start)
			SET @start = DATEADD(DAY,1,@start)
		END
		SET @eventCount = @eventCount - 1
	END
	SET @clientCount = @clientCount - 1
END;

--Join DateExpand table to InputTempTable
SELECT ITT.ClientIndx
	  ,ITT.EventIndx
	  ,ITT.[ClientId]
      ,ITT.[EventId]
      ,ITT.[StartDate]
      ,ITT.[EndDate]
      ,ITT.[EventType]
      ,ITT.[EventSubtype]
      ,ITT.[EventDesc]
	  ,ITT.EventRank
	  ,ITT.EventSubtypeRank
	  ,ITT.EventType + ' - ' + ITT.EventSubtype [Event_Type_Subtype]
	  --,ITT.EventRank + ITT.EventSubtypeRank [Event_Type_Subtype_Rank]
	  ,DENSE_RANK() OVER(PARTITION BY ClientId Order By ITT.EventType + ' - ' + ITT.EventSubtype) [Event_Type_Subtype_Rank]
	  ,DE.EventDate
INTO TheographProcessedData
FROM #InputTempTable as ITT
LEFT JOIN #DateExpand DE ON ITT.ClientIndx=DE.ClientIndx AND ITT.EventIndx=DE.EventIndx;

--ResultSet
SELECT * FROM TheographProcessedData;

--Remove temporary table
--DROP TABLE IF EXISTS #FinalData;
DROP TABLE IF EXISTS #InputTempTable;
DROP TABLE IF EXISTS #DateExpand;