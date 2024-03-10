-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    月亮阵营的生物，Combat:CanTarget(target)  进行hook


]]--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

AddComponentPostInit("combat", function(self)

    self.inst:DoTaskInTime(0,function()
        if not self.inst:HasTag("lunar_aligned") then   --- 非月亮阵营就不HOOK了
            return
        end


        local old_CanTarget_fn = self.CanTarget
        self.CanTarget = function(self,target,...)
            if target and target:HasTag("moonlightcoda") 
                and target.replica.mcoda_com_tag_sys and target.replica.mcoda_com_tag_sys:HasTag("lunar_aligned_animal_frendly") then
                return false
            end
            return old_CanTarget_fn(self, target,...)
        end



    end)
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
