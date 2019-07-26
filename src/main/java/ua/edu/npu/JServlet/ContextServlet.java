package ua.edu.npu.JServlet;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ContextServlet implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        servletContextEvent.getServletContext().setAttribute("data", "Data from servlet context");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
