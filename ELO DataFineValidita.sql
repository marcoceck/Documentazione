select [Technical Data],*
from [Colussi S_p_A_$Item] 
where  No_ = '07009120'

DECLARE @ABC AS Varchar(8);
SET @ABC = '03/07/2090';
print Cast(SUBSTRING(@ABC, 1, 6) + '20' + SUBSTRING(@ABC, 9, 2) as DateTime);
print (SUBSTRING(@ABC, 1, 6) + '20' + SUBSTRING(@ABC, 9, 2));
print ISDATE(@ABC);


Select I.No_ as Articolo
     , SUBSTRING(TDL.[Value], 1, 6) + '20' + SUBSTRING(TDL.[Value], 7, 2)																As xyz1
	 , '20' + SUBSTRING(TDL.[Value], 7, 2) + '-' + SUBSTRING(TDL.[Value], 4, 2) + '-' + SUBSTRING(TDL.[Value], 1, 2)					As xyz2
     , I.Description into #MCTemp
From [2016_COLUSSI_COLLAUDO].dbo.[Colussi S_p_A_$Item] I
Inner Join [2016_COLUSSI_COLLAUDO].dbo.[Colussi S_p_A_$Technical Data Line] TDL On TDL.[Feature Code] = I.[Technical Data]
																	            and TDL.[Attribute Code] = 'ITEM_FINE.VENDITE'
																				and LEN(TDL.[Value]) in ( 8, 10 )

Select Case When LEN(TDL.[Value]) = 8 THEN (SUBSTRING(TDL.[Value], 1, 6) + '20' + SUBSTRING(TDL.[Value], 7, 2))
						              ELSE (TDL.[Value])
	   End As xyz
	 , LEN(TDL.[Value]) as Size
     , I.Description into #MCTemp
From [Colussi S_p_A_$Item] I
Inner Join [Colussi S_p_A_$Technical Data Line] TDL On TDL.[Feature Code] = I.[Technical Data]
                                                   and TDL.[Attribute Code] = 'ITEM_FINE.VENDITE'
												   and ISDATE(TDL.[Value]) = 1

select xyz2, IsDate(xyz2), * from #MCTemp

select Cast(xyz2 as datetime), * from #MCTemp where articolo = '001Z'