package cn.springmvcmybatis.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    //登录跳转页面
    @RequestMapping("/login")
    public String index(){
        return "/login";
    }


}
