
package com.lym.manager.util;

/**
 * 统一定义redis中存储的各种对象的Key前缀和超时时间.
 * 
 * 
 * @author lvxiaolong
 */
public enum RedisConstants {
	IMAGECAPTCHA("IMAGECAPTCHA_"),
	VEHICLECONFIG("vehicle_config_"),
	SMSCAPTCHA("SMSCAPTCHA_");

	
	private String prefix;
	private int expiredTime;

	RedisConstants(String prefix, int expiredTime) {
		this.prefix = prefix;
		this.expiredTime = expiredTime;
	}
	RedisConstants(String prefix) {
		this.prefix = prefix;
	}
	public String getPrefix() {
		return prefix;
	}

	public int getExpiredTime() {
		return expiredTime;
	}

}
