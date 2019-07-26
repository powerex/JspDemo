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

@WebServlet("/addUser")
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = (String) req.getParameter("newname");
        int age  = Integer.parseInt(req.getParameter("newage"));
        User user = new User(name, age);
        System.out.println(user);
        UserDaoImplementation.addUser(user);
        resp.sendRedirect("/users");
    }
}
