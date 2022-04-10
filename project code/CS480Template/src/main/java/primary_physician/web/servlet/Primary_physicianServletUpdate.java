package primary_physician.web.servlet;

import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import primary_physician.dao.Primary_physicianDao;
import primary_physician.domain.Primary_physician;

/**
 * Servlet implementation class UserServlet
 */

public class Primary_physicianServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Primary_physicianServletUpdate() {
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
		Primary_physicianDao primary_physicianDao = new Primary_physicianDao();
		Primary_physician primary_physician = null;

		if(method.equals("primary_physician_search"))
		{
			try {
				primary_physician = primary_physicianDao.findByID(Integer.parseInt(request.getParameter("primary_physician_patient_id")));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}

			if(primary_physician.getPatient_id()!=null){
				request.setAttribute("primary_physician", primary_physician);
				request.getRequestDispatcher("/jsps/primary_physician/primary_physician_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Primary Physician not found");
				request.getRequestDispatcher("/jsps/primary_physician/primary_physician_read_output.jsp").forward(request, response);
			}
		}
		else if(method.equals("primary_physician_update"))
		{
			Map<String,String[]> paramMap = request.getParameterMap();
			Primary_physician form = new Primary_physician();
			List<String> info = new ArrayList<String>();

			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			form.setPatient_id(Integer.parseInt(info.get(0)));
			form.setp_first_name(info.get(1));
			form.setp_last_name(info.get(2));		
			form.setp_street_address(info.get(4));
			form.setp_city(info.get(5));
			form.setp_state(info.get(6));
			form.setp_zip(Integer.parseInt(info.get(7)));
			form.setp_phone_num(new BigInteger (info.get(8)));

			try {
				primary_physicianDao.update(form);

			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			}
			request.setAttribute("msg", "Primary Physician Updated");
			request.getRequestDispatcher("/jsps/primary_physician/primary_physician_read_output.jsp").forward(request, response);
		}
	}
}



