package com.lym.manager.mapper;


import com.lym.manager.model.ContractInfo;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ContractInfoMapper {

    //@Update("UPDATE contract_info SET is_active = 0 where id=#{id}")
    @UpdateProvider(type = ContractInfoProvider.class, method = "deleteById")
    int deleteById(Integer id);

    @InsertProvider(type = ContractInfoProvider.class, method = "insert")
    int insert(ContractInfo record);

    @InsertProvider(type = ContractInfoProvider.class, method = "insertSelective")
    int insertSelective(ContractInfo record);

    @UpdateProvider(type = ContractInfoProvider.class, method = "updateSelective")
    int updateSelective(@Param("record") ContractInfo record);

    //@Select("SELECT * FROM contract_info where is_active = 1 limit #{startNo},#{pageSize}")
    @SelectProvider(type = ContractInfoProvider.class, method = "queryListByPage")
    List<ContractInfo> queryListByPage(@Param("startNo")Integer startNo, @Param("pageSize")Integer pageSize);

    //@Select("select * from contract_info where id=#{id} and is_active = 1")
    @SelectProvider(type = ContractInfoProvider.class, method = "selectById")
    ContractInfo selectById(@Param("id")Integer id);

    //@Select("SELECT COUNT(id) FROM contract_info where is_active = 1")
    @SelectProvider(type = ContractInfoProvider.class, method = "count")
    Integer count();

}