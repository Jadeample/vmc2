package com.amaker.servlet;

import com.amaker.entity.Car;
import com.amaker.service.CarService;
import com.amaker.service.impl.CarServiceImpl;
import com.amaker.util.MyBeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "CarServlet", value = "/car")
public class CarServlet extends BaseServlet{

    CarService carService =new CarServiceImpl();

    protected void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Car> list = carService.find();
        request.setAttribute("list",list);
        request.getRequestDispatcher("/").forward(request,response);
    }

    protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String[]> map = request.getParameterMap();
        Object car = MyBeanUtils.populate(Car.class, map);
        carService.addCar(car);
        find(request,response);
    }

    protected void getById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int cid = Integer.parseInt(request.getParameter("cid"));
        Car car = carService.findById(cid);
        request.setAttribute("car",car);
        request.getRequestDispatcher("main/update.jsp").forward(request,response);
    }

    protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String[]> map = request.getParameterMap();
        Object car = MyBeanUtils.populate(Car.class, map);
        Boolean c = carService.update(car);
        String msg="";
        if(c){
            msg="修改成功！";
        }else{
            msg="修改失败";
        }
        request.setAttribute("msg",msg);
        request.getRequestDispatcher("/main/update.jsp").forward(request,response);
    }
}
