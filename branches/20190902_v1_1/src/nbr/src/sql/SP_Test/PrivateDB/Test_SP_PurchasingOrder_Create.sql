SELECT '++++++++++++++++++ Test_SP_PurchasingOrder_Create.sql ++++++++++++++++++++';

SELECT '-------------------- Case1: 屎械幹秀 -------------------------' AS 'Case1';

SET @iErrorCode = 0;
SET @sErrorMsg = '';
SET @sRemark = 'purchasingPlanTable CASE 1';
SET @iStaffID = 3;
SET @iProviderID = 1;
SET @iShopID = 2;

CALL SP_PurchasingOrder_Create(@iErrorCode, @sErrorMsg,@iShopID,@iStaffID,@iProviderID,@sRemark);

SELECT 1 FROM t_PurchasingOrder WHERE 1=1
	AND F_StaffID = @iStaffID AND F_ProviderID = @iProviderID AND F_Remark = @sRemark;
SELECT IF(found_rows() = 1 AND @iErrorCode = 0, '霞編撹孔', '霞編払移') AS 'CASE1 Testing Result';
SELECT @sErrorMsg;
SELECT @iErrorCode;
DELETE FROM T_PurchasingOrder WHERE F_Remark = 'purchasingPlanTable CASE 1';

SELECT '-------------------- Case2: iStaffID 音贋壓��卦指危列鷹3 -------------------------' AS 'Case2';

SET @iErrorCode = 0;
SET @sErrorMsg = '';
SET @sRemark = '込込込';
SET @iStaffID = 999;
SET @iProviderID = 1;
SET @iShopID = 2;

CALL SP_PurchasingOrder_Create(@iErrorCode, @sErrorMsg,@iShopID,@iStaffID,@iProviderID,@sRemark);
SELECT 1 FROM t_PurchasingOrder WHERE F_StaffID = @iStaffID AND F_ProviderID = @iProviderID AND F_Remark = @sRemark;

SELECT @iErrorCode;
SELECT @sErrorMsg;
SELECT IF(@iErrorCode = 7, '霞編撹孔', '霞編払移') AS 'CASE2 Testing Result';

SELECT '-------------------- Case3: iProviderID 音贋壓��卦指危列鷹7 -------------------------' AS 'Case3';

SET @iErrorCode = 0;
SET @sErrorMsg = '';
SET @sRemark = '込込込';
SET @iStaffID = 1;
SET @iProviderID = 999;
SET @iShopID = 2;

CALL SP_PurchasingOrder_Create(@iErrorCode, @sErrorMsg,@iShopID,@iStaffID,@iProviderID,@sRemark);
SELECT 1 FROM t_PurchasingOrder WHERE F_StaffID = @iStaffID AND F_ProviderID = @iProviderID AND F_Remark = @sRemark;
SELECT @sErrorMsg;
SELECT IF(@iErrorCode = 7, '霞編撹孔', '霞編払移') AS 'CASE3 Testing Result';

SELECT '-------------------- Case4: @sRemark寡杭悳潤忖粁階狛方象垂忖憲�渣�,階狛海業�渣�(方象垂氏贋秘嚥忖粁海業�犁筏鍔峽�) -------------------------' AS 'Case4';
SET @iErrorCode = 0;
SET @sErrorMsg = '';
SET @sRemark = '込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込';
SET @iStaffID = 3;
SET @iProviderID = 1;
SET @iShopID = 2;

CALL SP_PurchasingOrder_Create(@iErrorCode, @sErrorMsg,@iShopID,@iStaffID,@iProviderID,@sRemark);
SELECT @sErrorMsg;
SELECT 1 FROM t_PurchasingOrder WHERE F_StaffID = @iStaffID AND F_ProviderID = @iProviderID;
SELECT IF(@iErrorCode = 0, '霞編撹孔', '霞編払移') AS 'CASE4 Testing Result';
DELETE FROM t_purchasingorder WHERE F_Remark = '込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込込';

SELECT '-------------------- Case5: iStaffID葎宣岼埀垢��卦指危列鷹7 -------------------------' AS 'Case5';

SET @iErrorCode = 0;
SET @sErrorMsg = '';
SET @sRemark = '込込込';
SET @iStaffID = 5;
SET @iProviderID = 1;
SET @iShopID = 2;

CALL SP_PurchasingOrder_Create(@iErrorCode, @sErrorMsg, @iShopID, @iStaffID, @iProviderID, @sRemark);
SELECT 1 FROM t_PurchasingOrder WHERE F_StaffID = @iStaffID AND F_ProviderID = @iProviderID AND F_Remark = @sRemark;
SELECT IF(found_rows() = 0 AND @iErrorCode = 7 AND @sErrorMsg='輝念嬖薩音塋俯幹秀寡杭汽', '霞編撹孔', '霞編払移') AS 'CASE5 Testing Result';

SELECT '-------------------- Case5: 幹秀寡杭汽議壇糾音贋壓��卦指危列鷹7 -------------------------' AS 'Case5';

SET @iErrorCode = 0;
SET @sErrorMsg = '';
SET @sRemark = '';
SET @iStaffID = 3;
SET @iProviderID = 1;
SET @iShopID = -1;

CALL SP_PurchasingOrder_Create(@iErrorCode, @sErrorMsg,@iShopID,@iStaffID,@iProviderID,@sRemark);


SELECT IF(@iErrorCode = 7 AND @sErrorMsg = '乎壇糾音贋壓��萩嶷仟僉夲壇糾', '霞編撹孔', '霞編払移') AS 'CASE1 Testing Result';
SELECT @sErrorMsg;
SELECT @iErrorCode;
DELETE FROM T_PurchasingOrder WHERE F_Remark = 'purchasingPlanTable CASE 5';