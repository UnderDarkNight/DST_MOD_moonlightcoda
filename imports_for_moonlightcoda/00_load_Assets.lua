
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
	-- Asset("ANIM", "anim/moonlightcoda_mutant_frog.zip"),	--- 变异青蛙贴图包
	-- Asset("ANIM", "anim/moonlightcoda_animal_frog_hound.zip"),	--- 变异青蛙狗贴图包

	---------------------------------------------------------------------------
	-- Asset("SOUNDPACKAGE", "sound/dontstarve_DLC002.fev"),	--- 单机声音集
	---------------------------------------------------------------------------


}

for k, v in pairs(temp_assets) do
    table.insert(Assets,v)
end

