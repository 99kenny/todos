package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TodoDao;
import dto.Todo;

@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MainServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/main.jsp");
		TodoDao todoDao = new TodoDao();
		List<Todo> todo = new ArrayList<Todo>();
		List<Todo> doing = new ArrayList<Todo>();
		List<Todo> done = new ArrayList<Todo>();
		
		todo = todoDao.getTypeTodo();
		doing = todoDao.getTypeDoing();
		done = todoDao.getTypeDone();
		
		request.setAttribute("todo", todo);
		request.setAttribute("doing", doing);
		request.setAttribute("done", done);
		
		rd.forward(request, response);
	}

}
