if TUNING["moonlightcoda.AnimStateFn"] == nil then
    TUNING["moonlightcoda.AnimStateFn"] = {}
end

TUNING["moonlightcoda.AnimStateFn"]["01_OverrideSymbol"] = function(theAnimState)

    -- OverrideSymbol

    -- if theAnimState.OverrideSymbol__old_moonlightcoda == nil then
    --     theAnimState.OverrideSymbol__old_moonlightcoda = theAnimState.OverrideSymbol
    --     theAnimState.OverrideSymbol = function(self,layer,build,layer_new)
    --         -- print("moonlightcoda OverrideSymbol",layer,build,layer_new)
    --         self:OverrideSymbol__old_moonlightcoda(layer,build,layer_new)
    --     end
    -- end

end