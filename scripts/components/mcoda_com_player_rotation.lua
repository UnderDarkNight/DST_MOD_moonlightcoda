----------------------------------------------------------------------------------------------------------------------------------
--[[

     通用数据储存库，用来储存各种 【文本】数据

]]--
----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_player_rotation = Class(function(self, inst)
    self.inst = inst

    inst:DoTaskInTime(0,function()
        
        local function push_event(inst)
            inst:PushEvent("mcoda_com_player_rotation")
        end

        local old_ForceFacePoint = inst.ForceFacePoint
        inst.ForceFacePoint = function(self,...)
            old_ForceFacePoint(self,...)
            push_event(self)
        end

        local old_FacePoint = inst.FacePoint
        inst.FacePoint = function(self,...)
            old_FacePoint(self,...)
            push_event(self)
        end

        inst:ListenForEvent("locomote",push_event)

    end)


end,
nil,
{

})
------------------------------------------------------------------------------------------------------------------------------
return mcoda_com_player_rotation







