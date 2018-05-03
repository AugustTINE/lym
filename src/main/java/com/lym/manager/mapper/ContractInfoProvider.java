package com.lym.manager.mapper;

import com.lym.manager.model.ContractInfo;
import org.apache.ibatis.jdbc.SQL;

public class ContractInfoProvider {

    private final String table = "contract_info";
    
    private final String columns = "id, big_area, city, contract_name, sign_date, sign_person, invalid_date, device_num, device_info, rent_per, payment, pay_date_recent, pay_date_next, comments";

    public String base(){
        return new SQL(){{

        }}.toString();
    }

    public String insert(ContractInfo record){
        return new SQL().INSERT_INTO(table).VALUES(columns,"#{id}, #{big_area}, #{city}, #{contract_name}, #{sign_date}, #{sign_person}, #{invalid_date}, #{device_num}, #{device_info}, #{rent_per}, #{payment}, #{pay_date_recent}, #{pay_date_next}, #{comments}").toString();
    }

    public String updateSelective(ContractInfo record){
        return new SQL(){{
            UPDATE(table);
            if (record.getBigArea() != null) SET("big_area = #{big_area}");
            if (record.getCity() != null) SET("city = #{city}");
            if (record.getContractName() != null) SET("contract_name = #{contract_name}");
            if (record.getSignDate() != null) SET("sign_date = #{sign_date}");
            if (record.getSignPerson() != null) SET("sign_person = #sign_person");
            if (record.getInvalidDate() != null) SET("invalid_date = #invalid_date");
            if (record.getDeviceNum() != null) SET("device_num = #device_num");
            if (record.getDeviceInfo() != null) SET("device_info = #device_info");
            if (record.getRentPer() != null) SET("rent_per = #rent_per");
            if (record.getPayment() != null) SET("payment = #payment");
            if (record.getPayDateRecent() != null) SET("pay_date_recent = #pay_date_recent");
            if (record.getPayDateNext() != null) SET("pay_date_next = #pay_date_next");
            if (record.getComments() != null) SET("comments = #comments");
            WHERE("id = #{id}");
        }}.toString();
    }

    public String deleteById(Integer id){
        return new SQL(){{
            UPDATE(table).SET("is_active = 0");
            WHERE("id = #{id}");
        }}.toString();
    }

    public String queryListByPage(Integer startNo, Integer pageSize){
        return new SQL(){{
            SELECT(columns);
            FROM(table);
            WHERE("is_active = 1 limit #{startNo},#{pageSize}");
        }}.toString();
    }

    public String selectById(Integer id){
        return new SQL(){{
            SELECT(columns).FROM(table).WHERE("id = #{id}");
            AND();
            WHERE("is_active = 1");
        }}.toString();
    }

    public String count(){
        return new SQL(){{
            SELECT("count(id)").FROM(table);
            WHERE("is_active = 1");
        }}.toString();
    }
}
