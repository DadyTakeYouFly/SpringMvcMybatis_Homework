package cn.springmvcmybatis.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;

@ControllerAdvice
public class ExceptionController {
    //@ExceptionHandler(反映射的类)
    public void exception(ArithmeticException e){
        System.out.println("定义异常处理的地方");
        System.out.println(e.getMessage());
    }
}
