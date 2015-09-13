package edu.seu.mymodel.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "preset")
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Preset {

	@Id
	@Column(name = "preset_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "preset_index")
	private int index;

	@Column(name = "ipAddress")
	private String ipAddress;

	@Column(name = "preset_explain")
	private String explain;

	@Column(name = "preset_status")
	private int status;

	public Preset() {
		this.id = 0;
		this.index = 0;
		this.ipAddress = "";
		this.explain = "";
		this.status = 0;
	}

	public Preset(int id, int index, String ipAddress, String explain,
			int status) {
		this.id = id;
		this.index = index;
		this.ipAddress = ipAddress;
		this.explain = explain;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
