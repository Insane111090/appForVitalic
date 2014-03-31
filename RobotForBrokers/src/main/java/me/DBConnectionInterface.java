package me;

import java.sql.Connection;
import java.sql.SQLException;

public interface DBConnectionInterface {

    public void openConnection();

    public Connection getConnetion(String userName, String password) throws SQLException, ClassNotFoundException;
}
