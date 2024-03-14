---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 统一注册 【 images\inventoryimages 】 里的所有图标
--- 每个 xml 里面 只有一个 tex

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

if Assets == nil then
    Assets = {}
end

local files_name = {

	---------------------------------------------------------------------------------------


	---------------------------------------------------------------------------------------
	--- 02_items
		"moonlightcoda_item_moon_island_detector",						--- 月岛探测器
	---------------------------------------------------------------------------------------
	--- 06_equipment
		"moonlightcoda_equipment_teleport_staff",						--- 传送法杖
		"moonlightcoda_equipment_liturgy",								--- 月光的礼仪
		"moonlightcoda_equipment_laser_staff",							--- 月光的刺痛
		"moonlightcoda_equipment_debate",								--- 月光的议论
		"moonlightcoda_equipment_guard_from_moon",						--- 月之加护
	---------------------------------------------------------------------------------------

}

for k, name in pairs(files_name) do
    table.insert(Assets, Asset( "IMAGE", "images/inventoryimages/".. name ..".tex" ))
    table.insert(Assets, Asset( "ATLAS", "images/inventoryimages/".. name ..".xml" ))
	RegisterInventoryItemAtlas("images/inventoryimages/".. name ..".xml", name .. ".tex")
end


