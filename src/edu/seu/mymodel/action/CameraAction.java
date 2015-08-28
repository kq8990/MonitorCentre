package edu.seu.mymodel.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.seu.mymodel.model.Camera;
import edu.seu.mymodel.service.CameraService;

public class CameraAction extends ActionSupport {

	private Camera camera;

	private Map<String, String> map = new HashMap<String, String>();

	protected CameraService cameraService;

	public String setting() throws Exception {

		// 创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();

		// 获取所有Camera实体
		List<Camera> cameraList = cameraService.findAllCameras();

		ctx.put("cameraList", cameraList);

		return "list";
	}

	public String save() throws Exception {
		String regex01 = "^[\u4E00-\u9FA5A-Za-z0-9_]+$";
		String regex02 = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}";

		// 字段较检
		Boolean validation = Pattern.matches(regex01, camera.getName())
				&& Pattern.matches(regex02, camera.getIpAddress());

		if (validation) {
			cameraService.save(camera);

			map.clear();
			map.put("result", "1");
		} else {
			map.clear();
			map.put("result", "0");
		}

		return "json";
	}

	public String delete() throws Exception{
		// 创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();
		
		// Map<String, Object> params = ctx.getParameters();
		
		String[] cids = (String[]) ctx.getParameters().get("cid");
		
		int id = Integer.parseInt(cids[0]);
		
		Camera cameraTemp = cameraService.findCameraByID(id);
		
		if (cameraTemp != null) {
			cameraService.delete(cameraTemp);
			
			map.clear();
			map.put("result", "1");
		}else {
			map.clear();
			map.put("result", "0");
		}
		
		return "json";
	}
	
	public String update() throws Exception {
		String regex01 = "^[\u4E00-\u9FA5A-Za-z0-9_]+$";
		String regex02 = "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}";

		// 配置修改信息
		Camera cameraTemp = cameraService.findCameraByID(camera);
		cameraTemp.setIpAddress(camera.getIpAddress());
		cameraTemp.setChannelNumber(camera.getChannelNumber());
		cameraTemp.setName(camera.getName());
		cameraTemp.setBelongs(camera.getBelongs());
		cameraTemp.setHzAngle(camera.getHzAngle());
		cameraTemp.setVzAngle(camera.getVzAngle());
		cameraTemp.setLatitude(camera.getLatitude());
		cameraTemp.setLongitude(camera.getLongitude());
		cameraTemp.setZoom(camera.getZoom());
		cameraTemp.setFocusing(camera.getFocusing());
		cameraTemp.setMoving(camera.getMoving());

		// 字段较检
		Boolean validation = Pattern.matches(regex01, cameraTemp.getName())
				&& Pattern.matches(regex02, cameraTemp.getIpAddress());

		// 保存修改信息
		if (cameraTemp.getId() > 0 && validation) {
			cameraService.edit(cameraTemp);

			map.clear();
			map.put("result", "1");
		} else {
			map.clear();
			map.put("result", "0");
		}

		return "json";
	}

	public Camera getCamera() {
		return camera;
	}

	public void setCamera(Camera camera) {
		this.camera = camera;
	}

	public void setCameraService(CameraService cameraService) {
		this.cameraService = cameraService;
	}

	public Map<String, String> getMap() {
		return map;
	}
}
