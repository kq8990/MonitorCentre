package edu.seu.mymodel.service.impl;

import java.util.List;

import edu.seu.mymodel.dao.CameraDao;
import edu.seu.mymodel.model.Camera;
import edu.seu.mymodel.service.CameraService;

public class CameraServiceImpl implements CameraService {

	private CameraDao cameraDao;

	public void setCameraDao(CameraDao cameraDao) {
		this.cameraDao = cameraDao;
	}

	@Override
	public void save(Camera camera) {
		cameraDao.save(camera);
	}

	@Override
	public void delete(Camera camera) {
		cameraDao.delete(camera);
	}

	@Override
	public void edit(Camera camera) {
		cameraDao.update(camera);
	}

	@Override
	public List<Camera> findAllCameras() {
		return cameraDao.findAll(Camera.class);
	}

	@Override
	public Camera findCameraByID(Camera camera) {
		return cameraDao.get(Camera.class, camera.getId());
	}

	@Override
	public Camera findCameraByID(int id) {
		return cameraDao.get(Camera.class, id);

	}

	@Override
	public List<Camera> findCameraByName(Camera camera) {
		return cameraDao.findByName(camera);
	}

}
