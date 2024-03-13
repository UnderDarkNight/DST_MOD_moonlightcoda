
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

	---------------------------------------------------------------------------
	-- Asset("SOUNDPACKAGE", "sound/dontstarve_DLC002.fev"),	--- 单机声音集
	---------------------------------------------------------------------------


}

for k, v in pairs(temp_assets) do
    table.insert(Assets,v)
end

