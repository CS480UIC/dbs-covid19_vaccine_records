package dose_2.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




//import java.util.ArrayList;
//import java.util.List;

import dose_2.domain.Dose_2;

/**
 * DDL functions performed in database
 */
public class Dose_2Dao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "covid19_vaccine_records"; //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "UICCS480Project"; //TODO change password

	public Dose_2 findByID(Integer patient_id_input) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Dose_2 dose_2 = new Dose_2();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/covid19_vaccine_records", MySQL_user, MySQL_password);
		    String sql = "select * from dose_2 where patient_id=?";
		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,patient_id_input);
		    ResultSet resultSet = preparestatement.executeQuery();

		    while(resultSet.next()){
		    	String patient_id_search = resultSet.getString("username");
		    	if(patient_id_search.equals(patient_id_input)){
		    		dose_2.setPatient_id(Integer.parseInt(resultSet.getString("patient_id")));
		    		dose_2.setType(resultSet.getString("type_2"));
		    		dose_2.setLotNum(resultSet.getString("lot_num_2"));
		    		dose_2.setDateOfDose(java.sql.Date.valueOf(resultSet.getString("dose_2_date")));
		    		dose_2.setLocation(resultSet.getString("location_2"));
		    	}
		    }
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		return dose_2;
	}	
	
	/**
	 * insert Dose_2
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	
	public void add(Dose_2 form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/covid19_vaccine_records", MySQL_user, MySQL_password);
			
			String sql = "insert into dose_2 (patient_id, type_2, lot_num_2, dose_2_date, location_2) values(?,?,?,?,?)";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getPatient_id());
		    preparestatement.setString(2,form.getType());
		    preparestatement.setString(3,form.getLotNum());
		    preparestatement.setDate(4,form.getDateOfDose());
		    preparestatement.setString(5,form.getLocation());
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param form
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void update(Dose_2 form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/covid19_vaccine_records", MySQL_user, MySQL_password);
			
			String sql = "UPDATE dose_2 SET type_2 = ?, lot_num_2 = ?, dose_2_dat = ?, location_2 = ? where patient_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			preparestatement.setInt(1,form.getPatient_id());
		    preparestatement.setString(2,form.getType());
		    preparestatement.setString(3,form.getLotNum());
		    preparestatement.setDate(4,form.getDateOfDose());
		    preparestatement.setString(5,form.getLocation());
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/**
	 * @param username
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String patient_id_input) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/covid19_vaccine_records", MySQL_user, MySQL_password);
			
			String sql = "delete from dose_2 where patient_id = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,Integer.parseInt(patient_id_input));
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
