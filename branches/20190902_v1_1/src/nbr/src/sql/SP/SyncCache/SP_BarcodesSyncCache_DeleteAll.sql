DROP PROCEDURE IF EXISTS `SP_BarcodesSyncCache_DeleteAll`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BarcodesSyncCache_DeleteAll`(
	OUT iErrorCode INT,
	OUT sErrorMsg VARCHAR(64)
	)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
		SET iErrorCode := 3;
   		SET sErrorMsg := '���ݿ����';
   		ROLLBACK;
   	END;
   	
   	START TRANSACTION;
   	
		DELETE FROM t_barcodessynccachedispatcher;
		DELETE FROM t_barcodessynccache;
		   	
		SET iErrorCode := 0;
		SET sErrorMsg := '';
		
	COMMIT;
END;