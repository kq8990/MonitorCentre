package edu.seu.mymodel.service.impl;

import edu.seu.mymodel.dao.PresetDao;
import edu.seu.mymodel.service.PresetService;

public class PresetServiceImpl implements PresetService {
	private PresetDao presetDao;

	public void setPresetDao(PresetDao presetDao) {
		this.presetDao = presetDao;
	}

}
