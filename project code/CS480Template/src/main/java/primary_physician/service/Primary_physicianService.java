package primary_physician.service;


import primary_physician.dao.Primary_physicianDao;
import primary_physician.domain.Primary_physician;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class Primary_physicianService {
	private Primary_physicianDao entity1Dao = new Primary_physicianDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Primary_physician form) throws Primary_physicianException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Primary_physician entity1 = entity1Dao.findByUsername(form.getUsername());
		if(entity1.getUsername()!=null && entity1.getUsername().equals(form.getUsername())) throw new Primary_physicianException("This user name has been registered!");
		entity1Dao.add(form);
	}
	/**
	 * Login function
	 * @param form
	 * @return
	 * @throws UserException 
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void login(Primary_physician form) throws Primary_physicianException, ClassNotFoundException, InstantiationException, IllegalAccessException {
		Primary_physician user = entity1Dao.findByUsername(form.getUsername());
		if(user.getUsername()==null) throw new Primary_physicianException("The user is not in the database");
		
		String password = user.getPassword();
		
		if(password!=null && !password.equals(form.getPassword()))
			throw new Primary_physicianException(" The password is not right");
		
	}
}
