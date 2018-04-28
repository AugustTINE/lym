package com.lym.manager.mapper;


import com.lym.manager.model.ContractInfo;
import com.lym.manager.model.ContractInfoExample;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface ContractInfoMapper {
    long countByExample(ContractInfoExample example);

    int deleteByExample(ContractInfoExample example);

    int insert(ContractInfo record);

    int insertSelective(ContractInfo record);

    List<ContractInfo> selectByExample(ContractInfoExample example);

    int updateByExampleSelective(@Param("record") ContractInfo record, @Param("example") ContractInfoExample example);

    int updateByExample(@Param("record") ContractInfo record, @Param("example") ContractInfoExample example);

    @Select("SELECT * FROM contract_info where is_active = 1 limit #{startNo},#{pageSize}")
    List<ContractInfo> queryListByPage(@Param("startNo")Integer startNo, @Param("pageSize")Integer pageSize);

    @Select("select * from contract_info where id=#{id} and is_active = 1")
    ContractInfo selectById(@Param("id")Integer id);

    @Update("UPDATE contract_info SET is_active = 0 where id=#{id}")
    Integer deleteConfig(@Param("id")Integer id);

    @Select("SELECT COUNT(id) FROM contract_info where is_active = 1")
    Integer count();

}