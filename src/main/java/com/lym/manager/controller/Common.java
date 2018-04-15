package com.lym.manager.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Common {

    @RequestMapping("/admin")
    public String test(){
        return "test";
    }
}
