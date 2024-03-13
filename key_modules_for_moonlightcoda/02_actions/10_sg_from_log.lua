------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- 特殊的吃东西动作 ，用 construct 改
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


AddStategraphState("wilson",State{
    name = "moonlightcoda_sg_form_log",
    tags = { "doing", "busy", "nocraftinginterrupt", "nomorph" },

    onenter = function(inst,product)

        inst.components.locomotor:Stop()

        inst.AnimState:OverrideSymbol("wood_splinter","moonlightcoda_hand_glass","wood_splinter")

        inst.AnimState:PlayAnimation("form_log_pre")
        inst.AnimState:PushAnimation("form_log", false)
        -- if product == nil or product == "log" then
        --     inst.sg.statemem.islog = true
        --     inst.AnimState:OverrideSymbol("wood_splinter", "player_wormwood", "wood_splinter")
        -- else
        --     inst.AnimState:OverrideSymbol("wood_splinter", "wormwood_skills_fx", "wood_splinter_"..product)
        -- end

        inst.sg.statemem.action = inst.bufferedaction


    end,
    timeline =
        {

			FrameEvent(0, function(inst)

			end),
			-- FrameEvent(2, function(inst)

            --     -- inst.SoundEmitter:PlaySound("dontstarve/characters/wormwood/living_log_craft")
            --     -- inst.SoundEmitter:PlaySound("turnoftides/common/together/water/hotspring/glassify")

			-- end),
			FrameEvent(2 , function(inst)

                for i = 1, 5, 1 do
                    inst:DoTaskInTime(0.22*(i-1),function()
                        inst.SoundEmitter:PlaySound("turnoftides/common/together/water/hotspring/glassify")
                    end)
                end

			end),

			FrameEvent(40, function(inst)

			end),
			FrameEvent(50, function(inst)
                inst.SoundEmitter:PlaySound("turnoftides/common/together/moon_glass/mine")
				inst:PerformBufferedAction()
			end),
			FrameEvent(58, function(inst)
				inst.sg:RemoveStateTag("busy")
			end),

        },
    events =
        {
            EventHandler("animqueueover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
			end),
        },
    onexit = function(inst)

        if inst.bufferedaction == inst.sg.statemem.action and
        (not inst.components.playercontroller or
        inst.components.playercontroller.lastheldaction ~= inst.bufferedaction) then
            inst:ClearBufferedAction()
        end

    end,
})

---------------------------------------------------------------------------------------------------------------------------------------------------------
---- 客户端上的，同 SGWilson_client.lua
local TIMEOUT = 2
AddStategraphState("wilson_client",State{
    name = "moonlightcoda_sg_form_log",
    tags = { "doing", "busy", "nocraftinginterrupt", "nomorph" },
    server_states = { "moonlightcoda_sg_form_log" },

    onenter = function(inst)
        -- if inst.components.playercontroller ~= nil then
        --     inst.components.playercontroller:Enable(false)
        -- end
        inst.components.locomotor:Stop()

        inst.AnimState:OverrideSymbol("wood_splinter","moonlightcoda_hand_glass","wood_splinter")
        inst.AnimState:PlayAnimation("form_log_pre")
        inst.AnimState:PushAnimation("form_log", false)

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