package edu.seu.mymodel.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.seu.mymodel.model.Camera;
import edu.seu.mymodel.service.CameraService;

public class VideoControlAction extends ActionSupport {
	protected CameraService cameraService;

	public String execute() throws Exception {
		List<Camera> cameraList = cameraService.findCameraByChannelNumber(1);

		ActionContext ctx = ActionContext.getContext(); // 创建ActionContext实例
		ctx.getSession().put("camreaList", cameraList);

		return "list";
	}

	public void setCameraService(CameraService cameraService) {
		this.cameraService = cameraService;
	}

}
