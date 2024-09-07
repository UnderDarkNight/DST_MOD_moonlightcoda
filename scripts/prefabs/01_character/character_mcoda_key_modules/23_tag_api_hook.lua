--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    把自己的 tag 系统扩展到官方的tag系统上

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    inst:DoTaskInTime(0,function() --- 有奇怪的 加载阻塞BUG 。推迟到0秒执行。
        local _old_has_tag_fn = inst.HasTag
        inst.HasTag = function(self, tag,...)
            local origin_ret = _old_has_tag_fn(self, tag,...)
            if not origin_ret then
                local replica_tag_com = self.replica.mcoda_com_tag_sys or self.replica._.mcoda_com_tag_sys
                if replica_tag_com and replica_tag_com:HasTag(tag) then
                    return true
                end
            end
            return origin_ret
        end
    end)
end