package com.lym.manager.service.impl;

import com.lym.manager.mapper.ContractInfoMapper;
import com.lym.manager.model.ContractInfo;
import com.lym.manager.service.ContractService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ContractServiceImpl implements ContractService {

    @Resource
    private ContractInfoMapper mapper;

    @Override
    public List<ContractInfo> listContract() {
        int i = mapper.insert(new ContractInfo());
        return null;
    }
}
