package com.lym.manager.controller;

import com.lym.manager.model.DeviceInfo;
import com.lym.manager.service.DeviceInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/deviceInfo")
public class DeviceInfoController {

    @Autowired
    private DeviceInfoService deviceService;

    @ResponseBody
    @RequestMapping("/checkDevices")
    public List<DeviceInfo> checkDevices(String deviceInfo){
        return deviceService.checkDevices(deviceInfo);
    }

}
