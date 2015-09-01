package edu.seu.mymodel.dao.impl;

import java.util.List;

import edu.seu.common.dao.impl.BaseDaoImpl;
import edu.seu.mymodel.dao.CameraDao;
import edu.seu.mymodel.model.Camera;

public class CameraDaoImpl extends BaseDaoImpl<Camera> implements CameraDao {

	@Override
	public List<Camera> findByName(Camera camera) {
		String hql = "select camera from Camera as camera where camera.name = ?0";

		return find(hql, camera.getName());
	}

	@Override
	public List<Camera> findByChannelNumber(int channelNumber) {
		String hql = "select camera from Camera as camera where camera.channelNumber = ?0";

		return find(hql, channelNumber);
	}
}
