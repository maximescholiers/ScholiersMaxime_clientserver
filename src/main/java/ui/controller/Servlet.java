package domain.db;
import domain.model.Auto;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Automerk = request.getParameter("automerk");
        String Jaartal = request.getParameter("bouwjaar");
        String Manueel = request.getParameter("type");

        int Jaartal2 = Integer.parseInt(Jaartal);
        boolean Manueel2 = Boolean.parseBoolean(Manueel);

        //request.setAttribute("alleAuto's", autoDB.vindAlle());
        //request.setAttribute("oudsteAuto", autoDB.vindOudste());

        Auto waggie = new Auto(Automerk,Jaartal2,Manueel2);
        request.setAttribute("automerk",waggie.getNaam());
        request.setAttribute("jaar",waggie.getJaartal());
        request.setAttribute("type",waggie.getManueel());

        RequestDispatcher view = request.getRequestDispatcher("overzicht.jsp");
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
