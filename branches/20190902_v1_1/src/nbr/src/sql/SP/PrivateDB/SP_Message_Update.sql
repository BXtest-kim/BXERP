DROP PROCEDURE IF EXISTS `SP_Message_Update`;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Message_Update` (
	OUT iErrorCode INT,
	OUT sErrorMsg VARCHAR(64),
	IN iID INT,
	IN iIsRead INT
	)
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	BEGIN
		SET iErrorCode := 3;
		SET sErrorMsg := '���ݿ����';
		ROLLBACK;
	END;
	
	START TRANSACTION;
	
		UPDATE t_message SET F_IsRead = iIsRead, F_UpdateDatetime = now() WHERE F_ID = iID;
	
		SELECT F_ID, F_CategoryID, F_CompanyID, F_IsRead, F_Status, F_Parameter, F_CreateDatetime, F_SenderID, F_ReceiverID, F_UpdateDatetime FROM t_message 
		WHERE F_ID = iID;
		
		SET iErrorCode := 0;
		SET sErrorMsg := '';
	
	COMMIT;
END