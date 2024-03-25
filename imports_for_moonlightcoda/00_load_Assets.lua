
if Assets == nil then
    Assets = {}
end

local temp_assets = {


	-- Asset("IMAGE", "images/inventoryimages/moonlightcoda_empty_icon.tex"),
	-- Asset("ATLAS", "images/inventoryimages/moonlightcoda_empty_icon.xml"),
	
	-- Asset("SHADER", "shaders/mod_test_shader.ksh"),		--- 测试用的

	---------------------------------------------------------------------------

	Asset("ANIM", "anim/moonlightcoda_hud_health.zip"),	--- 血条修改
	Asset("ANIM", "anim/moonlightcoda_hud_status_meter.zip"),	--- 血条修改
	Asset("ANIM", "anim/moonlightcoda_hud_status_health.zip"),	--- 血条修改




	---------------------------------------------------------------------------
	Asset("ANIM", "anim/moonlightcoda_idle_flower.zip"),	--- wendy 花的图层替代
	Asset("ANIM", "anim/moonlightcoda_hand_glass.zip"),		--- 植物人手部活木替代
	Asset("ANIM", "anim/moonlightcoda_funny_idle.zip"),		--- 自制idle动作

	---------------------------------------------------------------------------
	--- 等级相关界面素材
		Asset("IMAGE", "images/widgets/moonlightcoda_level_widget.tex"),
		Asset("ATLAS", "images/widgets/moonlightcoda_level_widget.xml"),

		Asset("IMAGE", "images/widgets/character_select_panel_moonlightcoda_health.tex"),
		Asset("ATLAS", "images/widgets/character_select_panel_moonlightcoda_health.xml"),

		Asset("IMAGE", "images/widgets/character_select_panel_moonlightcoda_sanity.tex"),
		Asset("ATLAS", "images/widgets/character_select_panel_moonlightcoda_sanity.xml"),
	---------------------------------------------------------------------------
	-- Asset("SOUNDPACKAGE", "sound/dontstarve_DLC002.fev"),	--- 单机声音集
	---------------------------------------------------------------------------


}

for k, v in pairs(temp_assets) do
    table.insert(Assets,v)
end

