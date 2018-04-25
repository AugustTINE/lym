package com.lym.manager.service;

import com.lym.manager.model.ContractInfo;

import java.util.List;

public interface ContractService {
    ContractInfo selectByPrimaryKey(Integer id);

    List<ContractInfo> queryList();

    Integer count();

    Integer updateSelective(ContractInfo contract);

    Integer insert(ContractInfo data);

    List<ContractInfo> queryListByPage(Integer pageNo, Integer pageSize);

    Integer deleteConfig(Integer id);
}
