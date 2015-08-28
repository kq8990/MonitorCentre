package edu.seu.mymodel.service;

import java.util.List;

import edu.seu.mymodel.model.Camera;

public interface CameraService {
	
	/**
	 * Camera 添加
	 * @param camera
	 */
	public void save(Camera camera);
	
	/**
	 * Camera 删除
	 * @param camera
	 */
	public void delete(Camera camera);
	
	/**
	 * Camera 修改
	 * @param camera
	 */
	public void edit(Camera camera);
	
	/**
	 * 查询所有Camera配置信息
	 * @return
	 */
	public List<Camera> findAllCameras();
	
	/**
	 * 根据ID查询相关Cmaera信息
	 * @param camera
	 * @return
	 */
	public Camera findCameraByID(Camera camera);
	
	/**
	 * 根据ID查询相关Cmaera信息
	 * @param id
	 * @return
	 */
	public Camera findCameraByID(int id);
	
	/**
	 * 根据名字查询相关Cmaera信息
	 * @param camera
	 * @return
	 */
	public List<Camera> findCameraByName(Camera camera);
}
