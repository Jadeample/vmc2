package com.amaker.servlet;

import com.amaker.entity.User;
import com.amaker.service.UserService;
import com.amaker.service.impl.UserServiceImpl;
import com.amaker.util.MyBeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "UserServlet", value = "/user")
public class UserServlet extends BaseServlet{

    UserService userService=new UserServiceImpl();

    protected void find(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> list = userService.find();
        request.setAttribute("list",list);
        request.getRequestDispatcher("/").forward(request,response);
    }

    protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String[]> map = request.getParameterMap();
        Object user = MyBeanUtils.populate(User.class, map);
        userService.addUser(user);
        find(request,response);
    }

    protected void getById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userid = Integer.parseInt(request.getParameter("userid"));
        User user = userService.findById(userid);
        request.setAttribute("user",user);
        request.getRequestDispatcher("main/update.jsp").forward(request,response);
    }

    protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String[]> map = request.getParameterMap();
        Object user = MyBeanUtils.populate(User.class, map);
        Boolean r = userService.update(user);
        String msg="";
        if(r){
            msg="修改成功！";
        }else{
            msg="修改失败";
        }
        request.setAttribute("msg",msg);
        request.getRequestDispatcher("/main/update.jsp").forward(request,response);
    }
}
