package com.lym.manager.service.impl;

import com.lym.manager.mapper.DeviceInfoMapper;
import com.lym.manager.model.DeviceInfo;
import com.lym.manager.service.DeviceInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class DeviceInfoServiceImpl implements DeviceInfoService {

    @Resource
    private DeviceInfoMapper deviceInfoMapper;

    @Override
    public List<DeviceInfo> checkDevices(String deviceInfo) {
        if (StringUtils.isBlank(deviceInfo)) return null;
        String[] devices = deviceInfo.split(",");
        List<DeviceInfo> deviceInfos = new ArrayList<>();
        for (String device : devices){
            DeviceInfo info = deviceInfoMapper.selectById(Integer.parseInt(device));
            deviceInfos.add(info);
        }
        return deviceInfos;
    }
}
