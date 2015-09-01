package edu.seu.mymodel.service.impl;

import java.util.List;

import edu.seu.mymodel.dao.PresetDao;
import edu.seu.mymodel.model.Preset;
import edu.seu.mymodel.service.PresetService;

public class PresetServiceImpl implements PresetService {
	private PresetDao presetDao;

	public void setPresetDao(PresetDao presetDao) {
		this.presetDao = presetDao;
	}

	@Override
	public void edit(Preset preset) {
		presetDao.update(preset);
	}

	@Override
	public List<Preset> findPresetsByIpAddress(String ipAddress) {
		return presetDao.findByIpAddress(ipAddress);
	}

}
