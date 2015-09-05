package edu.seu.mymodel.service;

import java.util.List;

import edu.seu.mymodel.model.Preset;

public interface PresetService {

	public void update(Preset preset);

	/**
	 * 根据Ip地址和索引值查询预置点业务
	 * 
	 * @param ipAddress
	 * @param index
	 * @return 符合指定Ip地址和索引值的预置点
	 */
	public Preset getPresetByIndexAndIpAddress(String ipAddress, int index);

	/**
	 * 根据Ip地址查询预置点列表业务
	 * 
	 * @param ipAddress
	 * @return 符合指定Ip地址的预置点集
	 */
	public List<Preset> findPresetsByIpAddress(String ipAddress);
}
