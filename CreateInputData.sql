CREATE TABLE [InputData](
	[ClientId] [int] NOT NULL,
	[EventId] [varchar](16) NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[EventType] [varchar](50) NOT NULL,
	[EventSubtype] [varchar](50) NOT NULL,
	[EventDesc] [varchar](1000) NULL
);