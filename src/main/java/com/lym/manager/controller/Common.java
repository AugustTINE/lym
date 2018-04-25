package com.lym.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller("/")
public class Common {

    @RequestMapping(value = "/hello",method = RequestMethod.GET)
    public String test(){
        return "/WEB-INF/top.jsp";
    }

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String test(Map<String, Object> map){
        return "/WEB-INF/pages/contract/index.jsp";
    }
}
