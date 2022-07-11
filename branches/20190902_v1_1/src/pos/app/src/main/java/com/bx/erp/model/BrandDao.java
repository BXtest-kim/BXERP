package com.bx.erp.model;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;

import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.internal.DaoConfig;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;

// THIS CODE IS GENERATED BY greenDAO, DO NOT EDIT.
/** 
 * DAO for table "BRAND".
*/
public class BrandDao extends AbstractDao<Brand, Long> {

    public static final String TABLENAME = "BRAND";

    /**
     * Properties of entity Brand.<br/>
     * Can be used for QueryBuilder and for referencing column names.
     */
    public static class Properties {
        public final static Property ID = new Property(0, Long.class, "ID", true, "F_ID");
        public final static Property Name = new Property(1, String.class, "name", false, "F_Name");
        public final static Property SyncDatetime = new Property(2, java.util.Date.class, "syncDatetime", false, "F_SyncDatetime");
        public final static Property SyncType = new Property(3, String.class, "syncType", false, "F_SyncType");
    }


    public BrandDao(DaoConfig config) {
        super(config);
    }
    
    public BrandDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    /** Creates the underlying database table. */
    public static void createTable(Database db, boolean ifNotExists) {
        String constraint = ifNotExists? "IF NOT EXISTS ": "";
        db.execSQL("CREATE TABLE " + constraint + "\"BRAND\" (" + //
                "\"F_ID\" INTEGER PRIMARY KEY ," + // 0: ID
                "\"F_Name\" TEXT NOT NULL ," + // 1: name
                "\"F_SyncDatetime\" INTEGER," + // 2: syncDatetime
                "\"F_SyncType\" TEXT);"); // 3: syncType
    }

    /** Drops the underlying database table. */
    public static void dropTable(Database db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"BRAND\"";
        db.execSQL(sql);
    }

    @Override
    protected final void bindValues(DatabaseStatement stmt, Brand entity) {
        stmt.clearBindings();
 
        Long ID = entity.getID();
        if (ID != null) {
            stmt.bindLong(1, ID);
        }
        stmt.bindString(2, entity.getName());
 
        java.util.Date syncDatetime = entity.getSyncDatetime();
        if (syncDatetime != null) {
            stmt.bindLong(3, syncDatetime.getTime());
        }
 
        String syncType = entity.getSyncType();
        if (syncType != null) {
            stmt.bindString(4, syncType);
        }
    }

    @Override
    protected final void bindValues(SQLiteStatement stmt, Brand entity) {
        stmt.clearBindings();
 
        Long ID = entity.getID();
        if (ID != null) {
            stmt.bindLong(1, ID);
        }
        stmt.bindString(2, entity.getName());
 
        java.util.Date syncDatetime = entity.getSyncDatetime();
        if (syncDatetime != null) {
            stmt.bindLong(3, syncDatetime.getTime());
        }
 
        String syncType = entity.getSyncType();
        if (syncType != null) {
            stmt.bindString(4, syncType);
        }
    }

    @Override
    public Long readKey(Cursor cursor, int offset) {
        return cursor.isNull(offset + 0) ? null : cursor.getLong(offset + 0);
    }    

    @Override
    public Brand readEntity(Cursor cursor, int offset) {
        Brand entity = new Brand( //
            cursor.isNull(offset + 0) ? null : cursor.getLong(offset + 0), // ID
            cursor.getString(offset + 1), // name
            cursor.isNull(offset + 2) ? null : new java.util.Date(cursor.getLong(offset + 2)), // syncDatetime
            cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3) // syncType
        );
        return entity;
    }
     
    @Override
    public void readEntity(Cursor cursor, Brand entity, int offset) {
        entity.setID(cursor.isNull(offset + 0) ? null : cursor.getLong(offset + 0));
        entity.setName(cursor.getString(offset + 1));
        entity.setSyncDatetime(cursor.isNull(offset + 2) ? null : new java.util.Date(cursor.getLong(offset + 2)));
        entity.setSyncType(cursor.isNull(offset + 3) ? null : cursor.getString(offset + 3));
     }
    
    @Override
    protected final Long updateKeyAfterInsert(Brand entity, long rowId) {
        entity.setID(rowId);
        return rowId;
    }
    
    @Override
    public Long getKey(Brand entity) {
        if(entity != null) {
            return entity.getID();
        } else {
            return null;
        }
    }

    @Override
    public boolean hasKey(Brand entity) {
        return entity.getID() != null;
    }

    @Override
    protected final boolean isEntityUpdateable() {
        return true;
    }
    
}