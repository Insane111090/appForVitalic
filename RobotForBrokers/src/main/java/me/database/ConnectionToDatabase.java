package me.database;

import me.DBConnectionInterface;
import static me.utils.RobotConstants.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionToDatabase implements DBConnectionInterface {
    @Override
    public void openConnection() {
        
    }

    @Override
    public Connection getConnetion(String userName, String password) throws ClassNotFoundException, SQLException {
        Class.forName(CONNECTION_DRIVER);
        Connection myConnection = DriverManager.getConnection(URL, userName, password);
        return myConnection;
    }
}
