INSERT INTO [InputData]
           ([ClientId]
           ,[EventId]
           ,[StartDate]
           ,[EndDate]
           ,[EventType]
           ,[EventSubtype]
           ,[EventDesc])
     VALUES
           (1234,'R1234','2023-01-01','2023-01-01','Request','Request','This is Request'),
		   (1234,'A1234','2023-01-01','2023-01-04','Assessment','Needs Assessment','This is Needs Assessment'),
		   (1234,'S1234','2023-01-05',NULL,'Service','Residential','This is Residential Service'),
		   (9876,'R9876_1','2023-07-09','2023-07-10','Request','Request','This is Request'),
		   (9876,'A9876_1','2023-07-11','2023-07-14','Assessment','Needs Assessment','This is Needs Assessment'),
		   (9876,'S9876_1','2023-07-15',NULL,'Service','Nursing','This is Nursing Service'),
		   (9876,'R9876_2','2023-09-15','2023-09-15','Request','Request','This is Request'),
		   (9876,'A9876_2','2023-09-15','2023-09-16','Assessment','Carers Assessment','This is Carers Assessment'),
		   (9876,'S9876_2','2023-09-16','2023-09-30','Service','Carer Respite','This is Carer Respite Service'),
		   (9876,'R9876_3','2024-02-15','2024-02-15','Request','Request','This is Request'),
		   (9876,'A9876_3','2024-02-15','2024-02-16','Assessment','Carers Assessment','This is Carers Assessment'),
		   (9876,'S9876_3','2024-02-16','2024-02-28','Service','Carer Respite','This is Carer Respite Service'),
		   (9876,'S9876_4','2024-02-25','2024-03-27','Service','OT','This is OT Service'),
		   (7895,'B1','2023-04-01',NULL,'ASC Long Term','Direct Payment','Community'),
		   (7895,'B2','2023-04-01',NULL,'ASC Long Term','Home Support','Community'),
		   (7895,'B3','2024-04-05','2024-04-05','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B4','2024-04-13','2024-04-13','Community','Podiatry Service','Follow-up'),
		   (7895,'B5','2024-04-19','2024-04-19','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B6','2024-04-21','2024-04-21','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B7','2024-04-28','2024-04-28','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B8','2024-05-07','2024-05-07','A&E','Emergency Medicine Service','Emergency Dept'),
		   (7895,'B9','2024-05-10','2024-05-10','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B10','2024-05-12','2024-05-12','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B11','2024-05-15','2024-05-15','Acute Inpatient','Ophthalmology Service','Elective'),
		   (7895,'B12','2024-05-15','2024-05-15','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B13','2024-05-19','2024-05-19','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B14','2024-05-21','2024-05-21','A&E','Emergency Medicine Service','Emergency Dept'),
		   (7895,'B15','2024-05-21','2024-05-22','Mental Health','Psychiatric liaison service','Community'),
		   (7895,'B16','2024-05-24','2024-05-24','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B17','2024-05-24','2024-05-24','Mental Health','Crisis resolution team/home treatment service','Community'),
		   (7895,'B18','2024-05-25','2024-05-25','A&E','Emergency Medicine Service','Emergency Dept'),
		   (7895,'B19','2024-05-25','2024-05-25','Community','DNA - Podiatry Service','First'),
		   (7895,'B20','2024-05-26','2024-05-26','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B21','2024-06-09','2024-06-09','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B22','2024-06-14','2024-06-15','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B23','2024-06-20','2024-06-20','Acute Outpatient','Ophthalmology Service','Follow-up'),
		   (7895,'B24','2024-06-23','2024-06-23','Community','DNA - Podiatry Service','First'),
		   (7895,'B25','2024-06-23','2024-06-23','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B26','2024-06-27','2024-06-27','A&E','Emergency Medicine Service','Emergency Dept'),
		   (7895,'B27','2024-06-28','2024-06-29','Mental Health','Community mental health team - functional','Community'),
		   (7895,'B28','2024-06-28','2024-06-28','Mental Health','Psychiatric liaison service','Community');