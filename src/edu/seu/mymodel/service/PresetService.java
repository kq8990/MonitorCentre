package edu.seu.mymodel.service;

import java.util.List;

import edu.seu.mymodel.model.Preset;

public interface PresetService {
	
	public void edit(Preset preset);
	
	public List<Preset> findPresetsByIpAddress(String ipAddress);
}
