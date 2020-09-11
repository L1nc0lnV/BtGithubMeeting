SELECT TOP (1000) [Id]
      ,[Segment_Id]
      ,[Kind]
      ,[SegmentName]
      ,[SegmentType]
      ,[Segment_Key]
  FROM [ButlerTillETL].[source].[GASegments] --  WHERE SegmentName = '>45sec or 2+ PV' ORDER BY 6
  WHERE SegmentName LIKE 'Zom%'
  ORDER BY 6

  SELECT MAX(segment_key) FROM  [ButlerTillETL].[source].[GASegments]
