package edu.seu.mymodel.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

import edu.seu.mymodel.model.Preset;
import edu.seu.mymodel.service.PresetService;

public class PresetAction extends ActionSupport {
	private Preset preset;

	private Map<String, Object> map = new HashMap<String, Object>();

	private PresetService presetService;

	/**
	 * 获取指定IP地址的预置点信息集Action
	 * 
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception {
		List<Preset> presets = presetService.findPresetsByIpAddress(preset
				.getIpAddress()); // 根据Ip地址获取所有相关的预置点信息

		if (presets != null && presets.size() > 0) {
			Map<String, String> presetMap = new HashMap<String, String>();
			for (Preset preset : presets) {
				presetMap.put("preset_" + preset.getIndex(),
						preset.getExplain());
			}

			map.clear();
			map.put("result", "1");
			map.put("preset_explain", presetMap);
		} else {
			map.clear();
			map.put("result", "0");
		}

		return "json";
	}

	/**
	 * 更改预置点信息Action
	 * 
	 * @return
	 * @throws Exception
	 */
	public String update() throws Exception {
		Preset tempPreset = presetService.getPresetByIndexAndIpAddress(
				preset.getIpAddress(), preset.getIndex()); // 根据Ip地址和索引值获取预置点信息

		if (tempPreset != null) {
			preset.setId(tempPreset.getId());
			presetService.update(preset);

			map.clear();
			map.put("result", "1");
		} else {
			map.clear();
			map.put("result", "0");
		}

		return "json";
	}

	public Preset getPreset() {
		return preset;
	}

	public void setPreset(Preset preset) {
		this.preset = preset;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setPresetService(PresetService presetService) {
		this.presetService = presetService;
	}

}
