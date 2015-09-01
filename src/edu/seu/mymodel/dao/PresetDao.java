package edu.seu.mymodel.dao;

import java.util.List;

import edu.seu.common.dao.BaseDao;
import edu.seu.mymodel.model.Preset;

public interface PresetDao extends BaseDao<Preset> {
	public List<Preset> findByIpAddress(String ipAddress);
}
