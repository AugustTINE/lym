package com.lym.manager.controller;

import com.lym.manager.model.ContractInfo;
import com.lym.manager.service.ContractService;
import com.lym.manager.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequestMapping("/contractManager")
public class ContractController {

    @Autowired
    private ContractService contractService;

    @RequestMapping("/index")
    public String index(@RequestParam(value = "pageNo", defaultValue = "1") Integer pageNo,
                        @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize,
                        Model model) {
        Integer total = contractService.count();
        List<ContractInfo> contractInfo = contractService.queryListByPage((pageNo - 1) * pageSize, pageSize);
        model.addAttribute("page", new Page<>(pageNo, pageSize, total, contractInfo));
        return "contract/index";
    }

    @RequestMapping("/toEdit")
    public String toEdit(@RequestParam(value = "id", defaultValue = "0") Integer id, Model model) {

        if (id != 0){
            ContractInfo contractInfo = contractService.selectByPrimaryKey(id);
            if (contractInfo.getSignDate() != null){
                String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(contractInfo.getSignDate());
                model.addAttribute("signTime", format);
            }
            if (contractInfo.getInvalidDate() != null){
                String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(contractInfo.getInvalidDate());
                model.addAttribute("invalidDate", format);
            }
            model.addAttribute("configInfo", contractInfo);
        }
        return "contract/edit";
    }

    @RequestMapping("/update")
    public String updateInfo(ContractInfo contractInfo, RedirectAttributes attr) {
        if (contractInfo.getId() != null){
            int count = contractService.updateSelective(contractInfo);
        }else {
            int count = contractService.insert(contractInfo);
        }
        return "redirect:/contractManager/index";
    }

    @RequestMapping("/deleteConfig")
    public String deleteConfig(RedirectAttributes attr){

        return "redirect:/contractManager/index";
    }
}
