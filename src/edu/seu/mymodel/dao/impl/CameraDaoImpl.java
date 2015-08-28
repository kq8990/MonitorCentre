package edu.seu.mymodel.dao.impl;

import java.util.List;

import edu.seu.common.dao.impl.BaseDaoImpl;
import edu.seu.mymodel.dao.CameraDao;
import edu.seu.mymodel.model.Camera;

public class CameraDaoImpl extends BaseDaoImpl<Camera> implements CameraDao {

	@Override
	public List<Camera> findByname(Camera camera) {
		return find("select camera from Camera where camera.name = ?0",
				camera.getName());
	}

}
