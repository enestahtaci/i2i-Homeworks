package org.example;

import org.apache.ignite.client.ClientConnectionException;
import org.apache.ignite.configuration.IgniteConfiguration;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Main {

    public static void main(String[] args) {
        IgniteConfiguration igniteCfg = new IgniteConfiguration();
        igniteCfg.setWorkDirectory("/home/enes/Projects/JavaProjects/IdeaProjects/apacheIgnite");
        String jdbcURL = "jdbc:ignite:thin://127.0.0.1";

        try {
            Class.forName("org.apache.ignite.IgniteJdbcThinDriver");
            Connection connection = DriverManager.getConnection(jdbcURL);

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM SUBSCRIBER");

            while (resultSet.next()){
                int subscriberId = resultSet.getInt("SUBSC_ID");
                String subscriberName = resultSet.getString("SUBSC_NAME");
                String subscriberLastname = resultSet.getString("SUBSC_SURNAME");

                System.out.println(subscriberId + subscriberName + subscriberLastname);
            }

        }catch(ClientConnectionException | ClassNotFoundException ce){
            System.out.println(ce.getMessage());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}