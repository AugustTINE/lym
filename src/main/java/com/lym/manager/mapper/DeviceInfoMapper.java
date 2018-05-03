package com.lym.manager.mapper;

import com.lym.manager.model.DeviceInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface DeviceInfoMapper {

    @Select("select * from device_info where id = #{id}")
    DeviceInfo selectById(int id);
}
