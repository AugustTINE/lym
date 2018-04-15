package com.lym.manager.service.impl;

import com.lym.manager.mapper.ContractInfoMapper;
import com.lym.manager.model.ContractInfo;
import com.lym.manager.service.ContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContractServiceImpl implements ContractService {

    @Autowired
    private ContractInfoMapper mapper;

    @Override
    public List<ContractInfo> listContract() {
        mapper.insert(new ContractInfo());
        return null;
    }
}