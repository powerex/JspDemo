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

@WebServlet("/users")
public class GetUsersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = UserDaoImplementation.getUserByID(1);
        req.setAttribute("user", user);
        req.getSession().setAttribute("allusers", UserDaoImplementation.getAllUsers());
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/jsp/Demo_07.jsp");
        requestDispatcher.forward(req, resp);
    }
}
