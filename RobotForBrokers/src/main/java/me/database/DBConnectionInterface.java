package me.database;

import java.sql.Connection;

public interface DBConnectionInterface {

    public void openConnection();
    public Connection getConnetion();
}
