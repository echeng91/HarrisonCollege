package servlets;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customTools.DBUtil;
import model.HcStudent;
import model.HcUser;

/**
 * Servlet implementation class Transcripts
 */
@WebServlet("/ViewTranscripts")
public class ViewTranscripts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewTranscripts() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
HttpSession session = request.getSession();
		
		List<HcStudent> registeredList = null;
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		
	
		String qString = "SELECT h FROM HcStudentreg h WHERE h.hcStudent.studentid = " + ((HcUser)session.getAttribute("usersession"))+ " ORDER BY h.Studentid";
		TypedQuery<HcStudent> q = em.createQuery(qString, HcStudent.class);
		try {
			registeredList = q.getResultList();
			request.setAttribute("registeredlist", registeredList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("Transcripts.jsp").forward(request, response);
	}

}