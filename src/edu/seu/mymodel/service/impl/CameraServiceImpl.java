package edu.seu.mymodel.service.impl;

import java.util.List;

import edu.seu.mymodel.dao.CameraDao;
import edu.seu.mymodel.dao.PresetDao;
import edu.seu.mymodel.model.Camera;
import edu.seu.mymodel.model.Preset;
import edu.seu.mymodel.service.CameraService;

public class CameraServiceImpl implements CameraService {

	private CameraDao cameraDao;
	private PresetDao presetDao;

	public void setCameraDao(CameraDao cameraDao) {
		this.cameraDao = cameraDao;
	}

	public void setPresetDao(PresetDao presetDao) {
		this.presetDao = presetDao;
	}

	@Override
	public void save(Camera camera) {
		cameraDao.save(camera);
		
		for (int i = 0; i < 60; i++) {
			Preset preset = new Preset(0, i, camera.getIpAddress(), "", 0);
			presetDao.save(preset);
		} // 插入六十个相关的预置点
	}

	@Override
	public void delete(Camera camera) {
		cameraDao.delete(camera);
	}

	@Override
	public void update(Camera camera) {
		cameraDao.update(camera);
	}

	@Override
	public Camera findCameraByID(int id) {
		return cameraDao.get(Camera.class, id);
	}

	@Override
	public List<Camera> findAllCameras() {
		return cameraDao.findAll(Camera.class);
	}

	@Override
	public List<Camera> findCameraByName(Camera camera) {
		return cameraDao.findByName(camera);
	}

	@Override
	public List<Camera> findCameraByChannelNumber(int channelNumber) {
		return cameraDao.findByChannelNumber(channelNumber);
	}
}
