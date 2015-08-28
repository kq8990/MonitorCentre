package edu.seu.mymodel.model;

import javax.persistence.*;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 用户权限表
 * 
 * @author Mark
 * 
 */
@Entity
@Table(name = "Authority")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Authority {

	// 标识属性
	@Id
	@Column(name = "authority_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "authority_description", nullable = false)
	private String description;

	// 是否允许控制云台上下左右转动
	@Column(name = "ptzDirectControl", nullable = false)
	private int ptzDirectControl;

	// 是否允许设置摄像机参数（如变倍，调焦等）
	@Column(name = "ptzCameraParameter", nullable = false)
	private int ptzCameraParameter;

	// 是否允许调用预置点
	@Column(name = "ptzPresetUse", nullable = false)
	private int ptzPresetUse;

	// 是否允许查看视频
	@Column(name = "ViewVideo", nullable = false)
	private int viewVideo;

	// 是否允许执行自动巡逻任务
	@Column(name = "AutoPatrol", nullable = false)
	private int autoPatrol;

	// 是否允许执行智能视频监控
	@Column(name = "VideoMonitor", nullable = false)
	private int videoMonitor;

	public Authority() {
		this.id = 0;
		this.ptzDirectControl = 0;
		this.ptzCameraParameter = 0;
		this.ptzPresetUse = 0;
		this.viewVideo = 0;
		this.autoPatrol = 0;
		this.videoMonitor = 0;
	}

	/*
	 * 为属性提供setter、getter方法， setter用于设置属性的值，getter用于获取属性的值
	 */
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPtzDirectControl() {
		return ptzDirectControl;
	}

	public void setPtzDirectControl(int ptzDirectControl) {
		this.ptzDirectControl = ptzDirectControl;
	}

	public int getPtzCameraParameter() {
		return ptzCameraParameter;
	}

	public void setPtzCameraParameter(int ptzCameraParameter) {
		this.ptzCameraParameter = ptzCameraParameter;
	}

	public int getPtzPresetUse() {
		return ptzPresetUse;
	}

	public void setPtzPresetUse(int ptzPresetUse) {
		this.ptzPresetUse = ptzPresetUse;
	}

	public int getViewVideo() {
		return viewVideo;
	}

	public void setViewVideo(int viewVideo) {
		this.viewVideo = viewVideo;
	}

	public int getAutoPatrol() {
		return autoPatrol;
	}

	public void setAutoPatrol(int autoPatrol) {
		this.autoPatrol = autoPatrol;
	}

	public int getVideoMonitor() {
		return videoMonitor;
	}

	public void setVideoMonitor(int videoMonitor) {
		this.videoMonitor = videoMonitor;
	}

}
