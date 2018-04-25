package com.lym.manager.service.impl;

import com.lym.manager.mapper.ContractInfoMapper;
import com.lym.manager.model.ContractInfo;
import com.lym.manager.service.ContractService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContractServiceImpl implements ContractService {

    @Autowired
    private ContractInfoMapper mapper;

    @Override
    public List<ContractInfo> listContract() {
        int i = mapper.insert(new ContractInfo());
        return null;
    }
}
