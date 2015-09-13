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

	/**
	 * 获取摄像机信息列表Action
	 * @return
	 * @throws Exception
	 */
	public String setting() throws Exception {			
		ActionContext ctx = ActionContext.getContext(); // 创建ActionContext实例

		List<Camera> cameraList = cameraService.findAllCameras(); // 获取所有Camera实体
		
		ctx.put("cameraList", cameraList);

		return "list";
	}

	/**
	 * 保存摄像机信息Action
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception {
		cameraService.save(camera);

		map.clear();
		map.put("result", "1");

		return "json";
	}

	/**
	 * 删除摄像机信息Action
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception {
		ActionContext ctx = ActionContext.getContext(); // 创建ActionContext实例

		String[] cids = (String[]) ctx.getParameters().get("cid");

		int id = Integer.parseInt(cids[0]);

		Camera cameraTemp = cameraService.findCameraByID(id);

		if (cameraTemp != null) {
			cameraService.delete(cameraTemp);

			map.clear();
			map.put("result", "1");
		} else {
			map.clear();
			map.put("result", "0");
		}

		return "json";
	}

	/**
	 * 修改摄像机信息Action
	 * @return
	 * @throws Exception
	 */
	public String update() throws Exception {
		// 配置修改信息
		Camera cameraTemp = cameraService.findCameraByID(camera.getId());
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

		if (cameraTemp.getId() > 0) {
			cameraService.update(cameraTemp);

			map.clear();
			map.put("result", "1");
		} else {
			map.clear();
			map.put("result", "0");
		} // 保存修改信息

		return "json";
	}

	public void validateSave() {
		if (this.camera.getName() == null || this.camera.getName().equals("")) {
			addFieldError("name", "摄像机名字为空");
		} else if (!Pattern
				.matches(WebConstant.REGEX_02, this.camera.getName())) {
			addFieldError("name", "摄像机名字只能由只能输入由数字、26个英文字母或者下划线组成");
		}

		if (this.camera.getIpAddress() == null
				|| this.camera.getIpAddress().equals("")) {
			addFieldError("ip", "IP地址为空");
		} else if (!Pattern.matches(WebConstant.REGEX_IP,
				this.camera.getIpAddress())) {
			addFieldError("ip", "IP地址格式有误");
		}
	}

	public void validateUpdate() {
		if (this.camera.getName() == null || this.camera.getName().equals("")) {
			addFieldError("name", "摄像机名字为空");
		} else if (!Pattern
				.matches(WebConstant.REGEX_02, this.camera.getName())) {
			addFieldError("name", "摄像机名字只能由只能输入由数字、26个英文字母或者下划线组成");
		}

		if (this.camera.getIpAddress() == null
				|| this.camera.getIpAddress().equals("")) {
			addFieldError("ip", "IP地址为空");
		} else if (!Pattern.matches(WebConstant.REGEX_IP,
				this.camera.getIpAddress())) {
			addFieldError("ip", "IP地址格式有误");
		}
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
