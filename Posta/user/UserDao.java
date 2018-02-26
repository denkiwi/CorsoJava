package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;




public class UserDao {
	private List<User> dettUser;
	public UserDao() {
		dettUser = new ArrayList<>();
	}
	
public List<User> getUserDett(){
	try {
		Connection arg7 = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss_2018", "admin_tss", "andres");
		Statement st = arg7.createStatement();
		ResultSet resSet = st.executeQuery("select* from members");
		while (resSet.next()) {
			dettUser.add(new User(resSet.getString("primo_nome"), resSet.getString("secondo_nome") , resSet.getString("user"), resSet.getString("regdate") ) );
			
		}
		st.close();
		
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return dettUser;
}

public User getUserbyName(String actualUserID) {
	User actualUser = null;
	try {
		Connection arg7 = DriverManager.getConnection("jdbc:mysql://localhost:3306/tss_2018", "admin_tss", "andres");
		Statement st = arg7.createStatement();
		ResultSet resSet = st.executeQuery("select* from members where user="  +"'"+  actualUserID + "'" );
		while(resSet.next()) {
			actualUser=( new User(resSet.getString("primo_nome"), resSet.getString("secondo_nome") , resSet.getString("user"), resSet.getString("regdate") ));
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return actualUser;
}

}
