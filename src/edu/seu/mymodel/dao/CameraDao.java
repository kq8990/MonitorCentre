package edu.seu.mymodel.dao;

import java.util.List;

import edu.seu.common.dao.BaseDao;
import edu.seu.mymodel.model.Camera;

public interface CameraDao extends BaseDao<Camera> {

	List<Camera> findByname(Camera camera);
	
}
