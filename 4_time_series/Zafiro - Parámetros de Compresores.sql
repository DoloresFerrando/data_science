/****** Script for SelectTopNRows command from SSMS  ******/
select 
      [subarea_id]
      ,[facility_id]
      ,[facility_name]
	  ,[entityid]
      ,[equipment_name]
      ,[equipmenttype]
      ,[status_name]
      ,[operativedate]
      ,[statusid]
      ,[pressure]
      ,[temperature]
      ,[rpm]
      ,[feedwatertemperature]
      ,[suctionpressure]
      ,[dischargepressure]
      ,[uptime]
      ,[comments]
      ,[scheduledmaintenancetime]
      ,[notscheduledmaintenancetime]
      ,[inreservetime]
  from [Infoprod_calidad].[dbo].[zv_equipment_parameter]
where facility_id in(651, 653, 635, 835, 841)
	and equipmenttype = '56D1388A-A5CA-4F84-964C-4A46763DFF98'
	--and equipment_name = 'K-01'
	--and operativedate > '2022-02-01'

--use Infoprod_calidad
--go
--SELECT 
--	F.ID				as facility_id
--	, F.NAME			as facility_name
--	, EQ.[ID] 			AS equipment_id,
--	EQ.[NAME] 			AS equipment_name,
--	EQ.[EQUIPMENTTYPE] 	AS Tipo,
--	EQP.[OPERATIVEDATE] AS operative_date,
--	EQP.[COMMENTS]		AS comments,
--	EQPS.[NAME]			as status,
--	EQP.[RPM]			as rpm,
--	EQP.[SUCTIONPRESSURE] as press_succ, 
--	EQP.[DISCHARGEPRESSURE] as press_desc, 
--	EQP.[TEMPERATURADESUCCION]	as temp_succ, 
--	EQP.[TEMPERATURADEDESCARGA] as temp_desc, 
--	EQP.[CAUDAL]		as flow_rate, 
--	EQP.[SCHEDULEDMAINTENANCETIME]/3600		as mant_prog, 
--	EQP.[NOTSCHEDULEDMAINTENANCETIME]/3600	as mant_no_prog,
--	EQP.[INRESERVETIME]/3600				as en_reserva,
--	(24-EQP.SCHEDULEDMAINTENANCETIME/3600 - EQP.NOTSCHEDULEDMAINTENANCETIME/3600 - EQP.INRESERVETIME/3600 ) AS en_marcha
--	FROM ([dbo].[EQUIPMENT] EQ
--	LEFT JOIN [dbo].[EQUIPMENTPARAMETER] EQP ON EQ.ID = EQP.ENTITYID) 
--	LEFT JOIN [dbo].[EQUIPMENTSTATUS] EQPS ON EQP.STATUSID = EQPS.ID
--	LEFT JOIN ENTITYRELATION ER ON EQ.ID = ER.ENTITYID
--	JOIN FACILITY F ON F.ID = ER.CURRENTLOCATIONID
--where EQUIPMENTTYPE = '56D1388A-A5CA-4F84-964C-4A46763DFF98'
--	and F.ID in(651, 653, 635, 835, 841)
--	and ER.TYPEID = 'AE5DC8A7-F4BA-4703-99F2-CEAE7F1DEDBA' -- Equipos -> Instalaciones
--order by equipment_id
--	, operative_date