package com.lym.manager.service;

import com.lym.manager.model.DeviceInfo;

import java.util.List;

public interface DeviceInfoService {

    List<DeviceInfo> checkDevices(String deviceInfo);
}
