----------------------------------------------------------------------------------------------------------------------------------
--[[



]]--
----------------------------------------------------------------------------------------------------------------------------------
    STRINGS.ACTIONS.MCODA_COM_POINT_AND_TARGET_SPELL_CASTER = STRINGS.ACTIONS.MCODA_COM_POINT_AND_TARGET_SPELL_CASTER or {
        DEFAULT = STRINGS.ACTIONS.CASTSPELL.GENERIC
    }
----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_point_and_target_spell_caster = Class(function(self, inst)
    self.inst = inst

    self.distance = 1
    self.str_index = "DEFAULT"
    self.sg = "give"
end,
nil,
{

})
---------------------------------------------------------------------------------------------------
----- 设置海洋/虚空可用  allow_action_on_impassable
    function mcoda_com_point_and_target_spell_caster:SetAllowCanCastOnImpassable(flag)
        self.inst:DoTaskInTime(0,function()
            if flag then
                self.inst:AddTag("allow_action_on_impassable")
            else
                self.inst:RemoveTag("allow_action_on_impassable")
            end
        end)
    end
---------------------------------------------------------------------------------------------------
----- 设置distance
    function mcoda_com_point_and_target_spell_caster:SetDistance(num)
        self.distance = num
    end
    function mcoda_com_point_and_target_spell_caster:GetDistance()
        return self.distance
    end
---------------------------------------------------------------------------------------------------
---- 设置优先级 priority
    function mcoda_com_point_and_target_spell_caster:SetPriority(num)
        self.priority = num
    end
    function mcoda_com_point_and_target_spell_caster:GetPriority()
        return self.priority or 0
    end
---------------------------------------------------------------------------------------------------
---- 自定义所有ACTION 参数
    function mcoda_com_point_and_target_spell_caster:SetActionParamFn(fn)
        self.action_param_fn = fn        
    end
    function mcoda_com_point_and_target_spell_caster:ActiveActionParam(theAction)
        if self.action_param_fn then
            self.action_param_fn(self.inst,theAction)
        end
    end
---------------------------------------------------------------------------------------------------
----- 设置str_index
    function mcoda_com_point_and_target_spell_caster:SetStrIndex(str_index)
        self.str_index = str_index
    end
---------------------------------------------------------------------------------------------------
----- pre action
    function mcoda_com_point_and_target_spell_caster:SetPreActionFn(fn)
        self.__pre_action_fn = fn
    end
    function mcoda_com_point_and_target_spell_caster:DoPreAction(doer,target,pt)
        if self.__pre_action_fn then
            self.__pre_action_fn(self.inst,doer,target,pt)
        end
    end
---------------------------------------------------------------------------------------------------
----- test 函数
    function mcoda_com_point_and_target_spell_caster:SetTestFn(fn)
        if type(fn) == "function" then
            self.__test_fn = fn
        end
    end
    function mcoda_com_point_and_target_spell_caster:Test(doer,target,pt,right_click)
        if self.__test_fn then
            return self.__test_fn(self.inst,doer,target,pt,right_click)
        end
        return false
    end
---------------------------------------------------------------------------------------------------
------ 设置显示文本
    function mcoda_com_point_and_target_spell_caster:SetText(index,str)
        index = string.upper(index)
        STRINGS.ACTIONS.MCODA_COM_POINT_AND_TARGET_SPELL_CASTER[index] = str
        self.str_index = index
    end
    function mcoda_com_point_and_target_spell_caster:GetTextIndex()
        return self.str_index
    end
---------------------------------------------------------------------------------------------------
------ 设置sg
    function mcoda_com_point_and_target_spell_caster:SetSGAction(sg)
        self.sg = sg
    end
    function mcoda_com_point_and_target_spell_caster:GetSGAction()
        return self.sg
    end
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
return mcoda_com_point_and_target_spell_caster







