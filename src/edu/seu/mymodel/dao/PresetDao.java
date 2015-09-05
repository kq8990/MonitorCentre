package edu.seu.mymodel.dao;

import java.util.List;

import edu.seu.common.dao.BaseDao;
import edu.seu.mymodel.model.Preset;

public interface PresetDao extends BaseDao<Preset> {

	/**
	 * 根据Ip地址和索引值查询预置点
	 * 
	 * @param ipAddress
	 * @param index
	 * @return 符合指定Ip地址和索引值的预置点
	 */
	public Preset getPresetByIndexAndIpAddress(String ipAddress, int index);

	/**
	 * 根据Ip地址查询预置点列表
	 * 
	 * @param ipAddress
	 * @return 符合指定Ip地址的预置点集
	 */
	public List<Preset> findByIpAddress(String ipAddress);

}
