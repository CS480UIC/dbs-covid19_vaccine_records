package dose1.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dose1.dao.Dose1Dao;
import dose1.domain.dose1;


/**
 * Servlet implementation class UserServlet
 */

public class Dose1ServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Dose1ServletDelete() {
        super();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method = request.getParameter("method");
		Dose1Dao patientDao = new Dose1Dao();
		dose1 patient = null;
		if(method.equals("search"))
		{
			try {
				patient = patientDao.findByID(Integer.parseInt(request.getParameter("patient_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
		
			if(patient.getPatient_id()!=null){
						System.out.println(patient);
						request.setAttribute("dose_1", patient);
						request.getRequestDispatcher("/jsps/dose_1/dose_1_delete_output.jsp").forward(request, response);			
				}
				else{
				request.setAttribute("msg", "Patient not found");
				request.getRequestDispatcher("/jsps/dose_1/dose_1_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("delete"))
		{	
			try {
				patientDao.delete(request.getParameter("patient_id"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Patient Deleted");
			request.getRequestDispatcher("/jsps/dose_1/dose_1_read_output.jsp").forward(request, response);
		}
	}
}



