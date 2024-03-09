------------------------------------------------------------------------------------------------------------------------------------------------------
---- 角色相关的 素材文件
------------------------------------------------------------------------------------------------------------------------------------------------------

if Assets == nil then
    Assets = {}
end

local temp_assets = {


	---------------------------------------------------------------------------
        Asset( "IMAGE", "images/saveslot_portraits/moonlightcoda.tex" ), --存档图片
        Asset( "ATLAS", "images/saveslot_portraits/moonlightcoda.xml" ),

        Asset( "IMAGE", "bigportraits/moonlightcoda.tex" ), --人物大图（方形的那个）
        Asset( "ATLAS", "bigportraits/moonlightcoda.xml" ),

        Asset( "IMAGE", "bigportraits/moonlightcoda_none.tex" ),  --人物大图（椭圆的那个）
        Asset( "ATLAS", "bigportraits/moonlightcoda_none.xml" ),
        
        Asset( "IMAGE", "images/map_icons/moonlightcoda.tex" ), --小地图
        Asset( "ATLAS", "images/map_icons/moonlightcoda.xml" ),
        
        Asset( "IMAGE", "images/avatars/avatar_moonlightcoda.tex" ), --tab键人物列表显示的头像  --- 直接用小地图那张就行了
        Asset( "ATLAS", "images/avatars/avatar_moonlightcoda.xml" ),
        
        Asset( "IMAGE", "images/avatars/avatar_ghost_moonlightcoda.tex" ),--tab键人物列表显示的头像（死亡）
        Asset( "ATLAS", "images/avatars/avatar_ghost_moonlightcoda.xml" ),
        
        Asset( "IMAGE", "images/avatars/self_inspect_moonlightcoda.tex" ), --人物检查按钮的图片
        Asset( "ATLAS", "images/avatars/self_inspect_moonlightcoda.xml" ),
        
        Asset( "IMAGE", "images/names_moonlightcoda.tex" ),  --人物名字
        Asset( "ATLAS", "images/names_moonlightcoda.xml" ),
        
        Asset("ANIM", "anim/moonlightcoda.zip"),              --- 人物动画文件
        Asset("ANIM", "anim/ghost_moonlightcoda_build.zip"),  --- 灵魂状态动画文件



	---------------------------------------------------------------------------


}
-- for i = 1, 30, 1 do
--     print("fake error ++++++++++++++++++++++++++++++++++++++++")
-- end
for k, v in pairs(temp_assets) do
    table.insert(Assets,v)
end

