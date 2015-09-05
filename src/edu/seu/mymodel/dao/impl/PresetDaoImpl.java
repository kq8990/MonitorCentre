package edu.seu.mymodel.dao.impl;

import java.util.List;

import edu.seu.common.dao.impl.BaseDaoImpl;
import edu.seu.mymodel.dao.PresetDao;
import edu.seu.mymodel.model.Preset;

public class PresetDaoImpl extends BaseDaoImpl<Preset> implements PresetDao {

	@Override
	public Preset getPresetByIndexAndIpAddress(String ipAddress, int index) {
		String hql = "select preset from Preset as preset where preset.ipAddress = ?0 and preset.index = ?1";
		List<Preset> presets = find(hql, ipAddress, index);

		if (presets.size() > 0) {
			return presets.get(0);
		}

		return null;
	}

	@Override
	public List<Preset> findByIpAddress(String ipAddress) {
		String hql = "select preset from Preset as preset where preset.ipAddress = ?0";

		return find(hql, ipAddress);
	}
}
