-- if TUNING["moonlightcoda.AnimStateFn"] == nil then
--     TUNING["moonlightcoda.AnimStateFn"] = {}
-- end

-- -- TUNING["moonlightcoda.AnimStateFn"]["00_PlayAnim_PushAnim"] = function(theAnimState)

-- --     ------ 
-- --     if theAnimState.PlayAnimation_old_moonlightcoda == nil then  --- 避免重复hook        
-- --         ----------------------------------------------------------------------------------
-- --         theAnimState.PlayAnimation_old_moonlightcoda = theAnimState.PlayAnimation
-- --         theAnimState.PlayAnimation = function(self,anim_name,...)         
-- --             if self.inst and self.inst:HasTag("player") then   
-- --                 print("PlayAnimation",self.inst,anim_name)
-- --             end
-- --             self:PlayAnimation_old_moonlightcoda(anim_name,...)
-- --         end
-- --         ----------------------------------------------------------------------------------
-- --         theAnimState.PushAnimation_old_moonlightcoda = theAnimState.PushAnimation
-- --         theAnimState.PushAnimation = function(self,anim_name,...)
-- --             if self.inst and self.inst:HasTag("player") then   
-- --                 print("PushAnimation",self.inst,anim_name)
-- --             end
-- --             self:PushAnimation_old_moonlightcoda(anim_name,...)
-- --         end
-- --         ----------------------------------------------------------------------------------
-- --     end

-- -- end