package me.client;

import me.database.ConnectionToDatabase;

import java.sql.SQLException;

public class MainInstance{

    public static void main(String[] args) throws SQLException{
        ConnectionToDatabase connectionToDatabase = new ConnectionToDatabase();
    }
}
