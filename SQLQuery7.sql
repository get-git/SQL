USE [Proxemics]
GO
/****** Object:  StoredProcedure [dbo].[BotPermissions]    Script Date: 7/16/2020 1:02:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BotPermissionstest] 
AS
BEGIN
	GRANT EXECUTE ON Average_Airflow_by_User TO ProxemicsBot;
END


