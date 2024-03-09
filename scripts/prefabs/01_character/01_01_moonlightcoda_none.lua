local assets =
{
	Asset( "ANIM", "anim/moonlightcoda.zip" ),
	Asset( "ANIM", "anim/ghost_moonlightcoda_build.zip" ),
}
local skin_fns = {

	-----------------------------------------------------
		CreatePrefabSkin("moonlightcoda_none",{
			base_prefab = "moonlightcoda",			---- 角色prefab
			skins = {
					normal_skin = "moonlightcoda",					--- 正常外观
					ghost_skin = "ghost_moonlightcoda_build",			--- 幽灵外观
			}, 								
			assets = assets,
			skin_tags = {"BASE" ,"moonlightcoda", "CHARACTER"},		--- 皮肤对应的tag
			
			build_name_override = "moonlightcoda",
			rarity = "Character",
		}),
	-----------------------------------------------------
	-----------------------------------------------------
		-- CreatePrefabSkin("moonlightcoda_skin_flame",{
		-- 	base_prefab = "moonlightcoda",			---- 角色prefab
		-- 	skins = {
		-- 			normal_skin = "moonlightcoda_skin_flame", 		--- 正常外观
		-- 			ghost_skin = "ghost_moonlightcoda_build",			--- 幽灵外观
		-- 	}, 								
		-- 	assets = assets,
		-- 	skin_tags = {"BASE" ,"moonlightcoda_CARL", "CHARACTER"},		--- 皮肤对应的tag
			
		-- 	build_name_override = "moonlightcoda",
		-- 	rarity = "Character",
		-- }),
	-----------------------------------------------------

}

return unpack(skin_fns)