package com.lym.manager.controller;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/deviceInfo")
public class DeviceInfoController {

    @RequestMapping("/checkDevices")
    public String checkDevices(String deviceInfo){
        return null;
    }

}
