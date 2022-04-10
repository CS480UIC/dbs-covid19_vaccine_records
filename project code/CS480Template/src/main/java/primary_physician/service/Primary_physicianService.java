package primary_physician.service;


import primary_physician.dao.Primary_physicianDao;
import primary_physician.domain.Primary_physician;

/**
 * logic functions such as register, login
 * @author Priyanka Patel
 *
 */
public class Primary_physicianService {
	private Primary_physicianDao primary_physicianDao = new Primary_physicianDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Primary_physician form) throws Primary_physicianException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Primary_physician entity1 = primary_physicianDao.findByID(form.getPatient_id());
		if(entity1.getPatient_id()!=null && entity1.getPatient_id().equals(form.getPatient_id())) throw new Primary_physicianException("This patient has been registered!");
		primary_physicianDao.add(form);
	}

}
