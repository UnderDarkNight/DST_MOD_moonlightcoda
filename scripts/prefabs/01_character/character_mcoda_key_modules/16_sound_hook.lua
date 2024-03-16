--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[



]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    inst:DoTaskInTime(1,function()
        if type(inst.SoundEmitter) ~= "table" then
            return
        end



        ------------------------------------------------------------------------------
        --- addr
            local exchange_sound_addr = {
                ["dontstarve/characters/wendy/hurt"] = "moonlightcoda_sound/moonlightcoda_sound/attacked",
                ["dontstarve/characters/wendy/emote"] = "moonlightcoda_sound/moonlightcoda_sound/attacked",
                ["dontstarve/characters/wendy/death_voice"] = "moonlightcoda_sound/moonlightcoda_sound/death",
                ["dontstarve/characters/wendy/carol"] = "moonlightcoda_sound/moonlightcoda_sound/christmas_carol",
            }
        ------------------------------------------------------------------------------
        --- API hook
            local old_PlaySound_fn = inst.SoundEmitter.PlaySound
            inst.SoundEmitter.PlaySound = function(self,addr,...)
                print("sound_addr",addr)
                if exchange_sound_addr[addr] then
                    return old_PlaySound_fn(self,exchange_sound_addr[addr],...)
                end
                return old_PlaySound_fn(self,addr,...)
            end
        ------------------------------------------------------------------------------


    end)

end