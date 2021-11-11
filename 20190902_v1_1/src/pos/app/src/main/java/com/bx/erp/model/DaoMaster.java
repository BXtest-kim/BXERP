package com.bx.erp.model;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.util.Log;

import org.greenrobot.greendao.AbstractDaoMaster;
import org.greenrobot.greendao.database.StandardDatabase;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseOpenHelper;
import org.greenrobot.greendao.identityscope.IdentityScopeType;


// THIS CODE IS GENERATED BY greenDAO, DO NOT EDIT.
/**
 * Master of DAO (schema version 2): knows all DAOs.
 */
public class DaoMaster extends AbstractDaoMaster {
    public static final int SCHEMA_VERSION = 2;

    /** Creates underlying database table using DAOs. */
    public static void createAllTables(Database db, boolean ifNotExists) {
        BarcodesDao.createTable(db, ifNotExists);
        BrandDao.createTable(db, ifNotExists);
        BXConfigGeneralDao.createTable(db, ifNotExists);
        CommodityDao.createTable(db, ifNotExists);
        CommodityCategoryDao.createTable(db, ifNotExists);
        CompanyDao.createTable(db, ifNotExists);
        ConfigCacheSizeDao.createTable(db, ifNotExists);
        ConfigGeneralDao.createTable(db, ifNotExists);
        CouponDao.createTable(db, ifNotExists);
        CouponScopeDao.createTable(db, ifNotExists);
        NtpDao.createTable(db, ifNotExists);
        PackageUnitDao.createTable(db, ifNotExists);
        PosDao.createTable(db, ifNotExists);
        PromotionDao.createTable(db, ifNotExists);
        PromotionScopeDao.createTable(db, ifNotExists);
        PurchasingOrderDao.createTable(db, ifNotExists);
        PurchasingOrderCommodityDao.createTable(db, ifNotExists);
        RetailTradeDao.createTable(db, ifNotExists);
        RetailTradeAggregationDao.createTable(db, ifNotExists);
        RetailTradeCommodityDao.createTable(db, ifNotExists);
        RetailTradeCouponDao.createTable(db, ifNotExists);
        RetailTradePromotingDao.createTable(db, ifNotExists);
        RetailTradePromotingFlowDao.createTable(db, ifNotExists);
        ReturnCommoditySheetDao.createTable(db, ifNotExists);
        ShopDao.createTable(db, ifNotExists);
        SmallSheetFrameDao.createTable(db, ifNotExists);
        SmallSheetTextDao.createTable(db, ifNotExists);
        StaffDao.createTable(db, ifNotExists);
        VipDao.createTable(db, ifNotExists);
        VipCategoryDao.createTable(db, ifNotExists);
        WarehousingDao.createTable(db, ifNotExists);
        WarehousingCommodityDao.createTable(db, ifNotExists);
        WxVipDao.createTable(db, ifNotExists);
        WxVipCardDetailDao.createTable(db, ifNotExists);
    }

    /** Drops underlying database table using DAOs. */
    public static void dropAllTables(Database db, boolean ifExists) {
        BarcodesDao.dropTable(db, ifExists);
        BrandDao.dropTable(db, ifExists);
        BXConfigGeneralDao.dropTable(db, ifExists);
        CommodityDao.dropTable(db, ifExists);
        CommodityCategoryDao.dropTable(db, ifExists);
        CompanyDao.dropTable(db, ifExists);
        ConfigCacheSizeDao.dropTable(db, ifExists);
        ConfigGeneralDao.dropTable(db, ifExists);
        CouponDao.dropTable(db, ifExists);
        CouponScopeDao.dropTable(db, ifExists);
        NtpDao.dropTable(db, ifExists);
        PackageUnitDao.dropTable(db, ifExists);
        PosDao.dropTable(db, ifExists);
        PromotionDao.dropTable(db, ifExists);
        PromotionScopeDao.dropTable(db, ifExists);
        PurchasingOrderDao.dropTable(db, ifExists);
        PurchasingOrderCommodityDao.dropTable(db, ifExists);
        RetailTradeDao.dropTable(db, ifExists);
        RetailTradeAggregationDao.dropTable(db, ifExists);
        RetailTradeCommodityDao.dropTable(db, ifExists);
        RetailTradeCouponDao.dropTable(db, ifExists);
        RetailTradePromotingDao.dropTable(db, ifExists);
        RetailTradePromotingFlowDao.dropTable(db, ifExists);
        ReturnCommoditySheetDao.dropTable(db, ifExists);
        ShopDao.dropTable(db, ifExists);
        SmallSheetFrameDao.dropTable(db, ifExists);
        SmallSheetTextDao.dropTable(db, ifExists);
        StaffDao.dropTable(db, ifExists);
        VipDao.dropTable(db, ifExists);
        VipCategoryDao.dropTable(db, ifExists);
        WarehousingDao.dropTable(db, ifExists);
        WarehousingCommodityDao.dropTable(db, ifExists);
        WxVipDao.dropTable(db, ifExists);
        WxVipCardDetailDao.dropTable(db, ifExists);
    }

