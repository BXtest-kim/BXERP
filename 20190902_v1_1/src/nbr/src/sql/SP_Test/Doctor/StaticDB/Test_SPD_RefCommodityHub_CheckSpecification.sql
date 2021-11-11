SELECT '++++++++++++++++++ Test_SPD_RefCommodityHub_CheckSpecification.sql ++++++++++++++++++++';

SELECT '-------------------- Case1:�������� -------------------------' AS 'Case1';
-- 
SET @iErrorCode = 0;
SET @sErrorMsg = '';
-- 
CALL SPD_RefCommodityHub_CheckSpecification(@iErrorCode, @sErrorMsg);
SELECT @iErrorCode, @sErrorMsg;
-- 
SELECT IF(@sErrorMsg = '' AND @iErrorCode = 0, '���Գɹ�', '����ʧ��') AS 'Case1 Testing Result';


SELECT '-------------------- Case2:�ο���Ʒ�Ĺ��Ϊ�մ� -------------------------' AS 'Case2';
-- 
INSERT INTO staticdb.t_refcommodityhub (F_Barcode, F_Name, F_ShortName, F_Specification, F_PackageUnitName, F_PurchasingUnit, F_BrandName, F_CategoryName, F_MnemonicCode, F_PricingType,  F_Type, F_PricePurchase, F_LatestPricePurchase, F_PriceRetail, F_PriceVIP, F_PriceWholesale,  F_ShelfLife, F_ReturnDays)
VALUES ('3548293894789','�ɱȿ���Ƭ1', '��Ƭ', '', 'ƿ', '��', '���¿���',' Ĭ�����', 'SP', 1,  0, 8, 8, 12, 11.8, 11, 3, 30);
SET @iID = LAST_INSERT_ID();
-- 
SET @iErrorCode = 0;
SET @sErrorMsg = '';
-- 
CALL SPD_RefCommodityHub_CheckSpecification(@iErrorCode, @sErrorMsg);
SELECT @iErrorCode, @sErrorMsg;
-- 
SELECT IF(@sErrorMsg = CONCAT('IDΪ', @iID ,'�Ĳο���Ʒ�Ĺ�񳤶ȱ�����(0~8]') AND @iErrorCode = 7, '���Գɹ�', '����ʧ��') AS 'Case2 Testing Result';
-- 
DELETE FROM staticdb.t_refcommodityhub WHERE F_ID = @iID;


-- ����ο���Ʒ����ʱ���ֶ�F_Specification����Ϊnull������ע�͵��ò�������
-- SELECT '-------------------- Case3:�ο���Ʒ�Ĺ��Ϊnull -------------------------' AS 'Case3';
-- INSERT INTO staticdb.t_refcommodityhub (F_Barcode, F_Name, F_ShortName, F_Specification, F_PackageUnitName, F_PurchasingUnit, F_BrandName, F_CategoryName, F_MnemonicCode, F_PricingType,  F_Type, F_PricePurchase, F_LatestPricePurchase, F_PriceRetail, F_PriceVIP, F_PriceWholesale,  F_ShelfLife, F_ReturnDays)
-- VALUES ('3548293894789','�ɱȿ���Ƭ1', '��Ƭ', NULL, 'ƿ', '��', '���¿���',' Ĭ�����', 'SP', 1,  0, 8, 8, 12, 11.8, 11, 3, 30);
-- SET @iID = LAST_INSERT_ID();
-- 
-- SET @iErrorCode = 0;
-- SET @sErrorMsg = '';
-- 
-- CALL SPD_RefCommodityHub_CheckSpecification(@iErrorCode, @sErrorMsg);
-- SELECT @iErrorCode, @sErrorMsg;
-- 
-- SELECT IF(@sErrorMsg = CONCAT('IDΪ', @iID ,'�Ĳο���Ʒ�Ĺ�񳤶ȱ�����(0~8]') AND @iErrorCode = 7, '���Գɹ�', '����ʧ��') AS 'Case2 Testing Result';
-- 
-- DELETE FROM staticdb.t_refcommodityhub WHERE F_ID = @iID;




SELECT '-------------------- Case4:�ο���Ʒ�Ĺ�񳤶ȴ���8 -------------------------' AS 'Case4';
-- 
INSERT INTO staticdb.t_refcommodityhub (F_Barcode, F_Name, F_ShortName, F_Specification, F_PackageUnitName, F_PurchasingUnit, F_BrandName, F_CategoryName, F_MnemonicCode, F_PricingType,  F_Type, F_PricePurchase, F_LatestPricePurchase, F_PriceRetail, F_PriceVIP, F_PriceWholesale,  F_ShelfLife, F_ReturnDays)
VALUES ('3548293894789','�ɱȿ���Ƭ1', '��Ƭ', '���ǳ�����λ�Ĺ��Ĳο���Ʒ', 'ƿ', '��', '���¿���',' Ĭ�����', 'SP', 1,  0, 8, 8, 12, 11.8, 11, 3, 30);
SET @iID = LAST_INSERT_ID();
-- 
SET @iErrorCode = 0;
SET @sErrorMsg = '';
-- 
CALL SPD_RefCommodityHub_CheckSpecification(@iErrorCode, @sErrorMsg);
SELECT @iErrorCode, @sErrorMsg;
-- 
SELECT IF(@sErrorMsg = CONCAT('IDΪ', @iID ,'�Ĳο���Ʒ�Ĺ�񳤶ȱ�����(0~8]') AND @iErrorCode = 7, '���Գɹ�', '����ʧ��') AS 'Case4 Testing Result';
-- 
DELETE FROM staticdb.t_refcommodityhub WHERE F_ID = @iID;