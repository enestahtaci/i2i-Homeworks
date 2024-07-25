package org.example;

import java.sql.*;
import java.util.Random;


public class Main {
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:TEST";
    private static final String USER = "ENES";
    private static final String PASSWORD = "123";

    public static void main(String[] args) {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
            try (Statement stmt = connection.createStatement()) {
                stmt.execute("CREATE TABLE numbers (id NUMBER)");
            }

            long start = System.currentTimeMillis();
            insertRandomNumber(connection,20000);
            long end = System.currentTimeMillis();
            System.out.println("Insert Random Number: " + (end - start) + " ms");

            start = System.currentTimeMillis();
            selectRandomNumber(connection,20000);
            end = System.currentTimeMillis();
            System.out.println("Select Random Number: " + (end - start) + " ms");

            start = System.currentTimeMillis();
            insertRandomNumber(connection,100000);
            end = System.currentTimeMillis();
            System.out.println("Insert Random Number: " + (end - start) + " ms");

            start = System.currentTimeMillis();
            selectRandomNumber(connection,100000);
            end = System.currentTimeMillis();
            System.out.println("Select Random Number: " + (end - start) + " ms");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    private static void insertRandomNumber(Connection connection, int count) throws Exception {
        String sql = "INSERT INTO numbers (id) VALUES (?)";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            Random rand = new Random();
            for (int i = 0; i <= count; i++) {
                stmt.setInt(1, rand.nextInt(count));
                stmt.addBatch();
            }
            stmt.executeBatch();
        }
    }

    private static void selectRandomNumber(Connection connection, int count) throws Exception {
        String sql = "SELECT id FROM numbers WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            Random rand = new Random();
            for (int i = 0; i <= count; i++) {
                stmt.setInt(1, rand.nextInt(count));
                try(ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        rs.getInt("id");
                    }
                }
            }

        }
    }
}


