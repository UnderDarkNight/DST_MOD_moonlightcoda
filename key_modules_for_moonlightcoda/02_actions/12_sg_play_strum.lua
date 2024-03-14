------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- 特殊的吃东西动作 ，用 construct 改
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


AddStategraphState("wilson",State{
        name = "moonlightcoda_sg_play_strum",
        tags = { "doing", "busy", "playing", "canrotate" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            inst.AnimState:PlayAnimation("strum_pre")
            inst.AnimState:PushAnimation("strum", false)

            -- inst.AnimState:OverrideSymbol("swap_trident", "swap_trident", "swap_trident")
        end,

        timeline =
        {
			TimeEvent(23 * FRAMES, function(inst) inst.SoundEmitter:PlaySound("hookline_2/characters/trident_attack") end),
            TimeEvent(28 * FRAMES, function(inst)
				local instrument = inst.bufferedaction ~= nil and inst.bufferedaction.invobject or nil
				if instrument ~= nil and instrument.playsound ~= nil then
					inst.SoundEmitter:PlaySound(instrument.playsound)
				end
				if not inst:PerformBufferedAction() then
					inst.sg.statemem.action_failed = true
				end
            end),
			TimeEvent(30 * FRAMES, function(inst)
				if inst.sg.statemem.action_failed then
					inst.AnimState:SetFrame(41)
				end
			end),
			TimeEvent(32 * FRAMES, function(inst)
				if inst.sg.statemem.action_failed then
					inst.sg:RemoveStateTag("busy")
				end
			end),
			TimeEvent(41 * FRAMES, function(inst)
				if not inst.sg.statemem.action_failed then
					inst.sg:RemoveStateTag("busy")
				end
			end),
        },

        events =
        {
            EventHandler("equip", function(inst) inst.sg:GoToState("idle") end),
            EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end),
            EventHandler("animqueueover", function(inst)
                if inst.AnimState:AnimDone() then
                    inst.sg:GoToState("idle")
                end
            end),
        },
})

---------------------------------------------------------------------------------------------------------------------------------------------------------
---- 客户端上的，同 SGWilson_client.lua
local TIMEOUT = 2
AddStategraphState("wilson_client",State{
    name = "moonlightcoda_sg_play_strum",
    tags = { "doing", "busy", "playing", "canrotate" },
    server_states = { "moonlightcoda_sg_play_strum" },

    onenter = function(inst)
        -- if inst.components.playercontroller ~= nil then
        --     inst.components.playercontroller:Enable(false)
        -- end
        inst.AnimState:PlayAnimation("strum_pre")
        inst.AnimState:PushAnimation("strum", false)

        inst.components.locomotor:Stop()
        inst:PerformPreviewBufferedAction()
        inst.sg:SetTimeout(TIMEOUT)
    end,

    onupdate = function(inst)
        if inst.sg:ServerStateMatches() then
            if inst.entity:FlattenMovementPrediction() then
                inst.sg:GoToState("idle", "noanim")

            end
        elseif inst.bufferedaction == nil then
            inst.sg:GoToState("idle")
        end
    end,

    ontimeout = function(inst)
        inst:ClearBufferedAction()
        inst.sg:GoToState("idle")
        if inst.components.playercontroller ~= nil then
            inst.components.playercontroller:Enable(true)
        end
    end,
})