    /**
     * WARNING: Drops all table on Upgrade! Use only during development.
     * Convenience method using a {@link DevOpenHelper}.
     */
    public static DaoSession newDevSession(Context context, String name) {
        Database db = new DevOpenHelper(context, name).getWritableDb();
        DaoMaster daoMaster = new DaoMaster(db);
        return daoMaster.newSession();
    }

    public DaoMaster(SQLiteDatabase db) {
        this(new StandardDatabase(db));
    }

    public DaoMaster(Database db) {
        super(db, SCHEMA_VERSION);
        registerDaoClass(BarcodesDao.class);
        registerDaoClass(BrandDao.class);
        registerDaoClass(BXConfigGeneralDao.class);
        registerDaoClass(CommodityDao.class);
        registerDaoClass(CommodityCategoryDao.class);
        registerDaoClass(CompanyDao.class);
        registerDaoClass(ConfigCacheSizeDao.class);
        registerDaoClass(ConfigGeneralDao.class);
        registerDaoClass(CouponDao.class);
        registerDaoClass(CouponScopeDao.class);
        registerDaoClass(NtpDao.class);
        registerDaoClass(PackageUnitDao.class);
        registerDaoClass(PosDao.class);
        registerDaoClass(PromotionDao.class);
        registerDaoClass(PromotionScopeDao.class);
        registerDaoClass(PurchasingOrderDao.class);
        registerDaoClass(PurchasingOrderCommodityDao.class);
        registerDaoClass(RetailTradeDao.class);
        registerDaoClass(RetailTradeAggregationDao.class);
        registerDaoClass(RetailTradeCommodityDao.class);
        registerDaoClass(RetailTradeCouponDao.class);
        registerDaoClass(RetailTradePromotingDao.class);
        registerDaoClass(RetailTradePromotingFlowDao.class);
        registerDaoClass(ReturnCommoditySheetDao.class);
        registerDaoClass(ShopDao.class);
        registerDaoClass(SmallSheetFrameDao.class);
        registerDaoClass(SmallSheetTextDao.class);
        registerDaoClass(StaffDao.class);
        registerDaoClass(VipDao.class);
        registerDaoClass(VipCategoryDao.class);
        registerDaoClass(WarehousingDao.class);
        registerDaoClass(WarehousingCommodityDao.class);
        registerDaoClass(WxVipDao.class);
        registerDaoClass(WxVipCardDetailDao.class);
    }

    public DaoSession newSession() {
        return new DaoSession(db, IdentityScopeType.Session, daoConfigMap);
    }

    public DaoSession newSession(IdentityScopeType type) {
        return new DaoSession(db, type, daoConfigMap);
    }

    /**
     * Calls {@link #createAllTables(Database, boolean)} in {@link #onCreate(Database)} -
     */
    public static abstract class OpenHelper extends DatabaseOpenHelper {
        public OpenHelper(Context context, String name) {
            super(context, name, SCHEMA_VERSION);
        }

        public OpenHelper(Context context, String name, CursorFactory factory) {
            super(context, name, factory, SCHEMA_VERSION);
        }

        @Override
        public void onCreate(Database db) {
            Log.i("greenDAO", "Creating tables for schema version " + SCHEMA_VERSION);
            createAllTables(db, false);
        }
    }

    /** WARNING: Drops all table on Upgrade! Use only during development. */
    public static class DevOpenHelper extends OpenHelper {
        public DevOpenHelper(Context context, String name) {
            super(context, name);
        }

        public DevOpenHelper(Context context, String name, CursorFactory factory) {
            super(context, name, factory);
        }

        @Override
        public void onUpgrade(Database db, int oldVersion, int newVersion) {
            Log.i("greenDAO", "Upgrading schema from version " + oldVersion + " to " + newVersion + " by dropping all tables");
            dropAllTables(db, true);
            onCreate(db);
        }
    }

}