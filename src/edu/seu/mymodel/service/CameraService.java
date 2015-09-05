package edu.seu.mymodel.service;

import java.util.List;

import edu.seu.mymodel.model.Camera;

public interface CameraService {

	/**
	 * 添加摄像机信息
	 * 
	 * @param camera
	 */
	public void save(Camera camera);

	/**
	 * 删除摄像机信息
	 * 
	 * @param camera
	 */
	public void delete(Camera camera);

	/**
	 * 根据ID查询相关Camera信息
	 * 
	 * @param id
	 * @return
	 */
	public Camera findCameraByID(int id);

	/**
	 * Camera 修改
	 * 
	 * @param camera
	 */
	public void edit(Camera camera);

	/**
	 * 查询所有Camera配置信息
	 * 
	 * @return
	 */
	public List<Camera> findAllCameras();

	/**
	 * 根据名字查询相关Camera信息
	 * 
	 * @param camera
	 * @return
	 */
	public List<Camera> findCameraByName(Camera camera);

	/**
	 * 根据通道号查询相关Camera信息业务
	 * 
	 * @param channelNumber
	 * @return
	 */
	public List<Camera> findCameraByChannelNumber(int channelNumber);
}
