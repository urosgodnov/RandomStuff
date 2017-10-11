DROP TABLE IF EXISTS import.TestAll
go
SELECT a.*,w.active as Status,null as SequenceD --,n.[Sequence updates in WebTMs] as SequenceD,tmp.NOTES as n1, REPLACE(REPLACE(CASE WHEN tmp.NOTES='' then n.[Join ALL steps] else tmp.NOTES end, CHAR(13), ''), CHAR(10), '') as Notes
INTO import.TestAll
FROM 
(SELECT [RecordIDW],
        [SubSysRefRec],
       [ProjectRec],
	   [BSID],
       [appNoW],
	   [appNoRec],
	   [regNoW],
	   [regNoRec],
	   [TrademarkW],
       [TradeMarkRec],
       [initalOwnerRec],
       [finalOwnerRec],
       [OwnerNameWebTMSChecked],
       [OwnerAddressWebTMSChecked],
       [CountryW],
       [CountryCodeW],
	   [CountryCodeRec],
	   [ClassesW],
	   [ClassesRec],
	   [columnJoin],
	   [WorkStatusID],
	   Task,
	   Designs,
	   [rowNumRec] as RowNumberRec
FROM [dbo].[SolidMatch]
WHERE [Designs] IS NULL and (WorkStatusID in (1,5) or WorkStatusID is null)
UNION ALL
SELECT [RECORIDW]AS [RecordIDW],
       [Subsystem Ref] as [SubSysRefRec],
       Project            as [ProjectRec],
	   [BSID],
       [APPLICATIONNoW]   as [appNoW],
	   [Application No#]  as [appNoRec],
	   [REGISTRATIONNoW]  as [regNoW],
	   [Registration No#] as [regNoRec],
	   [TrademarkW],
       Name as [TradeMarkRec],
	   [Initial Owner]   as [initalOwnerRec],
       [Final Owner],
       [OwnerNameWebTMSChecked],
       [OwnerAddressWebTMSChecked],
       [COUNTRYW] as CountryW,
       [CCW] AS [CountryCodeW],
	   [CCRec] AS [CountryCodeRec],
	   [ClassesW],
	   [ClassesRec],
	   _Matched AS [columnJoin],
	   [WorkStatusID],
	   Task,
	   Designs,
       [RowNumberRec]
FROM import.[FuzzyMatchedAll]
WHERE [_Matched] in ('''Matched''')and [ActiveW]=1 and designs is null and
[RowNumberRec] not in (select [rowNumRec] from [dbo].[WEBTMSRECCLEANEDAPPREG])) as a
--inner join [dbo].[Notes] as n on n.Project=a.ProjectRec and n.[Task ID]=a.Task
inner join [dbo].[WEBTMSALL] as w on w.[RECORD ID]=a.[RecordIDW]
--left  join [dbo].[tmpNotes] as tmp on a.RowNumberRec=tmp.[RowNumberRec]
where (a.WorkStatusID in (1,5) or a.WorkStatusID is null) and a.Designs is null
go
ALTER TABLE import.TestAll
ADD Notes nvarchar(4000)
GO
CREATE CLUSTERED INDEX IX_TestTable_TestCol1   
    ON import.TestAll ([RecordIDW],[SequenceD]); 
GO
UPDATE import.TestAll
SET Notes=REPLACE(REPLACE([Join ALL steps], CHAR(13), ''), CHAR(10), ''),
    SequenceD=n.[Sequence updates in WebTMs]
FROM [dbo].[Notes] as n
JOIN import.TestAll ON import.TestAll.ProjectRec=n.[Project] AND 
import.TestAll.Task=n.[Task ID]

UPDATE import.TestAll
SET Notes=n.NOTES
FROM dbo.[tmpNotes] as n
JOIN import.TestAll ON 
import.TestAll.[RowNumberRec]=n.[RowNumberRec]

-----ready for export
DROP VIEW IF EXISTS dbo.MondelezExport
GO
CREATE VIEW dbo.MondelezExport
AS
SELECT TOP (100) PERCENT b.[RecordIDW] as [Record_ID], b.Country, b.OwnerName,
b.OwnerAddress, b.SequenceD, b.Notes as Note,
NTILE(1) OVER (ORDER BY b.SequenceD, b.[RecordIDW]) AS Batch
FROM 
(SELECT DISTINCT [RecordIDW],a.Country,a.OwnerName,a.OwnerAddress,a.Notes,a.sequenced
FROM import.TestAll as t
CROSS APPLY [dbo].[HighestSequence](t.[RecordIDW]) a
WHERE not exists (SELECT a.* FROM
(SELECT [RecordIDW],[ProjectRec],[Task]
FROM [import].[TestAll]
GROUP BY [RecordIDW],[ProjectRec],[Task]
HAVING count(*)>1) as a WHERE t.RecordIDW=a.RecordIDW and t.ProjectRec=a.ProjectRec and t.Task=a.Task)
and t.SequenceD is not null and [columnJoin] in ('S','R','A')) as b
























GO


