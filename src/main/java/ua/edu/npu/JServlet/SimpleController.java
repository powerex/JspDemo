package ua.edu.npu.JServlet;

import ua.edu.npu.dao.UserDaoImplementation;
import ua.edu.npu.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/controller")
public class SimpleController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String StringId  = req.getParameter("id");
        if (StringId == null) StringId = "1";
        int id = Integer.parseInt(StringId);
        User user = UserDaoImplementation.getUserByID(id);
        req.setAttribute("user", user);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/jsp/Demo_05.jsp");
        requestDispatcher.forward(req, resp);
    }
}
