//package com.lym.manager.mapper;
//
//
//import java.util.List;
//
//import com.lym.manager.model.ContractInfo;
//import com.lym.manager.model.ContractInfoExample;
//import org.apache.ibatis.annotations.Mapper;
//import org.apache.ibatis.annotations.Param;
//import org.springframework.stereotype.Repository;
//
//@Mapper
//public interface ContractInfoMapper {
//    long countByExample(ContractInfoExample example);
//
//    int deleteByExample(ContractInfoExample example);
//
//    int insert(ContractInfo record);
//
//    int insertSelective(ContractInfo record);
//
//    List<ContractInfo> selectByExample(ContractInfoExample example);
//
//    int updateByExampleSelective(@Param("record") ContractInfo record, @Param("example") ContractInfoExample example);
//
//    int updateByExample(@Param("record") ContractInfo record, @Param("example") ContractInfoExample example);
//}