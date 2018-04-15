package com.lym.manager.controller;

import com.lym.manager.model.ContractInfo;
import com.lym.manager.service.ContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ContractController {

    @Autowired
    private ContractService contractService;

    @RequestMapping("/contract/list")
    public String contractList(){
        List<ContractInfo> infos = contractService.listContract();
        return "";
    }
}
