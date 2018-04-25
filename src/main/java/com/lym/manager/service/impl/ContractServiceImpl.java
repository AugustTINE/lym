package com.lym.manager.service.impl;

import com.lym.manager.mapper.ContractInfoMapper;
import com.lym.manager.model.ContractInfo;
import com.lym.manager.model.ContractInfoExample;
import com.lym.manager.service.ContractService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ContractServiceImpl implements ContractService {

    @Resource
    private ContractInfoMapper contractDao;

    @Override
    public ContractInfo selectByPrimaryKey(Integer id) {
        return contractDao.selectById(id);
    }

    @Override
    public List<ContractInfo> queryList() {
        return null;
    }

    @Override
    public Integer count() {
        return contractDao.count();
    }

    @Override
    public Integer updateSelective(ContractInfo contractInfo) {
        return contractDao.updateByExampleSelective(contractInfo, new ContractInfoExample());
    }

    @Override
    public Integer insert(ContractInfo contractInfo) {
        return contractDao.insert(contractInfo);
    }

    @Override
    public List<ContractInfo> queryListByPage(Integer pageNo, Integer pageSize) {
        return contractDao.queryListByPage(pageNo,pageSize);
    }

    @Override
    public Integer deleteConfig(Integer id) {
        return null;
    }

}
