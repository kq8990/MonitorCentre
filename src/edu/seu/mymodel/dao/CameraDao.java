package edu.seu.mymodel.dao;

import java.util.List;

import edu.seu.common.dao.BaseDao;
import edu.seu.mymodel.model.Camera;

public interface CameraDao extends BaseDao<Camera> {

	/**
	 * 根据通道名称获取所有Camera实体
	 * 
	 * @param camera
	 * @return Camera实体List
	 */
	List<Camera> findByName(Camera camera);

	/**
	 * 根据通道号获取所有Camera实体
	 * 
	 * @param channelNumber
	 * @return Camera实体List
	 */
	List<Camera> findByChannelNumber(int channelNumber);

}
