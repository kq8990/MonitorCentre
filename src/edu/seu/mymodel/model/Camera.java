package edu.seu.mymodel.model;

import javax.persistence.*;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "Camera")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Camera {

	// 标识属性
	@Id
	@Column(name = "cameraID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "cameraName", nullable = false, length = 45, unique = true)
	private String name;

	@Column(name = "videoName", nullable = false, length = 45)
	private String videoName;

	@Column(name = "channelNumber", nullable = false)
	private int channelNumber;

	@Column(name = "ipAddress", nullable = false)
	private String ipAddress;

	@Column(name = "bitStream", nullable = false, length = 45)
	private String bitStream;

	@Column(name = "transportProtol", nullable = false, length = 45)
	private String transportProtol;

	@Column(name = "ptzProtol", nullable = false, length = 45)
	private String ptzProtol;

	@Column(name = "directNorth", nullable = false)
	private int directNorth;

	@Column(name = "belongs", nullable = false)
	private int belongs;

	@Column(name = "hZeroAngle", nullable = false)
	private double hzAngle;

	@Column(name = "vZeroAngle", nullable = false)
	private double vzAngle;

	@Column(name = "latitude", nullable = false)
	private int latitude;

	@Column(name = "longitude", nullable = false)
	private int longitude;

	// 变倍：0-不可变；1-连续变倍；3-两级变倍
	@Column(name = "zoom", nullable = false)
	private int zoom;

	// 调焦：0-不可调焦；1-可调焦
	@Column(name = "focusing", nullable = false)
	private int focusing;

	// 云台移动：0-固定云台；1-可移动云台
	@Column(name = "moving", nullable = false)
	private int moving;

	//
	@Column(name = "HWBG", nullable = false)
	private int lightSource;

	@Column(name = "accessmode", nullable = false)
	private int accessMode;

	@Column(name = "anglereturn", nullable = false)
	private int angleReturn;

	@Column(name = "blackheat", nullable = false)
	private int temperatureDifference;

	@Column(name = "show_window", nullable = false)
	private int showWindow;

	public Camera() {
		super();
		this.id = 0;
		this.ipAddress = "192.168.0.0";
		this.channelNumber = 0;
		this.name = "";
		this.belongs = 0;
		this.vzAngle = 0.0;
		this.hzAngle = 0.0;
		this.latitude = 0;
		this.longitude = 0;
		this.directNorth = 0;
		this.bitStream = "none";
		this.ptzProtol = "none";
		this.transportProtol = "none";
		this.videoName = "none";
		this.zoom = 0;
		this.focusing = 0;
		this.moving = 0;
		this.lightSource = 0;
		this.accessMode = 0;
		this.angleReturn = 0;
		this.temperatureDifference = 0;
		this.showWindow = 0;
	}

	/*
	 * 为属性提供setter、getter方法， setter用于设置属性的值，getter用于获取属性的值
	 */
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getVideoName() {
		return videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}

	public int getChannelNumber() {
		return channelNumber;
	}

	public void setChannelNumber(int channelNumber) {
		this.channelNumber = channelNumber;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getBitStream() {
		return bitStream;
	}

	public void setBitStream(String bitStream) {
		this.bitStream = bitStream;
	}

	public String getTransportProtol() {
		return transportProtol;
	}

	public void setTransportProtol(String transportProtol) {
		this.transportProtol = transportProtol;
	}

	public String getPtzProtol() {
		return ptzProtol;
	}

	public void setPtzProtol(String ptzProtol) {
		this.ptzProtol = ptzProtol;
	}

	public int getDirectNorth() {
		return directNorth;
	}

	public void setDirectNorth(int directNorth) {
		this.directNorth = directNorth;
	}

	public int getBelongs() {
		return belongs;
	}

	public void setBelongs(int belongs) {
		this.belongs = belongs;
	}

	public double getHzAngle() {
		return hzAngle;
	}

	public void setHzAngle(double hzAngle) {
		this.hzAngle = hzAngle;
	}

	public double getVzAngle() {
		return vzAngle;
	}

	public void setVzAngle(double vzAngle) {
		this.vzAngle = vzAngle;
	}

	public int getLatitude() {
		return latitude;
	}

	public void setLatitude(int latitude) {
		this.latitude = latitude;
	}

	public int getLongitude() {
		return longitude;
	}

	public void setLongitude(int longitude) {
		this.longitude = longitude;
	}

	public int getZoom() {
		return zoom;
	}

	public void setZoom(int zoom) {
		this.zoom = zoom;
	}

	public int getFocusing() {
		return focusing;
	}

	public void setFocusing(int focusing) {
		this.focusing = focusing;
	}

	public int getMoving() {
		return moving;
	}

	public void setMoving(int moving) {
		this.moving = moving;
	}

	public int getLightSource() {
		return lightSource;
	}

	public void setLightSource(int lightSource) {
		this.lightSource = lightSource;
	}

	public int getAccessMode() {
		return accessMode;
	}

	public void setAccessMode(int accessMode) {
		this.accessMode = accessMode;
	}

	public int getAngleReturn() {
		return angleReturn;
	}

	public void setAngleReturn(int angleReturn) {
		this.angleReturn = angleReturn;
	}

	public int getTemperatureDifference() {
		return temperatureDifference;
	}

	public void setTemperatureDifference(int temperatureDifference) {
		this.temperatureDifference = temperatureDifference;
	}

	public int getShowWindow() {
		return showWindow;
	}

	public void setShowWindow(int showWindow) {
		this.showWindow = showWindow;
	}

}
