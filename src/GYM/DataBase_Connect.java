/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GYM;

import java.sql.*;  //Calling Database Library

/**
 *
 * @author MPC
 */
public class DataBase_Connect {

    Connection dc;

    Statement St;

    public DataBase_Connect() {
        try {

            Class.forName("com.mysql.jdbc.Driver");

            dc = DriverManager.getConnection("jdbc:mysql://localhost:3306/gym1", "root", "");
            St = dc.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
