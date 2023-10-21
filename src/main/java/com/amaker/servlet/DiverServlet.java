package com.amaker.servlet;

import com.amaker.entity.Car;
import com.amaker.entity.Driver;
import com.amaker.service.DriverService;
import com.amaker.service.impl.DriverServiceImpl;
import com.amaker.util.MyBeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "DriverServlet",value = "/driver")
public class DiverServlet extends BaseServlet {
    DriverService driverService = new DriverServiceImpl();

    protected void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Driver> drivers = driverService.find();
        request.setAttribute("list",drivers);
        request.getRequestDispatcher("EMD_shop_show.jsp").forward(request, response);
    }
    protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String[]> map = request.getParameterMap();
        Object driver = MyBeanUtils.populate(Car.class, map);
        driverService.addDriver(driver);
    }
}
