return {
    ACTIONFAIL = {
        APPRAISE = {
            NOTNOW = '我需要你看一下这个，时间很紧迫！' --给牛评价 时间不对
        },
        REPAIR = {
            WRONGPIECE = '嗷，麻烦呐。我还需要点别的东西。' --化石骨架拼接错误
        },
        BUILD = {
            MOUNTED = '我要是硬够的话，肯定会肌肉拉伤。', --建造失败（骑乘状态）
            HASPET = '我已经分不出时间给更多的宠物了！', --建造失败（已经有一个宠物了）
            TICOON = '等等，我不是已经跟了一个了吗？' --暂无注释
        },
        SHAVE = {
            AWAKEBEEFALO = '我的结局不是被愤怒的皮弗娄牛用蹄子踩死，谢谢你。', --给醒着的牛刮毛
            GENERIC = '这东西没用', --刮牛毛失败
            NOBITS = '它们的毛发重新生长需要好长的时间。', --给没毛的牛刮毛
            REFUSE = 'only_used_by_woodie', --暂无注释
            SOMEONEELSESBEEFALO = '我可没时间浪费在为别人的牛剃毛上。' --给别人的牛刮毛
        },
        STORE = {
            GENERIC = '空间有限啊。', --存放东西失败
            NOTALLOWED = '我可没时间浪费在这种事情上！', --存放东西--不被允许
            INUSE = '麻烦快点，我好多事呢！', --别人正在用箱子
            NOTMASTERCHEF = '做顿好饭简直太费时间了。' --非厨师尝试往便携锅里塞东西
        },
        CONSTRUCT = {
            INUSE = '等待是如此的乏味！', --建筑正在使用
            NOTALLOWED = '这些凑不在一起。', --建筑不允许使用
            EMPTY = '我以为我已经把……啊，我一定是后来做的。', --建筑空了
            MISMATCH = '等一下……方案错误！真是浪费时间！', --升级套件错误（目前用不到）
            NOTREADY = '现在可能不是最佳时机……' --暂无注释
        },
        RUMMAGE = {
            GENERIC = '简直就是浪费我的时间。', --打开箱子失败
            INUSE = '我一会再看看。或是回到之前去看看？', --打开箱子 正在使用
            NOTMASTERCHEF = '做顿好饭简直太费时间了。' --非厨师尝试打开便携锅
        },
        UNLOCK = {
            WRONGKEY = '嗷，麻烦呐，这估计不行。' --暂无注释
        },
        USEKLAUSSACKKEY = {
            WRONGKEY = '我可以发誓之前这把就是对的钥匙……', --使用克劳斯钥匙
            KLAUS = '等我不为自己的生命而战时，我再回来管那个！' --克劳斯
        },
        ACTIVATE = {
            LOCKED_GATE = '钥匙。。', --远古钥匙
            HOSTBUSY = '呃，也许我该早点来……或者晚点再来。', --暂无注释
            CARNIVAL_HOST_HERE = '我刚刚在这不是看到良羽了吗？我发誓我看到了……', --暂无注释
            NOCARNIVAL = '就没了吗？欢乐的时光总是那么短暂。', --暂无注释
            EMPTY_CATCOONDEN = '嗷，麻烦呐！白白浪费了时间。', --暂无注释
            KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDERS = '这样游戏会很快结束，虽然我也不介意……', --暂无注释
            KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDING_SPOTS = '这里无处可藏。', --暂无注释
            KITCOON_HIDEANDSEEK_ONE_GAME_PER_DAY = '我今天已经花了足够的时间来处理这些小麻烦了。', --暂无注释
            MANNEQUIN_EQUIPSWAPFAILED = '哈，有点挑剔吗？', --暂无注释
            PILLOWFIGHT_NO_HANDPILLOW = '我不能赤手空拳的冲进去！', --暂无注释
            NOTMYBERNIE = '未找到' --暂无注释
        },
        OPEN_CRAFTING = {
            PROFESSIONALCHEF = '做顿好饭简直太费时间了。', --暂无注释
            SHADOWMAGIC = '嗯。' --暂无注释
        },
        COOK = {
            GENERIC = '现在没有时间做饭。', --做饭失败
            INUSE = '我应该早点来的。', --做饭失败-别人在用锅
            TOOFAR = '我无法企及。' --做饭失败-太远
        },
        START_CARRAT_RACE = {
            NO_RACERS = '我忘记了什么呢？哦！胡萝卜鼠！' --试图开始胡萝卜鼠比赛 但是没有放胡萝卜鼠
        },
        DISMANTLE = {
            COOKING = '我得有耐心才行……耐心点……我可以做到耐心点！', --拆便携的物品-正在做饭
            INUSE = '你能不能快一点？', --拆便携的物品-正在使用
            NOTEMPTY = '哦！我忘记检查里面有没有东西。' --拆便携的物品-里面有物品
        },
        FISH_OCEAN = {
            TOODEEP = '哈！这好比用小齿轮来做车轮一样！' --拿普通鱼竿去深海钓鱼
        },
        OCEAN_FISHING_POND = {
            WRONGGEAR = '哈！这好比用车轮来做小齿轮一样！' --拿深海鱼竿去普通的池子里钓鱼
        },
        READ = {
            GENERIC = 'only_used_by_wickerbottom', --暂无注释
            NOBIRDS = 'only_used_by_wickerbottom' --暂无注释
        },
        GIVE = {
            GENERIC = '呃，不行。不管用。', --给予失败
            DEAD = '也许要换一条时间线……', --给予 -目标死亡
            SLEEPING = '噢，你就不能快点睡吗？', --给予--目标睡觉
            BUSY = '请停止你正在做的事情，这很重要！', --给予--目标正忙
            ABIGAILHEART = '不行。', --给阿比盖尔 救赎之心
            GHOSTHEART = '哦。我弄错了，我以为你是我的一个朋友。', --给鬼魂 救赎之心
            NOTGEM = '求别闹。那不跟在手表上装钟摆一样么。', --给的不是宝石
            WRONGGEM = '我可以发誓这就是正确的宝石。', --给错了宝石
            NOTSTAFF = '你傻了。', --给月石祭坛的物品不是法杖
            MUSHROOMFARM_NEEDSSHROOM = '哎呀，差点就放进蘑菇农场里。', --蘑菇农场需要蘑菇
            MUSHROOMFARM_NEEDSLOG = '我得去弄根糟糕的木头……', --蘑菇农场需要活木
            MUSHROOMFARM_NOMOONALLOWED = '它不会在这里生长的。我不会再在这上面浪费时间了。', --蘑菇农场里放入月蘑菇
            SLOTFULL = '里面什么都放不下了。', --已经放了材料后，再给雕像桌子再给一个材料
            FOODFULL = '真走运，有人已经提前做好了食物！', --没调用
            NOTDISH = '哎呀……就是在浪费时间。', --没调用
            DUPLICATE = '这似曾相识的感觉……我们是以前做过这个？还是将来要做……', --给雕像桌子已经学习过的图纸
            NOTSCULPTABLE = '我不会再在这种材料上浪费多一秒了。', --给陶艺圆盘的东西不对
            NOTATRIUMKEY = '你在干什么。', --中庭钥匙不对
            CANTSHADOWREVIVE = '你傻了吗？', --中庭仍在CD
            WRONGSHADOWFORM = '噢，这真是个难题……', --没调用
            NOMOON = '不能。', --洞穴里建造月石科技
            PIGKINGGAME_MESSY = '不行。', --猪王旁边有建筑，不能开始抢元宝
            PIGKINGGAME_DANGER = '我才不要为了一个游戏冒生命危险！', --危险，不能开始抢元宝
            PIGKINGGAME_TOOLATE = '天要黑了。不然下次吧。', --不是白天，不能开始抢元宝
            CARNIVALGAME_INVALID_ITEM = '它需要一个能装进这个小槽的东西……', --暂无注释
            CARNIVALGAME_ALREADY_PLAYING = '我以后再来就好。或者回到从前。', --暂无注释
            SPIDERNOHAT = '虽然听起来有点怪，可是我口袋里确实放不下了。', --暂无注释
            TERRARIUM_REFUSE = '不知道这个世界的魔法会对它产生什么影响？', --暂无注释
            TERRARIUM_COOLDOWN = '还没好？麻烦呐，即使是小树也要花很长时间才能长成！', --暂无注释
            NOTAMONKEY = '怪了。', --暂无注释
            QUEENBUSY = '我不在乎她的头衔是什么，那不是让我一直等的借口！' --暂无注释
        },
        GIVETOPLAYER = {
            FULL = '你想要的话，最好先丢点东西。', --给玩家一个东西 -但是背包满了
            DEAD = '不对，我顺序搞错了！', --给死亡的玩家一个东西
            SLEEPING = '你还能睡得再快点吗？', --给睡觉的玩家一个东西
            BUSY = '我可没时间干等着！' --给忙碌的玩家一个东西
        },
        GIVEALLTOPLAYER = {
            FULL = '你想要的话，最好先丢点东西。', --给人一组东西 但是背包满了
            DEAD = '不对，我顺序搞错了！', --给于死去的玩家一组物品
            SLEEPING = '你还能睡得再快点吗？', --给于正在睡觉的玩家一组物品
            BUSY = '我可没时间干等着！' --给于正在忙碌的玩家一组物品
        },
        WRITE = {
            GENERIC = '我可没时间浪费在那种事情上。', --写字失败
            INUSE = '你是在写小说吗？这么长时间干什么呢？' --写字 正在使用中
        },
        DRAW = {
            NOIMAGE = '嗯。我不太记得它什么样了……' --画图缺乏图像
        },
        CHANGEIN = {
            GENERIC = '现在不是时候。', --换装失败
            BURNING = '我不会为了换件衣服被烧死，谢谢你！', --换装失败-着火了
            INUSE = '你在里面能不能快点？', --衣橱有人占用
            NOTENOUGHHAIR = '哎呀麻烦了，它头发还没长足。', --给牛换装 牛毛被刮光了
            NOOCCUPANT = '我以为我已经……可能是在另一条时间线里吧。' --给牛换装 没牛？
        },
        ATTUNE = {
            NOHEALTH = '不行啊!' --制造肉雕像血量不足
        },
        MOUNT = {
            TARGETINCOMBAT = '不行。', --骑乘，牛正在战斗
            INUSE = '嗷，麻烦呐。我本来想用那个的，知道吧！', --骑乘（牛被占据）
            SLEEPING = '醒醒吧！还有地方要去，有事情要做！' --暂无注释
        },
        SADDLE = {
            TARGETINCOMBAT = '我虽然赶时间，但也没那么赶时间。' --给战斗状态的牛上鞍
        },
        TEACH = {
            KNOWN = '对对，那个我知道。', --学习已经知道的蓝图
            CANTLEARN = '我就是无法理解这个问题……', --学习无法学习的蓝图
            WRONGWORLD = '我在正确的时间来到了错误的地点。', --学习另外一个世界的地图
            MESSAGEBOTTLEMANAGER_NOT_FOUND = '这里太黑了……伸手不见五指。',
             --Likely trying to read messagebottle treasure map in caves		--在地下使用漂流瓶
            STASH_MAP_NOT_FOUND = '这瞎画些什么啊？附近的岛屿没有这个形状的。'
         -- Likely trying to read stash map  in world without stash                  		--暂无注释
        },
        WRAPBUNDLE = {
            EMPTY = '我顺序搞错了，需要先找到能捆的东西。' --打包纸是空的
        },
        PICKUP = {
            RESTRICTION = '这有点超出我的专业领域。', --熔炉模式下捡起错误的武器
            INUSE = '麻烦快点，我急着要！', --捡起已经打开的容器
            NOTMINE_YOTC = {
                '等一下……我记得我的胡萝卜鼠不是长这样的。', --捡起别人的胡萝卜鼠
                '嗷，麻烦呐，我大概是拿错了胡萝卜鼠。' --捡起别人的胡萝卜鼠
            },
            NO_HEAVY_LIFTING = '我要是稍微再小几岁……应该就行了。', --暂无注释
            FULL_OF_CURSES = '这次它骗不了我。' --暂无注释
        },
        SLAUGHTER = {
            TOOFAR = '姑且让它再苟活一天。' --屠杀？？ 因为太远而失败
        },
        REPLATE = {
            MISMATCH = '这个不对！', --暴食-换盘子换错了 比如用碗换碟子
            SAMEDISH = '我不需要两个相同的盘子。' --暴食-换盘子已经换了
        },
        SAIL = {
            REPAIR = '不需要任何修理。' --修复帆？？？ 没调用
        },
        ROW_FAIL = {
            BAD_TIMING0 = '必须准确把握时机！', --划船失败 第1次
            BAD_TIMING1 = '不！我在失速！', --划船失败 第2次
            BAD_TIMING2 = '我以为我能更好地把握时机……' --划船失败 第3次
        },
        LOWER_SAIL_FAIL = {
            '嗷，麻烦呐！！', --降帆失败
            '为什么帆不听我话乖乖下降？', --降帆失败
            '啊！我好像扭到背了！' --降帆失败
        },
        BATHBOMB = {
            GLASSED = '也许换条时间线是可以的。', --月岛池子 里面已经有玻璃了
            ALREADY_BOMBED = '太好玩了！' --月岛池子 已经有人放进去沐浴球了
        },
        GIVE_TACKLESKETCH = {
            DUPLICATE = '我很确定以前见过。或者是很快就会见到它？' --给陶盘已经有的图纸
        },
        COMPARE_WEIGHABLE = {
            FISH_TOO_SMALL = '它太小了，无法测量。', --鱼秤 手上的没鱼缸里的大
            OVERSIZEDVEGGIES_TOO_SMALL = '太小了。不该这么早就摘下来的……' --蔬菜秤 手上的没秤上的大
        },
        BEGIN_QUEST = {
            ONEGHOST = 'only_used_by_wendy' --度化灵魂 温蒂
        },
        TELLSTORY = {
            GENERIC = 'only_used_by_walter', --讲故事 沃比
            NOT_NIGHT = 'only_used_by_walter', --暂无注释
            NO_FIRE = 'only_used_by_walter' --暂无注释
        },
        SING_FAIL = {
            SAMESONG = 'only_used_by_wathgrithr' --暂无注释
        },
        PLANTREGISTRY_RESEARCH_FAIL = {
            GENERIC = '这不是我第一次看到它。', --研究作物失败
            FERTILIZER = '说实话，我在犹豫要不要回到过去，把我这方面的知识通通抹掉。' --研究肥料失败
        },
        FILL_OCEAN = {
            UNSUITABLE_FOR_PLANTS = '哎呦，差点给植物浇了海水！' --水壶在海里灌水
        },
        POUR_WATER = {
            OUT_OF_WATER = '我不是刚把这个装满了吗？园艺是如此乏味……' --水壶空了
        },
        POUR_WATER_GROUNDTILE = {
            OUT_OF_WATER = '我不是刚把这个装满了吗？园艺是如此乏味……' --水壶空了
        },
        USEITEMON = {
            BEEF_BELL_INVALID_TARGET = '啊，那个不是……这下尴尬了。', --对无效目标使用牛铃铛
            BEEF_BELL_ALREADY_USED = '看来这回我们注定不能成为伙伴。', --对已有主人的牛使用牛铃铛
            BEEF_BELL_HAS_BEEF_ALREADY = '我没有时间照顾所有的皮弗娄牛！' --已有牛 使用牛铃铛
        },
        HITCHUP = {
            NEEDBEEF = '我忘记了什么？似乎想起点什么了……', --将牛拴起来 没有牛
            NEEDBEEF_CLOSER = '来，小跑几步过来。', --将牛拴起来 牛太远
            BEEF_HITCHED = '等等，我已经这样做过了！', --将牛拴起来 牛已经被拴起来了
            INMOOD = '我没有耐心去对付一只脾气暴躁的皮弗娄牛。' --将牛拴起来 牛在发情
        },
        MARK = {
            ALREADY_MARKED = '我已经选了这个吗？嗯，我肯定选过。', --选择牛 已经选择了
            NOT_PARTICIPANT = '我要不一会儿再参加，要不去之前参加。' --选择牛 不是参与者（已经开始了）?
        },
        YOTB_STARTCONTEST = {
            DOESNTWORK = '好吧，如果他不打算开始比赛，我就不在这里等了。', --牛年活动 NPC不在工作
            ALREADYACTIVE = '好像没人在这。' --牛年活动 NPC已经激活
        },
        YOTB_UNLOCKSKIN = {
            ALREADYKNOWN = '我确信我以前见过这个。' --牛年活动 解锁已知皮肤
        },
        CARNIVALGAME_FEED = {
            TOO_LATE = '来呀，你们不是最爱吃虫子吗？' --暂无注释
        },
        HERD_FOLLOWERS = {
            WEBBERONLY = '它们没有兴趣听我说话，而我对它们也没有兴趣。' --暂无注释
        },
        BEDAZZLE = {},
        UPGRADE = {},
        CAST_POCKETWATCH = {
            GENERIC = '那样风险太大了。', --暂无注释
            REVIVE_FAILED = '看来我来晚了……', --暂无注释
            WARP_NO_POINTS_LEFT = '暂时先不走回头路了。', --暂无注释
            SHARD_UNAVAILABLE = '时间流有太多的摇摆不定。' --暂无注释
        },
        DISMANTLE_POCKETWATCH = {
            ONCOOLDOWN = '它需要一点时间来松发条。' --暂无注释
        },
        ENTER_GYM = {},
        APPLYMODULE = {
            COOLDOWN = 'only_used_by_wx78', --暂无注释
            NOTENOUGHSLOTS = 'only_used_by_wx78' --暂无注释
        },
        REMOVEMODULES = {
            NO_MODULES = 'only_used_by_wx78' --暂无注释
        },
        CHARGE_FROM = {
            NOT_ENOUGH_CHARGE = 'only_used_by_wx78', --暂无注释
            CHARGE_FULL = 'only_used_by_wx78' --暂无注释
        },
        HARVEST = {
            DOER_ISNT_MODULE_OWNER = '那好吧，你就接着保守自己的秘密吧！' --暂无注释
        },
        CAST_SPELLBOOK = {},
        CASTAOE = {
            NOT_ENOUGH_EMBERS = 'only_used_by_willow', --暂无注释
            NO_TARGETS = 'only_used_by_willow', --暂无注释
            CANT_SPELL_MOUNTED = 'only_used_by_willow', --暂无注释
            SPELL_ON_COOLDOWN = 'only_used_by_willow' --暂无注释
        }
    },
    ANNOUNCE_CANNOT_BUILD = {
        NO_INGREDIENTS = '得先去找点东西。', --暂无注释
        NO_TECH = '还没有完全搞清楚这个。', --暂无注释
        NO_STATION = '没有适当的工作站。' --暂无注释
    },
    ACTIONFAIL_GENERIC = '这条时间线里不行。', --动作失败
    ANNOUNCE_BOAT_LEAK = '哦，不，不，不！船在进水！！', --船撞了个洞
    ANNOUNCE_BOAT_SINK = '不，等等！我需要更多的时间！！', --船漏水
    ANNOUNCE_DIG_DISEASE_WARNING = '它看起来已经好多了。', --removed		--挖起生病的植物
    ANNOUNCE_PICK_DISEASE_WARNING = '嗯啊，本来就是那味道吗？', --removed		--（植物生病）
    ANNOUNCE_ADVENTUREFAIL = '如果一开始你没有成功，就扭转时间再试一次。', --没调用（废案）
    ANNOUNCE_MOUNT_LOWHEALTH = '我认为它在这个世界的时间几近结束。', --牛血量过低
    ANNOUNCE_NORMALTOMIGHTY = 'only_used_by_wolfang', --暂无注释
    ANNOUNCE_NORMALTOWIMPY = 'only_used_by_wolfang', --暂无注释
    ANNOUNCE_WIMPYTONORMAL = 'only_used_by_wolfang', --暂无注释
    ANNOUNCE_MIGHTYTONORMAL = 'only_used_by_wolfang', --暂无注释
    ANNOUNCE_EXITGYM = {},
    ANNOUNCE_BEES = '嗷，麻烦呐。这些蜜蜂嗡嗡的烦死人了！', --戴养蜂帽被蜜蜂蛰
    ANNOUNCE_BOOMERANG = '有去就有回。', --回旋镖
    ANNOUNCE_CHARLIE = '滚', --查理即将攻击
    ANNOUNCE_CHARLIE_ATTACK = '你为什么不准备灯。', --被查理攻击
    ANNOUNCE_CHARLIE_MISSED = 'only_used_by_winona', --winona specific		--暂无注释
    ANNOUNCE_COLD = '咳咳……什么时候变这么冷的？', --过冷
    ANNOUNCE_HOT = '我得离开这个炎热的地方……', --过热
    ANNOUNCE_CRAFTING_FAIL = '嗷，麻烦呐。我是不是又丢三落四了？', --没调用
    ANNOUNCE_DEERCLOPS = '嗷，麻烦呐。又到了那个季节了吗？', --boss来袭
    ANNOUNCE_CAVEIN = '哎呀呀！天要塌了！', --要地震了？？？
    ANNOUNCE_ANTLION_SINKHOLE = {
        '烦人！', --蚁狮地震
        '别麻烦我？', --蚁狮地震
        '有东西在挪动！' --蚁狮地震
    },
    ANNOUNCE_ANTLION_TRIBUTE = {
        '给你，拿着这个，别再烦我了！', --向蚁狮致敬
        '这个你收下，我就走了。', --给蚁狮上供
        '该走了。' --给蚁狮上供
    },
    ANNOUNCE_SACREDCHEST_YES = '我知道我可以把它解出来！', --远古宝箱物品正确给出蓝图
    ANNOUNCE_SACREDCHEST_NO = '这一切都只是在浪费时间！', --远古宝箱
    ANNOUNCE_DUSK = '黄昏了。', --进入黄昏
    ANNOUNCE_CHARGE = 'only_used_by_wx78', --暂无注释
    ANNOUNCE_DISCHARGE = 'only_used_by_wx78', --暂无注释
    ANNOUNCE_EAT = {
        GENERIC = '唔！', --吃东西
        PAINFUL = '哦，我感觉不太好……', --吃怪物肉
        SPOILED = '我能不能去到过去再吃那个？', --吃腐烂食物
        STALE = '那个时间好像有点长了。', --吃黄色食物
        INVALID = '我不要吃这个！', --拒吃
        YUCKY = '虽然可能事关生死，但我还是有些原则的。', --吃红色食物
        COOKED = 'only_used_by_warly', --暂无注释
        DRIED = 'only_used_by_warly', --暂无注释
        PREPARED = 'only_used_by_warly', --暂无注释
        RAW = 'only_used_by_warly', --暂无注释
        SAME_OLD_1 = 'only_used_by_warly', --暂无注释
        SAME_OLD_2 = 'only_used_by_warly', --暂无注释
        SAME_OLD_3 = 'only_used_by_warly', --暂无注释
        SAME_OLD_4 = 'only_used_by_warly', --暂无注释
        SAME_OLD_5 = 'only_used_by_warly', --暂无注释
        TASTY = 'only_used_by_warly' --暂无注释
    },
    ANNOUNCE_FOODMEMORY = 'only_used_by_warly', --暂无注释
    ANNOUNCE_ENCUMBERED = {
        '你是真的急了……', --搬运雕像、可疑的大理石
        '我这个年纪……已经不适合这样了……', --搬运雕像、可疑的大理石
        '啊呀……呼……', --搬运雕像、可疑的大理石
        '我一般……处理一些小型的东西……', --搬运雕像、可疑的大理石
        '啊呀喝！', --搬运雕像、可疑的大理石
        '得了！我还有……事情要做！', --搬运雕像、可疑的大理石
        '对……咱们就让我……干重活呗！', --搬运雕像、可疑的大理石
        '我可别……扭伤了……', --搬运雕像、可疑的大理石
        '为什么不开一个作弊呀……' --搬运雕像、可疑的大理石
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = {
        '又一次！', --中庭击杀boss后即将刷新
        '该走了！', --中庭震动
        '你该走了！' --中庭击杀boss后即将刷新
    },
    ANNOUNCE_RUINS_RESET = '我感觉到了时空的晃动……这条时间线的一部分刚刚重设了！', --地下重置
    ANNOUNCE_SNARED = '滚啊', --远古嘤嘤怪的骨笼
    ANNOUNCE_SNARED_IVY = '嗷！哦，我从来不喜欢园艺……', --被针刺旋花攻击
    ANNOUNCE_REPELLED = '我过不去！', --嘤嘤怪保护状态
    ANNOUNCE_ENTER_DARK = '你能不能看着点走路？', --进入黑暗
    ANNOUNCE_ENTER_LIGHT = '这下对了……', --进入光源
    ANNOUNCE_FREEDOM = '我——我自由了……我还活着……哈哈！哈哈哈！哈哈哈！哈哈哈！哈哈哈哈！！！', --没调用（废案）
    ANNOUNCE_HIGHRESEARCH = '它让我脑袋里面的齿轮转动起来了！', --没调用（废案）
    ANNOUNCE_HOUNDS = '等下……你听到什么东西没有？', --猎犬将至
    ANNOUNCE_WORMS = '那隆隆声感觉……很不祥。', --蠕虫袭击
    ANNOUNCE_HUNGRY = '我多久没吃过东西了？', --饥饿
    ANNOUNCE_HUNT_BEAST_NEARBY = '刚才一定有动物经过这里。', --即将找到野兽
    ANNOUNCE_HUNT_LOST_TRAIL = '跟丢了。也许我应该回头再找找。', --猎物（大象脚印丢失）
    ANNOUNCE_HUNT_LOST_TRAIL_SPRING = '所有的东西都太潮湿了，我不会在这上面浪费时间。', --大猎物丢失踪迹
    ANNOUNCE_HUNT_START_FORK = '我应该不会喜欢将在这条踪迹尽头发现的东西……', --暂无注释
    ANNOUNCE_HUNT_SUCCESSFUL_FORK = '这回它逃不掉了！', --暂无注释
    ANNOUNCE_HUNT_WRONG_FORK = '谁在外面？！有东西在看着我，我准没说错！', --暂无注释
    ANNOUNCE_HUNT_AVOID_FORK = '这条踪迹好像没那么危险。', --暂无注释
    ANNOUNCE_INV_FULL = '我必须以后再来找它。或者去以前。', --身上的物品满了
    ANNOUNCE_KNOCKEDOUT = '我失去了多少时间？！', --被催眠
    ANNOUNCE_LOWRESEARCH = '我学了点东西，但不多。', --没调用（废案）
    ANNOUNCE_MOSQUITOS = '当然，这里会有蚊子。', --没调用
    ANNOUNCE_NOWARDROBEONFIRE = '我不会为了换件衣服被烧死，谢谢你！', --橱柜着火
    ANNOUNCE_NODANGERGIFT = '还惦记你那礼物呢！', --周围有危险的情况下打开礼物
    ANNOUNCE_NOMOUNTEDGIFT = '让我先快速跳下我的皮弗娄牛。', --骑牛的时候打开礼物
    ANNOUNCE_NODANGERSLEEP = '你不能睡觉因为周围有后面忘了', --危险，不能睡觉
    ANNOUNCE_NODAYSLEEP = '阳光照耀着我的眼睛……', --白天睡帐篷
    ANNOUNCE_NODAYSLEEP_CAVE = '我现在没有时间浪费在睡觉上。', --洞穴里白天睡帐篷
    ANNOUNCE_NOHUNGERSLEEP = '我需要先找点吃的，快点。', --饿了无法睡觉
    ANNOUNCE_NOSLEEPONFIRE = '当我要被活活烤死的时候可能很难入睡。', --营帐着火无法睡觉
    ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = '麻烦呐……那个机器人把周围照的太亮，根本没法睡。', --暂无注释
    ANNOUNCE_NODANGERSIESTA = '目前有更多重要的事情需要担心！', --危险，不能午睡
    ANNOUNCE_NONIGHTSIESTA = '现在不是午睡的时候。', --夜晚睡凉棚
    ANNOUNCE_NONIGHTSIESTA_CAVE = '等我到了地面上安全的地方，再休息也不迟……', --在洞穴里夜晚睡凉棚
    ANNOUNCE_NOHUNGERSIESTA = '我不能休息! 我需要找点东西吃，快！', --饱度不足无法午睡
    ANNOUNCE_NO_TRAP = '够容易的。', --没有陷阱？？？没调用
    ANNOUNCE_PECKED = '好吧，我去，我去！', --被小高鸟啄
    ANNOUNCE_QUAKE = '地面！', --地震
    ANNOUNCE_RESEARCH = '我是一个快速学习者。', --没调用
    ANNOUNCE_SHELTER = '也行。', --下雨天躲树下
    ANNOUNCE_THORNS = '呀！我身上扎进一根刺！', --玫瑰、仙人掌、荆棘扎手
    ANNOUNCE_BURNT = '几乎被烧成了焦炭！', --烧完了
    ANNOUNCE_TORCH_OUT = '得赶紧再找一个！', --火把用完了
    ANNOUNCE_THURIBLE_OUT = '它已经走完了它的路。', --香炉燃尽
    ANNOUNCE_FAN_OUT = '风扇时间已经过去了。', --小风车停了
    ANNOUNCE_COMPASS_OUT = '真搞不懂这么简单的机械结构怎么会坏，可是……', --指南针用完了
    ANNOUNCE_TRAP_WENT_OFF = '咳！不应该发生这种事！', --触发陷阱（例如冬季陷阱）
    ANNOUNCE_UNIMPLEMENTED = '我认为它不属于这条时间线。', --没调用
    ANNOUNCE_WORMHOLE = '我不能相信我刚刚居然那么做了……', --跳虫洞
    ANNOUNCE_TOWNPORTALTELEPORT = '我跳跃过多少时间和空间，这种事情早就司空见惯了。', --豪华传送
    ANNOUNCE_CANFIX = '修这个应该很容易！', --墙壁可以修理
    ANNOUNCE_ACCOMPLISHMENT = '哈！成功！', --没调用
    ANNOUNCE_ACCOMPLISHMENT_DONE = '我应该已经完成了所需的一切。', --没调用
    ANNOUNCE_INSUFFICIENTFERTILIZER = '嗯，我有没有记得给它施肥？', --土地肥力不足
    ANNOUNCE_TOOL_SLIP = '我平时不会丢三落四。', --工具滑出
    ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = '我差点就被雷劈到！', --规避闪电
    ANNOUNCE_TOADESCAPING = '也许我应该由它去吧。', --蟾蜍正在逃跑
    ANNOUNCE_TOADESCAPED = '总算没了。', --蟾蜍逃走了
    ANNOUNCE_DAMP = '一点水而已，不用担心。', --潮湿（1级）
    ANNOUNCE_WET = '这里的天气越来越潮湿，令人不舒服。', --潮湿（2级）
    ANNOUNCE_WETTER = '太潮了。', --潮湿（3级）
    ANNOUNCE_SOAKED = '赶紧擦干，难受死了！', --潮湿（4级）
    ANNOUNCE_WASHED_ASHORE = '我——我想我最近不会再上船了。', --落水被冲上岸
    ANNOUNCE_DESPAWN = '等等，停下！我还需要时间——！', --下线
    ANNOUNCE_BECOMEGHOST = '呵呵呵呵呵呵！', --变成鬼魂
    ANNOUNCE_GHOSTDRAIN = '别闹了！', --队友死亡掉san
    ANNOUNCE_PETRIFED_TREES = '是什么可怕的声音？它是从树上传来的吗？', --石化树
    ANNOUNCE_KLAUS_ENRAGE = '我该离开了！', --克劳斯被激怒（杀死了鹿）
    ANNOUNCE_KLAUS_UNCHAINED = '这不可能是好事……', --克劳斯-未上锁的  猜测是死亡准备变身？
    ANNOUNCE_KLAUS_CALLFORHELP = '这样的人怎么会有朋友帮忙？', --克劳斯召唤小偷
    ANNOUNCE_MOONALTAR_MINE = {
        GLASS_MED = '时候到了。', --月岛科技三个部分被挖开
        GLASS_LOW = '快了。', --月岛科技三个部分被挖开
        GLASS_REVEAL = '终于。', --月岛科技三个部分被挖开
        IDOL_MED = '时候到了。', --月岛科技三个部分被挖开
        IDOL_LOW = '快了。', --月岛科技三个部分被挖开
        IDOL_REVEAL = '终于。', --月岛科技三个部分被挖开
        SEED_MED = '时候到了。', --月岛科技三个部分被挖开
        SEED_LOW = '快了。', --月岛科技三个部分被挖开
        SEED_REVEAL = '终于。' --月岛科技三个部分被挖开
    },
    ANNOUNCE_SPOOKED = '呀！别烦我！', --被吓到
    ANNOUNCE_BRAVERY_POTION = '行。', --勇气药剂
    ANNOUNCE_MOONPOTION_FAILED = '哎，并没有像我希望的那样成功。', --万圣节月亮药水 对不能变化的物品使用
    ANNOUNCE_EATING_NOT_FEASTING = '也许我该分给其他人一些……', --冬季盛宴的植物 单人吃（但是没调用）
    ANNOUNCE_WINTERS_FEAST_BUFF = '这种兴奋情绪非常有感染力！', --冬季盛宴食物buff开始
    ANNOUNCE_IS_FEASTING = '我想每隔一段时间放慢脚步是很好的。', --冬季盛宴 大家一起吃
    ANNOUNCE_WINTERS_FEAST_BUFF_OVER = '这很有趣……也许我什么时候会回去重新体验一下。', --冬季盛宴食物buff结束
    ANNOUNCE_REVIVING_CORPSE = '有我在，绝不允许这种情况发生！！', --没调用（熔炉）
    ANNOUNCE_REVIVED_OTHER_CORPSE = '呜……还好我及时赶到。', --没调用（熔炉）
    ANNOUNCE_REVIVED_FROM_CORPSE = '有那么一刻，我以为我已经完蛋了……', --没调用（熔炉）
    ANNOUNCE_FLARE_SEEN = '那是一个信号弹吗？我最好赶快去看看发生了什么事！', --看见信号弹
    ANNOUNCE_MEGA_FLARE_SEEN = '这是在做什么？！那个信号弹会把所有的东西都吸引过去！', --暂无注释
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = '我不喜欢那影子的样子……', --深海 轮廓？ 没调用
    ANNOUNCE_WX_SCANNER_NEW_FOUND = 'only_used_by_wx78', --暂无注释
    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK = '我从来没这么有精神过！', --获得电击buff
    ANNOUNCE_ATTACH_BUFF_ATTACK = '我想出拳！', --获得攻击加强的buff(目前是指辣椒粉料理)
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION = '很奇怪，我突然觉得更有安全感了。', --获得防御加强的buff(目前是指大蒜粉料理)
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = '这才像话啊！我很快就能完成所有的工作了！', --获得工作效率加强的buff(目前是指蜂蜜粉料理)
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY = '我觉得我完全防水了。', --获得潮湿免疫的buff(目前是指蓝带鱼排)
    ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE = '我终于不用浪费时间睡觉了！', --获得睡眠减缓的buff(目前是指月蘑菇料理)
    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK = '我会怀念指尖带电的日子。', --失去电击buff
    ANNOUNCE_DETACH_BUFF_ATTACK = '呼，我也不知道我是怎么了……', --失去攻击加强的buff(目前是指辣椒粉料理)
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION = '我突然觉得有点不受保护……', --失去防御加强的buff(目前是指大蒜粉料理)
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = '不！我现在不能慢下来！', --失去工作效率加强的buff(目前是指蜂蜜粉料理)
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY = '嗷，麻烦呐。我刚刚才适应了防水的能力。', --失去潮湿免疫的buff(目前是指蓝带鱼排)
    ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE = '还是躲不开要睡觉的命运啊。', --失去睡眠减缓的buff(目前是指月蘑菇料理)
    ANNOUNCE_OCEANFISHING_LINESNAP = '不！我差一点就钓上来了！', --海钓 线崩断了
    ANNOUNCE_OCEANFISHING_LINETOOLOOSE = '我得把线绷紧喽。', --海钓失败 渔具丢失
    ANNOUNCE_OCEANFISHING_GOTAWAY = '我回上次抓住你！呃，下次也行！', --海钓 鱼跑远了
    ANNOUNCE_OCEANFISHING_BADCAST = '也许我应该回去再试一次……', --海钓 抛竿扔地面上去了
    ANNOUNCE_OCEANFISHING_IDLE_QUOTE = {
        '鱼不上钩，我为什么在这里浪费时间？', --海钓 没上钩的时候闲聊
        '难道鱼就不能有礼貌地让自己快点被抓住吗？', --海钓 没上钩的时候闲聊
        '我真的有时间浪费在这上面吗？', --海钓 没上钩的时候闲聊
        '也许我应该晚点再去钓鱼。或者早点。' --海钓 没上钩的时候闲聊
    },
    ANNOUNCE_WEIGHT = '重量：{weight}', --称重
    ANNOUNCE_WEIGHT_HEAVY = '重量：{weight}\n哈！我怎么这么能行！', --称重 大鱼
    ANNOUNCE_WINCH_CLAW_MISS = '嗷，麻烦呐。那我们再试一次吧。', --绞绞吸盘 没命中
    ANNOUNCE_WINCH_CLAW_NO_ITEM = '我白白浪费了我的宝贵时间。', --绞绞吸盘 没东西
    ANNOUNCE_READ_BOOK = {},
    ANNOUNCE_WEAK_RAT = '可怜的家伙，我想它已经变质了。', --试图训练快饿死的胡萝卜鼠
    ANNOUNCE_CARRAT_START_RACE = '听我号令，三，一，二——冲！', --胡萝卜鼠开始比赛
    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        '完了……我方向感差也影响到它了。', --胡萝卜鼠比赛 跑错方向
        '走错了，回头！' --胡萝卜鼠比赛 跑错方向
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = '哪有时间睡觉！', --起床了，蠢胡萝卜鼠！
    ANNOUNCE_CARRAT_ERROR_WALKING = '我怎么遇上一只这么慢的胡萝卜鼠？', --胡萝卜鼠比赛 走的慢
    ANNOUNCE_CARRAT_ERROR_STUNNED = '现在可不是呆站着的时候！', --胡萝卜鼠比赛 惊呆了
    ANNOUNCE_ABIGAIL_SUMMON = {},
    ANNOUNCE_GHOSTLYBOND_LEVELUP = {},
    ANNOUNCE_WANDA_YOUNGTONORMAL = '没关系，我还有时间……', --暂无注释
    ANNOUNCE_WANDA_NORMALTOOLD = '我已经没有多少时间了！', --暂无注释
    ANNOUNCE_WANDA_OLDTONORMAL = '永远也抓不到我！', --暂无注释
    ANNOUNCE_WANDA_NORMALTOYOUNG = '哈！再次充满了青春的活力！', --暂无注释
    ANNOUNCE_POCKETWATCH_PORTAL = '我们到了！不要惊慌，有点晕车的感觉是完全正常的。', --暂无注释
    ANNOUNCE_POCKETWATCH_MARK = '这里当锚点很不错。', --暂无注释
    ANNOUNCE_POCKETWATCH_RECALL = '没有什么能比时空旅行更让这颗老心脏砰砰狂跳了！', --暂无注释
    ANNOUNCE_POCKETWATCH_OPEN_PORTAL = '好了，大家动作快点！', --暂无注释
    ANNOUNCE_POCKETWATCH_OPEN_PORTAL_DIFFERENTSHARD = '当心了，这一跳非同小可！', --暂无注释
    ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = '是时候了。', --地下月岛遗迹 解锁新知识
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = '这个我知道。或者说我一会儿就会知道。', --地下月岛遗迹 解锁旧知识
    ANNOUNCE_ARCHIVE_NO_POWER = '这地方就像没上发条的钟一样。', --地下月岛遗迹 没能量
    ANNOUNCE_PLANT_RESEARCHED = {
        '我学到了一些新东西！或者至少记起了一些我忘记的东西……' --研究植物
    },
    ANNOUNCE_PLANT_RANDOMSEED = '我想知道会长出什么？也许我应该跳到前面去偷看一下……', --种下随机种子
    ANNOUNCE_FERTILIZER_RESEARCHED = '这些肥料的知识我这辈子都够用了。', --研究肥料
    ANNOUNCE_FIRENETTLE_TOXIN = {
        '喔，我身体不舒服啊……', --烈火荨麻 buff开始
        '救命啊！我中毒了！' --烈火荨麻 buff开始
    },
    ANNOUNCE_FIRENETTLE_TOXIN_DONE = '嗨……看起来那些症状只是暂时的。', --烈火荨麻 buff结束
    ANNOUNCE_TALK_TO_PLANTS = {
        '我不能浪费时间与植物交谈！', --和植物聊天
        '我真的不知道该说些什么……', --和植物聊天
        '呃……能不能求你长快点？', --和植物聊天
        '我可没时间浪费在这个上！', --和植物聊天
        '也许我可以把速度加快一点……你不介意吧？' --和植物聊天
    },
    ANNOUNCE_KITCOON_HIDEANDSEEK_START = '好吧，快去吧，咱们麻利点。', --暂无注释
    ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = '也许可以玩一局快速的游戏……', --暂无注释
    ANNOUNCE_KITCOON_HIDANDSEEK_FOUND = {
        '终于好了！', --暂无注释
        '总算找到你了。', --暂无注释
        '原来你一直都藏在这里啊！', --暂无注释
        '我知道你不可能永远躲起来。' --暂无注释
    },
    ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = '我似乎记得还有一个要找……', --暂无注释
    ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = '这必须是最后一个。', --暂无注释
    ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = '好了，{name}总算找到了最后一个。', --暂无注释
    ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = '要快点，我们的时间快到了！', --暂无注释
    ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = '嗷，麻烦呐。我还是不够快啊。', --暂无注释
    ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = '他们肯定不会大老远跑到这里来吧？', --暂无注释
    ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = '是的，看起来很熟悉，我肯定会在这里找到它们的！', --暂无注释
    ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = '我早就想到能在这找到了！', --暂无注释
    ANNOUNCE_TICOON_START_TRACKING = '他急着要冲去一个地方。', --暂无注释
    ANNOUNCE_TICOON_NOTHING_TO_TRACK = '似乎没有什么能引起它的注意。', --暂无注释
    ANNOUNCE_TICOON_WAITING_FOR_LEADER = '你在等我吗？真是个奇怪的转折。', --暂无注释
    ANNOUNCE_TICOON_GET_LEADER_ATTENTION = '好的，好的，我来了！', --暂无注释
    ANNOUNCE_TICOON_NEAR_KITCOON = '我刚才听到了沙沙的声音吗？也许它就在附近……', --暂无注释
    ANNOUNCE_TICOON_LOST_KITCOON = '嗷，麻烦呐。我还是不够快啊。', --暂无注释
    ANNOUNCE_TICOON_ABANDONED = '我都跟你一天了，差不多得了。', --暂无注释
    ANNOUNCE_TICOON_DEAD = '他的时间骤然停止……我的时间也浪费了！', --暂无注释
    ANNOUNCE_CALL_BEEF = '这里！', --把牛拴好
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = '把它放在离裁判席更近的地方会更有效率。', --建造牛舞台 离裁判太远
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN = '新东西，多么令人激动啊！', --牛年活动 学到了新组件
    ANNOUNCE_EYEOFTERROR_ARRIVE = '我感到一阵寒意，是不是有人没关维度门？', --暂无注释
    ANNOUNCE_EYEOFTERROR_FLYBACK = '好，是时候了！', --暂无注释
    ANNOUNCE_EYEOFTERROR_FLYAWAY = '看来要等到日落后才能结束这场争吵。', --暂无注释
    ANNOUNCE_CANT_ESCAPE_CURSE = '为什么我不能……？噢不……', --暂无注释
    ANNOUNCE_MONKEY_CURSE_1 = '这就开始了……', --暂无注释
    ANNOUNCE_MONKEY_CURSE_CHANGE = '嗷，麻烦呐！我可没时间像猴子一样瞎胡闹！', --暂无注释
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = '终于变回来了！我还以为永远不会恢复了！', --暂无注释
    ANNOUNCE_PIRATES_ARRIVE = '麻烦呐！我能听到他们朗朗上口的音乐越来越近了！', --暂无注释
    ANNOUNCE_OFF_SCRIPT = '应该不是这么演的。', --暂无注释
    ANNOUNCE_COZY_SLEEP = '啊，我感觉神清气爽！', --暂无注释
    ANNOUNCE_TOOL_TOOWEAK = '嗷，麻烦呐！我得找个比它更结实的……', --暂无注释
    ANNOUNCE_LUNAR_RIFT_MAX = '还有谁感受到了时空的爆裂？', --暂无注释
    ANNOUNCE_SHADOW_RIFT_MAX = '好像有些东西在转变...', --暂无注释
    ANNOUNCE_SCRAPBOOK_FULL = '我不是已经在图鉴上填上了吗？', --暂无注释
    ANNOUNCE_CHAIR_ON_FIRE = '没事儿。', --暂无注释
    ANNOUNCE_COACH = {
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang' --暂无注释
    },
    ANNOUNCE_WOLFGANG_WIMPY_COACHING = 'only_used_by_wolfgang', --暂无注释
    ANNOUNCE_WOLFGANG_MIGHTY_COACHING = 'only_used_by_wolfgang', --暂无注释
    ANNOUNCE_WOLFGANG_BEGIN_COACHING = 'only_used_by_wolfgang', --暂无注释
    ANNOUNCE_WOLFGANG_END_COACHING = 'only_used_by_wolfgang', --暂无注释
    ANNOUNCE_WOLFGANG_NOTEAM = {
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang', --暂无注释
        'only_used_by_wolfgang' --暂无注释
    },
    BATTLECRY = {
        GENERIC = '我们会击败你。', --战斗
        PIG = '你完了！', --战斗 猪人
        PREY = '给我乖点！', --战斗 猎物？？大象？
        SPIDER = '给我注意点！', --战斗 蜘蛛
        SPIDER_WARRIOR = '我是在别的时间线里羞辱过你吗？', --战斗 蜘蛛战士
        DEER = '这对你来说不会有什么好结果！' --战斗 无眼鹿
    },
    COMBAT_QUIT = {
        GENERIC = '饶你小命，我还有重要的事情要做。', --攻击目标被卡住，无法攻击
        PIG = '不理我了。', --退出战斗-猪人
        PREY = '我花费的所有时间都付诸东流了。', --退出战斗 猎物？？大象？
        SPIDER = '不理我了。', -- 退出战斗 蜘蛛
        SPIDER_WARRIOR = '不理我了。' --退出战斗 蜘蛛战士
    },
    DESCRIBE = {
        MULTIPLAYER_PORTAL = '又来了……', -- 物品名:"绚丽之门"
        MULTIPLAYER_PORTAL_MOONROCK = '你看着办……', -- 物品名:"天体传送门"
        MOONROCKIDOL = '看着有点像钥匙，对不对？', -- 物品名:"月岩雕像" 制造描述:"重要人物。"
        CONSTRUCTION_PLANS = '再做一点手脚又有什么坏处呢？', -- 物品名:未找到
        ANTLION = {
            GENERIC = '嗷，麻烦呐。我希望我记得带礼物了。', -- 物品名:"蚁狮"->默认
            VERYHAPPY = '哦，现在你心情好了？', -- 物品名:"蚁狮"
            UNHAPPY = '没必要把自己弄这么激动！' -- 物品名:"蚁狮"
        },
        ANTLIONTRINKET = '这可能是送给某人的一份好礼物。', -- 物品名:"沙滩玩具"
        SANDSPIKE = '我不会让我的时间被你们缩短！', -- 物品名:"沙刺"
        SANDBLOCK = '时间之沙是如此的无常！', -- 物品名:"沙堡"
        GLASSSPIKE = '看起来不错。', -- 物品名:"玻璃尖刺"
        GLASSBLOCK = '看起来不错。', -- 物品名:"玻璃城堡"
        ABIGAIL_FLOWER = {
            GENERIC = '那朵花不一般……', -- 物品名:"阿比盖尔之花"->默认 制造描述:"一个神奇的纪念品。"
            LEVEL1 = '那朵花不一般……', -- 物品名:"阿比盖尔之花" 制造描述:"一个神奇的纪念品。"
            LEVEL2 = '周围有能量在积攒。', -- 物品名:"阿比盖尔之花" 制造描述:"一个神奇的纪念品。"
            LEVEL3 = '有事要发生了！', -- 物品名:"阿比盖尔之花" 制造描述:"一个神奇的纪念品。"
            LONG = '那朵花不一般……', -- 物品名:"阿比盖尔之花"->还需要很久 制造描述:"一个神奇的纪念品。"
            MEDIUM = '那朵花不一般……。', -- 物品名:"阿比盖尔之花" 制造描述:"一个神奇的纪念品。"
            SOON = '那朵花有情况！', -- 物品名:"阿比盖尔之花" 制造描述:"一个神奇的纪念品。"
            HAUNTED_POCKET = '我该放下它。', -- 物品名:"阿比盖尔之花" 制造描述:"一个神奇的纪念品。"
            HAUNTED_GROUND = '我会查明它到底做了些什么。' -- 物品名:"阿比盖尔之花" 制造描述:"一个神奇的纪念品。"
        },
        BALLOONS_EMPTY = '每个人都有自己的特长。有人能扭曲时间，有人会扭气球。', -- 物品名:"一堆气球" 制造描述:"要是有更简单的方法该多好。"
        BALLOON = '气球的生命周期太过短暂。', -- 物品名:"气球" 制造描述:"谁不喜欢气球呢？"
        BALLOONPARTY = '气球里面还有气球。', -- 物品名:"派对气球" 制造描述:"散播一点欢笑。"
        BALLOONSPEED = {
            DEFLATED = '哎呀，真短命。', -- 物品名:"迅捷气球" 制造描述:"让你的脚步变得轻盈。"
            GENERIC = '这正是我一直在寻找的额外速度！' -- 物品名:"迅捷气球"->默认 制造描述:"让你的脚步变得轻盈。"
        },
        BALLOONVEST = '如果能让我不溺水，那我愿意穿。', -- 物品名:"充气背心" 制造描述:"划船时带上这些艳丽的气球。"
        BALLOONHAT = '哈，我穿上它会显得很滑稽！让我试试。', -- 物品名:"气球帽" 制造描述:"开启对话的出色工具！"
        BERNIE_INACTIVE = {
            BROKEN = '这一定不是结局。我们可以修好它！', -- 物品名:"伯尼" 制造描述:"这个疯狂的世界总有你熟悉的人。"
            GENERIC = '它看起来很受喜爱。' -- 物品名:"伯尼"->默认 制造描述:"这个疯狂的世界总有你熟悉的人。"
        },
        BERNIE_ACTIVE = '这还不是我见过的最奇怪的事情，多么不可思议。', -- 物品名:"伯尼"
        BERNIE_BIG = '我发誓你那时候比现在小多了……', -- 物品名:"伯尼！"
        BOOKSTATION = {
            GENERIC = '好像我有时间坐下来阅读一样！', -- 物品名:"书架"->默认 制造描述:"所有图书均须遵循杜威十进制分类法整理。"
            BURNT = '哦，烦恼，现在它没了，我反而想读书了。' -- 物品名:"书架"->烧焦的 制造描述:"所有图书均须遵循杜威十进制分类法整理。"
        },
        BOOK_BIRDS = '想起了我的一个朋友。', -- 物品名:"世界鸟类大全" 制造描述:"涵盖1000个物种：习性、栖息地及叫声。"
        BOOK_TENTACLES = '亲自和它们打交道已经够麻烦了，为什么还要在书里读它们？', -- 物品名:"触手的召唤" 制造描述:"让我们来了解一下地下的朋友们！"
        BOOK_GARDENING = '我会想知道未删节的版本有多长吗？', -- 物品名:"应用园艺学" 制造描述:"讲述培育和照料植物的相关知识。"
        BOOK_SILVICULTURE = '薇克巴顿，你也会玩时空魔法吗？', -- 物品名:"应用造林学" 制造描述:"分支管理的指引。"
        BOOK_HORTICULTURE = '薇克巴顿，你也会玩时空魔法吗？', -- 物品名:"园艺学简编版" 制造描述:"讲述培育和照料植物的相关知识。"
        BOOK_SLEEP = '我不是要批评写作技巧，但那个差点让我睡着。', -- 物品名:"睡前故事" 制造描述:"送你入梦的睡前故事。"
        BOOK_BRIMSTONE = '嗯。可以的话还是不要。', -- 物品名:"末日将至！" 制造描述:"世界将在火焰和灾难中终结！"
        BOOK_FISH = '钓鱼已经足够耗时了，我不想再看钓鱼的书了！', -- 物品名:"垂钓者生存指南" 制造描述:"让捕鱼变得简单！"
        BOOK_FIRE = '没时间看书，我们在烧掉大好时光！', -- 物品名:"意念控火术详解" 制造描述:"使用这些简单的技巧来化解任何火爆的场面。"
        BOOK_WEB = '哈！这本书是蜘蛛写的吗？我的心防不会轻易卸下。', -- 物品名:"克服蛛形纲恐惧症" 制造描述:"要在对方的网络里行走过一里路才能算真正了解一个人。"
        BOOK_TEMPERATURE = '我才不想花时间和精力读那些东西。', -- 物品名:"控温学" 制造描述:"通过这些简单的步骤完全控制你的个人气候。"
        BOOK_LIGHT = '这本书也许值得一读。', -- 物品名:"永恒之光" 制造描述:"阅读后能启迪出智慧的光芒。"
        BOOK_RAIN = '雨。', -- 物品名:"实用求雨仪式" 制造描述:"留着防备雨天，你来决定哪天是雨天。"
        BOOK_MOON = '上面画着你诶。唯一需要的。', -- 物品名:"月之魔典" 制造描述:"召唤月亮的力量。"
        BOOK_BEES = '我不关心蜜蜂，别让我看这方面的东西。', -- 物品名:"养蜂笔记" 制造描述:"学习养蜂的基本知识。"
        BOOK_HORTICULTURE_UPGRADED = '老天，这本比上一本还要厚。', -- 物品名:"园艺学扩展版" 制造描述:"专家分析如何进行高级农作物护理。"
        BOOK_RESEARCH_STATION = '我承认把所有东西都放在一本书里是相当有效的。', -- 物品名:"万物百科" 制造描述:"万事万物从A到Z的完整指南。"
        BOOK_LIGHT_UPGRADED = '把这本书随时带在身上可好？', -- 物品名:"永恒之光之复兴" 制造描述:"全本比之前的简本散发出更闪耀的光芒。"
        FIREPEN = '她应该告诫别人不要借她的笔。', -- 物品名:"火焰笔" 制造描述:"小小的笔身中潜藏着暴躁的火焰。"
        PLAYER = {
            GENERIC = '抱歉，%s，我没时间跟你坐下闲聊！', -- 物品名:未找到
            ATTACKER = '你给我小心了，%s……', -- 物品名:未找到
            MURDERER = '%s！你都做了什么？！', -- 物品名:未找到
            REVIVER = '谢谢你%s，我不会再这么不小心了。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '%s！别怕，我能搞定！', -- 物品名:"幽灵"
            FIRESTARTER = '我明白了，在这条时间线上，你认为自己是个纵火犯？' -- 物品名:未找到
        },
        WILSON = {
            GENERIC = '%s！我本来有事情要跟你说的，是什么来着……', -- 物品名:未找到
            ATTACKER = '别再提什么“绅士”科学家了，%s。', -- 物品名:未找到
            MURDERER = '%s！你都做了什么？！', -- 物品名:未找到
            REVIVER = '那个真是科学吗，%s？啊，我有什么资格质疑呢。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '不要有顾虑，稍作休息之后身体会更好。', -- 物品名:"幽灵"
            FIRESTARTER = '现如今你就拿这个混充“科学”了，%s？' -- 物品名:未找到
        },
        WOLFGANG = {
            GENERIC = '抱歉%s，我没时间闲聊。', -- 物品名:"沃尔夫冈"->默认
            ATTACKER = '不要欺负人，%s！', -- 物品名:"沃尔夫冈"
            MURDERER = '%s！你怎么能这样？！', -- 物品名:"沃尔夫冈"
            REVIVER = '我们都应该记住，下次要更加谨慎。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '%s！这是什么时候的事？！', -- 物品名:"幽灵"
            FIRESTARTER = '花时间做这个不好，%s……' -- 物品名:"沃尔夫冈"
        },
        WAXWELL = {
            GENERIC = '老天啊，%s，你怎么比上次见面时老了那么多？', -- 物品名:"麦斯威尔"->默认
            ATTACKER = '我就知道你有这阴暗的一面，%s！', -- 物品名:"麦斯威尔"
            MURDERER = '暗影腐化了你的思想，%s！我要替天行道了！', -- 物品名:"麦斯威尔"
            REVIVER = '你内心还是很善良的，%s。哎呀，你尴尬什么！', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '别担心，%s，我有办法！给我点时间。', -- 物品名:"幽灵"
            FIRESTARTER = '说实话！发脾气并不能解决任何问题。' -- 物品名:"麦斯威尔"
        },
        WX78 = {
            GENERIC = '哎呀，是你这个有趣的小机器人啊！你好，%s！', -- 物品名:"WX-78"->默认
            ATTACKER = '%s的发条看起来上的很紧……', -- 物品名:"WX-78"
            MURDERER = '为什么你要一堆杀人不眨眼的齿轮！', -- 物品名:"WX-78"
            REVIVER = '我知道你内心深处和我一样重视生命，%s。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '你不要着急，我很快就会把你修好的！', -- 物品名:"幽灵"
            FIRESTARTER = '我看见你的齿轮在转了，%s。你打的什么算盘？' -- 物品名:"WX-78"
        },
        WILLOW = {
            GENERIC = '你在这啊，%s！记住了，你做什么都可以，就是别……嗷，麻烦呐！我忘记了。', -- 物品名:"薇洛"->默认
            ATTACKER = '现在不是互相攻击的时候，%s！', -- 物品名:"薇洛"
            MURDERER = '这是一条你大开杀戒的时间线吗，%s？', -- 物品名:"薇洛"
            REVIVER = '谢天谢地我们的时间线出现了交集，%s！', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '你的时间还没结束，%s，我说没就是没！', -- 物品名:"幽灵"
            FIRESTARTER = '有些事情不管什么时间线都会发生……' -- 物品名:"薇洛"
        },
        WENDY = {
            GENERIC = '啊，你好啊，%s……抱歉，我现在有点急事。', -- 物品名:"温蒂"->默认
            ATTACKER = '等等，没必要那样，%s。', -- 物品名:"温蒂"
            MURDERER = '你别过来！我是认真的！', -- 物品名:"温蒂"
            REVIVER = '她一定很难……', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '如果我能够为你们两个人把时间倒回去就好了。', -- 物品名:"幽灵"
            FIRESTARTER = '现在的孩子啊，没事总瞎玩火。' -- 物品名:"温蒂"
        },
        WOODIE = {
            GENERIC = '抱歉，%s。我没时间跟你客套！', -- 物品名:"伍迪"->默认
            ATTACKER = '这种刻薄完全没有必要，%s！', -- 物品名:"伍迪"
            MURDERER = '你缩短了他们的生命！为什么？！', -- 物品名:"伍迪"
            REVIVER = '留胡子的果然都是好心人，%s。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '别担心，我很快就会让你恢复到以前的状态！', -- 物品名:"幽灵"
            BEAVER = '嗯。我可以发誓，他变成过一只驼鹿。', -- 物品名:"伍迪"
            BEAVERGHOST = '等我一会儿，%s，我保证能让这件事像没发生过一样！', -- 物品名:"伍迪"
            MOOSE = '嗯。我可以发誓，他变成过一头鹅。', -- 物品名:"伍迪"
            MOOSEGHOST = '别着急，%s，我不会让你就这么完蛋的！', -- 物品名:"伍迪"
            GOOSE = '嗯。我发誓他变成过了一只海狸。', -- 物品名:"伍迪"
            GOOSEGHOST = '这不是你的结局，%s。我不会丢下你不管！', -- 物品名:"伍迪"
            FIRESTARTER = '我万万没想到你居然会这样，%s。' -- 物品名:"伍迪"
        },
        WICKERBOTTOM = {
            GENERIC = '你气色不错啊，%s！', -- 物品名:"薇克巴顿"->默认
            ATTACKER = '%s！你又怎么了？', -- 物品名:"薇克巴顿"
            MURDERER = '杀人犯！你的时间马上就要结束了！', -- 物品名:"薇克巴顿"
            REVIVER = '我们今后都应该更加谨慎。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '你的时间还没到，%s，有我在，放心吧！', -- 物品名:"幽灵"
            FIRESTARTER = '真是的，%s。你都这个年龄了还不懂事！' -- 物品名:"薇克巴顿"
        },
        WES = {
            GENERIC = '抱歉，%s，我没时间猜哑谜！', -- 物品名:"韦斯"->默认
            ATTACKER = '切面，这应该不是表演了！', -- 物品名:"韦斯"
            MURDERER = '杀人犯！你都不想为自己辩解吗？', -- 物品名:"韦斯"
            REVIVER = '%s的善行胜于雄辩。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '你不要着急，很快这一切就会像没有发生过一样！', -- 物品名:"幽灵"
            FIRESTARTER = '啊……看来我又进入了坏的时间线。' -- 物品名:"韦斯"
        },
        WEBBER = {
            GENERIC = '是你啊，%s！我口袋里还有颗糖，不过可能有点旧了……', -- 物品名:"韦伯"->默认
            ATTACKER = '是该好好管管那小子了。', -- 物品名:"韦伯"
            MURDERER = '恶魔！我要把你从这条时间线抹除！', -- 物品名:"韦伯"
            REVIVER = '现在的孩子真是可靠。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '别怕，%s，我马上就把你救回来！', -- 物品名:"幽灵"
            FIRESTARTER = '现在的小孩就知道瞎放火。' -- 物品名:"韦伯"
        },
        WATHGRITHR = {
            GENERIC = '很高兴再见到你，%s，不过恐怕我不能跟你待太久。', -- 物品名:"薇格弗德"->默认
            ATTACKER = '她把矛头转向我们只是时间问题。', -- 物品名:"薇格弗德"
            MURDERER = '我是不会把我的灵魂让你交到英什么殿的！', -- 物品名:"薇格弗德"
            REVIVER = '我很高兴有你在身边，%s。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '给我一点时间，你很快就能再唱约德尔山歌了！', -- 物品名:"幽灵"
            FIRESTARTER = '为什么总会发生这种事……' -- 物品名:"薇格弗德"
        },
        WINONA = {
            GENERIC = '抱歉，%s，我有事情要做，有地方要去。你肯定能谅解！', -- 物品名:"薇诺娜"->默认
            ATTACKER = '哎呀，%s，你怎么能那样呢！', -- 物品名:"薇诺娜"
            MURDERER = '我不知道你是几个意思，%s，不过你别惹我啊！', -- 物品名:"薇诺娜"
            REVIVER = '我很高兴在危难之际能指望上你，%s。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '是时候让你看看我的装置能做什么了！', -- 物品名:"幽灵"
            FIRESTARTER = '哈？在上一条时间线中，你并不是这样一个火爆的人。' -- 物品名:"薇诺娜"
        },
        WORTOX = {
            GENERIC = '我感觉你比我去过的地方还多，%s。', -- 物品名:"沃拓克斯"->默认
            ATTACKER = '真有必要那样吗，%s？', -- 物品名:"沃拓克斯"
            MURDERER = '你玩过火了%s，这不是一场游戏！', -- 物品名:"沃拓克斯"
            REVIVER = '你没趁我不注意的时候咬一口吧？', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '等我稍微重塑一下时间，你就会完好如初了！', -- 物品名:"幽灵"
            FIRESTARTER = '%s是个深不可测的小恶魔……' -- 物品名:"沃拓克斯"
        },
        WORMWOOD = {
            GENERIC = '%s！自从上次见面以后，你是不是长大了？', -- 物品名:"沃姆伍德"->默认
            ATTACKER = '这世上……你消停点好不好？！', -- 物品名:"沃姆伍德"
            MURDERER = '凶手！我会把你送回你蹦出来的土里！', -- 物品名:"沃姆伍德"
            REVIVER = '提醒我不要再死了。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '你别怕，%s，我会处理好一切的！', -- 物品名:"幽灵"
            FIRESTARTER = '%s可能不是很灵光……' -- 物品名:"沃姆伍德"
        },
        WARLY = {
            GENERIC = '见到你真是太好了，%s！话说，咱们遇见过没有？', -- 物品名:"沃利"->默认
            ATTACKER = '我不喜欢你脸上的表情，%s……', -- 物品名:"沃利"
            MURDERER = '你别想糊弄我，%s，你是不是蓄谋已久了？', -- 物品名:"沃利"
            REVIVER = '我很高兴身旁有你作伴，%s。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '给我一分钟，我能行！', -- 物品名:"幽灵"
            FIRESTARTER = '不是所有东西都需要烤熟的，%s……' -- 物品名:"沃利"
        },
        WURT = {
            GENERIC = '抱歉，%s，我不能留下来跟你闲聊！', -- 物品名:"沃特"->默认
            ATTACKER = '你想惹事啊，%s？', -- 物品名:"沃特"
            MURDERER = '别过来！如果非得你死我活，我选我活！', -- 物品名:"沃特"
            REVIVER = '咱俩会相处得很好，%s。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '不要再纠缠我了，我会尽快让你回来的！', -- 物品名:"幽灵"
            FIRESTARTER = '这不会有好结果的……' -- 物品名:"沃特"
        },
        WALTER = {
            GENERIC = '%s，你为什么一直盯着我的手看……？', -- 物品名:"沃尔特"->默认
            ATTACKER = '你在上一条时间线里要有礼貌得多。', -- 物品名:"沃尔特"
            MURDERER = '我知道你的所作所为，%s，你说什么都没用了！', -- 物品名:"沃尔特"
            REVIVER = '你还真是当机立断啊，%s！', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '我马上就会让你重新站起来！', -- 物品名:"幽灵"
            FIRESTARTER = '老实说，现在见到什么我都不稀奇了。' -- 物品名:"沃尔特"
        },
        WANDA = {
            GENERIC = '真没想到会在这里碰见我！', -- 物品名:"旺达"->默认
            ATTACKER = '嗯……一定是他们活该。', -- 物品名:"旺达"
            MURDERER = '看来这条时间线只容得下我们中的一个！', -- 物品名:"旺达"
            REVIVER = '我很高兴我们中的一个人能够及时采取行动！', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '我们的故事不能在这结束！', -- 物品名:"幽灵"
            FIRESTARTER = '哼。我一定有我的理由……' -- 物品名:"旺达"
        },
        WONKEY = {
            GENERIC = '哦，天哪，你怎么了？', -- 物品名:"芜猴"->默认
            ATTACKER = '你给我马上停手！', -- 物品名:"芜猴"
            MURDERER = '此人已经失去理智，完全由那野兽主宰了。', -- 物品名:"芜猴"
            REVIVER = '还好有一颗好心在。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
            GHOST = '即使死亡也不能解除诅咒？', -- 物品名:"幽灵"
            FIRESTARTER = '我知道你很沮丧，但这并不能解决任何问题！' -- 物品名:"芜猴"
        },
        GLOMMER = {
            GENERIC = '谁是可爱的小虫子呢？就是你！', -- 物品名:"格罗姆"->默认
            SLEEPING = '又睡着了？' -- 物品名:"格罗姆"->睡着了
        },
        GLOMMERFLOWER = {
            GENERIC = '我喜欢任何可以自己发光的东西。', -- 物品名:"格罗姆花"->默认
            DEAD = '为什么生命对某些人来说必须如此短暂？' -- 物品名:"格罗姆花"->死了
        },
        GLOMMERWINGS = '我就不去想它们从哪里来的了！', -- 物品名:"格罗姆翅膀"
        GLOMMERFUEL = '什么玩意儿。', -- 物品名:"格罗姆的黏液"
        BELL = '可能发生的最坏情况是什么？', -- 物品名:"远古铃铛" 制造描述:"这可不是普通的铃铛。"
        STATUEGLOMMER = {
            GENERIC = '我仍然没有弄清楚这是谁做的……', -- 物品名:"格罗姆雕像"->默认
            EMPTY = '这在当时似乎是个好主意。' -- 物品名:"格罗姆雕像"
        },
        LAVA_POND_ROCK = '见过一块石头就等于见过所有的石头了。', -- 物品名:"岩石"
        WEBBERSKULL = '可怜的小家伙。应该为他举办一个体面的葬礼。', -- 物品名:"韦伯的头骨"
        WORMLIGHT = '很好的轻口味零食！', -- 物品名:"发光浆果"
        WORMLIGHT_LESSER = '并没有什么不妥！', -- 物品名:"小发光浆果"
        WORM = {
            PLANT = '我记得有什么...啊，应该没事。', -- 物品名:"洞穴蠕虫"
            DIRT = '一堆土，能有什么意思。', -- 物品名:"洞穴蠕虫"
            WORM = '我想起来了！' -- 物品名:"洞穴蠕虫"
        },
        WORMLIGHT_PLANT = '啊，应该没事。', -- 物品名:"神秘植物"
        MOLE = {
            HELD = '终于抓到你了，你这个小捣蛋！', -- 物品名:"鼹鼠"->拿在手里
            UNDERGROUND = '这是其中的一个小捣蛋。', -- 物品名:"鼹鼠"
            ABOVEGROUND = '我已经花了太多时间对付你了！' -- 物品名:"鼹鼠"
        },
        MOLEHILL = '我以为它们会更大……一定是我的记忆夸大了它。', -- 物品名:"鼹鼠丘"
        MOLEHAT = '这顶帽子看起来真有趣。让我试戴一下！', -- 物品名:"鼹鼠帽" 制造描述:"为穿戴者提供夜视能力。"
        EEL = '我想我刚刚看到它在蠕动……', -- 物品名:"鳗鱼"
        EEL_COOKED = '哦，好。是我的最爱。', -- 物品名:"熟鳗鱼"
        UNAGI = '烹调适当能使鳗鱼的味道稍好一些。', -- 物品名:"鳗鱼料理"
        EYETURRET = '哦，我喜欢这个东西！', -- 物品名:"眼睛炮塔"
        EYETURRET_ITEM = '放哪好呢，放哪好呢……', -- 物品名:"眼睛炮塔" 制造描述:"要远离讨厌的东西，就得杀了它们。"
        MINOTAURHORN = '我很高兴这个牛角没有成为我的终点。', -- 物品名:"守护者之角"
        MINOTAURCHEST = '我上次打开过吗？我不记得了……', -- 物品名:"大号华丽箱子"
        THULECITE_PIECES = '正是我想要的效果！', -- 物品名:"铥矿碎片"
        POND_ALGAE = '我不能把时间花在欣赏古老的池塘植物上。', -- 物品名:"水藻"
        GREENSTAFF = '可以拆东西。', -- 物品名:"拆解魔杖" 制造描述:"干净而有效的摧毁。"
        GIFT = '哦！呃……我是不是也应该带一份礼物？', -- 物品名:"礼物"
        GIFTWRAP = '直接把它放在一个漂亮的袋子里不是更快吗？', -- 物品名:"礼物包装" 制造描述:"把东西打包起来，好看又可爱！"
        POTTEDFERN = '我一直无法让它们活得长久。', -- 物品名:"蕨类盆栽" 制造描述:"做个花盆，里面栽上蕨类植物。"
        SUCCULENT_POTTED = '我一直无法让它们活得长久。', -- 物品名:"多肉盆栽" 制造描述:"塞进陶盆的漂亮多肉植物。"
        SUCCULENT_PLANT = '恐怕我不能停下来欣赏每一道风景。', -- 物品名:"多肉植物"
        SUCCULENT_PICKED = '要说吧，它其实也能吃。', -- 物品名:"多肉植物"
        SENTRYWARD = '很好，这将帮助我更快地了解大陆的情况。', -- 物品名:"月眼守卫" 制造描述:"绘图者最有价值的武器。"
        TOWNPORTAL = {
            GENERIC = '虽然看着有点累赘，但紧要关头还是管用的。', -- 物品名:"懒人传送塔"->默认 制造描述:"用沙子的力量聚集你的朋友们。"
            ACTIVE = '看起来它已经准备好了。' -- 物品名:"懒人传送塔"->激活了 制造描述:"用沙子的力量聚集你的朋友们。"
        },
        TOWNPORTALTALISMAN = {
            GENERIC = '它散发着时空动荡的甜美气息。', -- 物品名:"沙之石"->默认
            ACTIVE = '我不妨用一下它。' -- 物品名:"沙之石"->激活了
        },
        WETPAPER = '这要花很长时间才能干……', -- 物品名:"纸张"
        WETPOUCH = '湿漉漉的一滩。', -- 物品名:"起皱的包裹"
        MOONROCK_PIECES = '不知道这是谁做的？', -- 物品名:"月亮石碎块"
        MOONBASE = {
            GENERIC = '我很喜欢。', -- 物品名:"月亮石"->默认
            BROKEN = '坏了。', -- 物品名:"月亮石"
            STAFFED = '嗯……', -- 物品名:"月亮石"
            WRONGSTAFF = '错了。', -- 物品名:"月亮石"->插错法杖
            MOONSTAFF = '对了！' -- 物品名:"月亮石"->已经插了法杖的（月杖）
        },
        MOONDIAL = {
            GENERIC = '是你，可爱捏。', -- 物品名:"月晷"->默认 制造描述:"追踪月相！"
            NIGHT_NEW = '不喜欢……', -- 物品名:"月晷"->新月 制造描述:"追踪月相！"
            NIGHT_WAX = '慢慢在变圆。', -- 物品名:"月晷"->上弦月 制造描述:"追踪月相！"
            NIGHT_FULL = '满月，开香槟！', -- 物品名:"月晷"->满月 制造描述:"追踪月相！"
            NIGHT_WANE = '正在变小。', -- 物品名:"月晷"->下弦月 制造描述:"追踪月相！"
            CAVE = '不行。', -- 物品名:"月晷"->洞穴 制造描述:"追踪月相！"
            GLASSED = '怎么又到这条时间线了……' -- 物品名:"月晷" 制造描述:"追踪月相！"
        },
        THULECITE = '如果我可以把它分解成更容易处理的小块就好了……', -- 物品名:"铥矿" 制造描述:"将小碎片合成一大块。"
        ARMORRUINS = '滚。', -- 物品名:"铥矿甲" 制造描述:"炫目并且能提供保护。"
        ARMORSKELETON = '滚。', -- 物品名:"骨头盔甲"
        SKELETONHAT = '滚。', -- 物品名:"骨头头盔"
        RUINS_BAT = '那东西怎么挥啊？', -- 物品名:"铥矿棒" 制造描述:"尖钉让一切变得更好。"
        RUINSHAT = '看来你只能戴这个了！', -- 物品名:"铥矿皇冠" 制造描述:"附有远古力场！"
        NIGHTMARE_TIMEPIECE = {
            CALM = '目前似乎很平静。', -- 物品名:"铥矿徽章" 制造描述:"跟踪周围魔力水平的流动。"
            WARN = '哦，不不不！', -- 物品名:"铥矿徽章" 制造描述:"跟踪周围魔力水平的流动。"
            WAXING = '你不会忘记做群伤武器了吧！', -- 物品名:"铥矿徽章" 制造描述:"跟踪周围魔力水平的流动。"
            STEADY = '滚！', -- 物品名:"铥矿徽章" 制造描述:"跟踪周围魔力水平的流动。"
            WANING = '再坚持一下——！', -- 物品名:"铥矿徽章" 制造描述:"跟踪周围魔力水平的流动。"
            DAWN = '就快结束了……', -- 物品名:"铥矿徽章" 制造描述:"跟踪周围魔力水平的流动。"
            NOMAGIC = '已经不受魔法控制了。' -- 物品名:"铥矿徽章" 制造描述:"跟踪周围魔力水平的流动。"
        },
        BISHOP_NIGHTMARE = '让我想起一个朋友，但他不会打我……', -- 物品名:"损坏的发条主教"
        ROOK_NIGHTMARE = '它怎么还在走？', -- 物品名:"损坏的发条战车"
        KNIGHT_NIGHTMARE = '好丑。', -- 物品名:"损坏的发条骑士"
        MINOTAUR = '噢。对了。还有你。', -- 物品名:"远古守护者"
        SPIDER_DROPPER = '你还想掉在我身上？', -- 物品名:"穴居悬蛛"
        NIGHTMARELIGHT = '感觉不适。', -- 物品名:"梦魇灯座"
        NIGHTSTICK = '这个好！', -- 物品名:"晨星锤" 制造描述:"用于夜间战斗的晨光。"
        GREENGEM = '如果我以前能得到这个就好了……好吧，算了。', -- 物品名:"绿宝石"
        MULTITOOL_AXE_PICKAXE = '这个能帮我节省不少宝贵时间！', -- 物品名:"多用斧镐" 制造描述:"加倍实用。"
        ORANGESTAFF = '真的吗？只是把宝石放在棍子上，然后就收工了？', -- 物品名:"懒人魔杖" 制造描述:"适合那些不喜欢走路的人。"
        YELLOWAMULET = '这正是我需要的增强。', -- 物品名:"魔光护符" 制造描述:"从天堂汲取力量。"
        GREENAMULET = '精美高效。', -- 物品名:"建造护符" 制造描述:"用更少的材料合成物品！"
        SLURPERPELT = '真讨厌。', -- 物品名:"铥矿徽章"->啜食者皮 制造描述:"跟踪周围魔力水平的流动。"
        SLURPER = '我无语了……', -- 物品名:"啜食者"
        SLURPER_PELT = '真讨厌。', -- 物品名:"啜食者皮"
        ARMORSLURPER = '有什么用……', -- 物品名:"饥饿腰带" 制造描述:"保持肚子不饿。"
        ORANGEAMULET = '如果不用停下来捡东西的话，就可以节省很多时间！', -- 物品名:"懒人护符" 制造描述:"适合那些不喜欢捡东西的人。"
        YELLOWSTAFF = '难道没有人认为召唤小星星可能会有危险吗？', -- 物品名:"唤星者魔杖" 制造描述:"召唤一个小星星。"
        YELLOWGEM = '它本身不会有什么好处。', -- 物品名:"黄宝石"
        ORANGEGEM = '它是很美，但现在这样确实挺废的。', -- 物品名:"橙宝石"
        OPALSTAFF = '太好啦。', -- 物品名:"唤月者魔杖"
        OPALPRECIOUSGEM = '美得令人分神。', -- 物品名:"彩虹宝石"
        TELEBASE = {
            VALID = '好吧，不如把它用起来。', -- 物品名:"传送焦点"->有效 制造描述:"装上宝石试试。"
            GEMS = '很难相信这东西需要这么多能量才能运转。' -- 物品名:"传送焦点"->需要宝石 制造描述:"装上宝石试试。"
        },
        GEMSOCKET = {
            VALID = '这东西确实占用了很大的空间。', -- 物品名:"宝石底座"->有效
            GEMS = '它需要三颗宝石才能工作？' -- 物品名:"宝石底座"->需要宝石
        },
        STAFFLIGHT = '别把家烧了。', -- 物品名:"矮星"
        STAFFCOLDLIGHT = '真美。', -- 物品名:"极光"
        ANCIENT_ALTAR = '看起来他们是一群聪明人。只是还不够聪明。', -- 物品名:"远古伪科学站"
        ANCIENT_ALTAR_BROKEN = '它在岁月中荒废了。', -- 物品名:"损坏的远古伪科学站"
        ANCIENT_STATUE = '很久以前留下的东西。', -- 物品名:"远古雕像"
        LICHEN = '不要走几步就停下来盯着植物看！', -- 物品名:"洞穴苔藓"
        CUTLICHEN = '它的时间正在迅速流逝。', -- 物品名:"苔藓"
        CAVE_BANANA = '我喜欢简单省事的快速零食。', -- 物品名:"香蕉"
        CAVE_BANANA_COOKED = '我为什么要花时间烹饪它？', -- 物品名:"熟香蕉"
        CAVE_BANANA_TREE = '你几乎不能称它为一棵树。', -- 物品名:"洞穴香蕉树"
        ROCKY = '离我远一点！', -- 物品名:"石虾"
        COMPASS = {
            GENERIC = '如果它能告诉我哪里是过去，哪里是未来就好了。', -- 物品名:"指南针"->默认 制造描述:"指向北方。"
            N = '北方。就是地图的 “上”，对吗？', -- 物品名:"指南针" 制造描述:"指向北方。"
            S = '南方。就是地图的 “下”，对吗？', -- 物品名:"指南针" 制造描述:"指向北方。"
            E = '东。这绝对是东边！', -- 物品名:"指南针" 制造描述:"指向北方。"
            W = '西。是左边，对吧？', -- 物品名:"指南针" 制造描述:"指向北方。"
            NE = '应该是东北。', -- 物品名:"指南针" 制造描述:"指向北方。"
            SE = '可能是东南。', -- 物品名:"指南针" 制造描述:"指向北方。"
            NW = '是西北吧？', -- 物品名:"指南针" 制造描述:"指向北方。"
            SW = '西南，也许又不是，谁知道呢？' -- 物品名:"指南针" 制造描述:"指向北方。"
        },
        HOUNDSTOOTH = '额！', -- 物品名:"犬牙"
        ARMORSNURTLESHELL = '你都这么无敌了还需要这个？', -- 物品名:"蜗壳护甲"
        BAT = '离我远一点！', -- 物品名:"洞穴蝙蝠"
        BATBAT = '我可以从我的敌人的寿命中抽取一点，加到我自己的寿命中。', -- 物品名:"蝙蝠棒" 制造描述:"所有科技都如此...耗费精神。"
        BATWING = '这将使那些蝙蝠得到教训。', -- 物品名:"洞穴蝙蝠翅膀"
        BATWING_COOKED = '我不知道我期待的是什么味道，但总之味不对。', -- 物品名:"熟蝙蝠翅膀"
        BATCAVE = '不要介意我……我只是路过……', -- 物品名:"蝙蝠洞"
        BEDROLL_FURRY = '如果我必须花时间睡觉，那至少要睡舒服。', -- 物品名:"毛皮铺盖" 制造描述:"舒适地一觉睡到天亮！"
        BUNNYMAN = '我信不过那些东西。', -- 物品名:"兔人"
        FLOWER_CAVE = '我没有时间停下来闻花香。', -- 物品名:"荧光花"
        GUANO = '蝙蝠的粪便。', -- 物品名:"鸟粪"
        LANTERN = '我最好把这个放在身边，以备不时之需。', -- 物品名:"提灯" 制造描述:"可加燃料、明亮、便携！"
        LIGHTBULB = '它将给我带来几分钟的光明。', -- 物品名:"荧光果"
        MANRABBIT_TAIL = '挺好的，只要我别去想它的来源。', -- 物品名:"兔绒"
        MUSHROOMHAT = '我不喜欢从头顶上长出一颗蘑菇。', -- 物品名:"蘑菇帽"
        MUSHROOM_LIGHT2 = {
            ON = '好吧，发光的蘑菇我倒是可以欣赏。', -- 物品名:"菌伞灯"->开启 制造描述:"受到火山岩浆灯饰学问的激发。"
            OFF = '添加一些彩色的孢子应该能让这个地方变得更加明亮。', -- 物品名:"菌伞灯"->关闭 制造描述:"受到火山岩浆灯饰学问的激发。"
            BURNT = '是时候找一展新的灯了。' -- 物品名:"菌伞灯"->烧焦的 制造描述:"受到火山岩浆灯饰学问的激发。"
        },
        MUSHROOM_LIGHT = {
            ON = '不用油或者火柴的灯总能带给我惊喜。', -- 物品名:"蘑菇灯"->开启 制造描述:"任何蘑菇的完美添加物。"
            OFF = '这蘑菇的形状真奇怪。', -- 物品名:"蘑菇灯"->关闭 制造描述:"任何蘑菇的完美添加物。"
            BURNT = '是时候找一展新的灯了。' -- 物品名:"蘑菇灯"->烧焦的 制造描述:"任何蘑菇的完美添加物。"
        },
        SLEEPBOMB = '谁会想把宝贵的时间花在打盹上呢？', -- 物品名:"睡袋" 制造描述:"可以扔掉的袋子睡意沉沉。"
        MUSHROOMBOMB = '我不喜欢蘑菇是有原因的！', -- 物品名:"炸弹蘑菇"
        SHROOM_SKIN = '那个生物一定是已经腐烂了一半。多吓人！', -- 物品名:"蘑菇皮"
        TOADSTOOL_CAP = {
            EMPTY = '这里以前不是有东西吗？或者说那是后来的事。', -- 物品名:"毒菌蟾蜍"
            INGROUND = '出来吧，别害羞了！', -- 物品名:"毒菌蟾蜍"->在地里面
            GENERIC = '有种奇怪的熟悉感。' -- 物品名:"毒菌蟾蜍"->默认
        },
        TOADSTOOL = {
            GENERIC = '我真的应该记住像你这样的东西！', -- 物品名:"毒菌蟾蜍"->默认
            RAGE = '看来命运的钟摆向他倾斜了……' -- 物品名:"毒菌蟾蜍"->愤怒
        },
        MUSHROOMSPROUT = {
            GENERIC = '咦。闻起来像腐物。', -- 物品名:"孢子帽"->默认
            BURNT = '闻起来像是烧焦的腐物。' -- 物品名:"孢子帽"->烧焦的
        },
        MUSHTREE_TALL = {
            GENERIC = '它是怎么变这么大的？还有，它吃什么呢……', -- 物品名:"蓝蘑菇树"->默认
            BLOOM = '你可别把那些孢子弄到我身上来！' -- 物品名:"蓝蘑菇树"->蘑菇树繁殖？？
        },
        MUSHTREE_MEDIUM = {
            GENERIC = '我从来没有喜欢过蘑菇。', -- 物品名:"红蘑菇树"->默认
            BLOOM = '呃，它正试图长出更多的蘑菇。' -- 物品名:"红蘑菇树"->蘑菇树繁殖？？
        },
        MUSHTREE_SMALL = {
            GENERIC = '要是不小心的话，就会被其中一个绊倒。', -- 物品名:"绿蘑菇树"->默认
            BLOOM = '又是孢子的季节吗？' -- 物品名:"绿蘑菇树"->蘑菇树繁殖？？
        },
        MUSHTREE_TALL_WEBBED = '一个特别糟糕的蘑菇。', -- 物品名:"蛛网蓝蘑菇树"
        SPORE_TALL = {
            GENERIC = '他们正在寻找一个可以抓住的地方。', -- 物品名:"蓝色孢子"->默认
            HELD = '我希望它不会在里面开始生长。' -- 物品名:"蓝色孢子"->拿在手里
        },
        SPORE_MEDIUM = {
            GENERIC = '起码它们能让环境亮一点。', -- 物品名:"红色孢子"->默认
            HELD = '我希望它不会在里面开始生长。' -- 物品名:"红色孢子"->拿在手里
        },
        SPORE_SMALL = {
            GENERIC = '漂浮起来了。', -- 物品名:"绿色孢子"->默认
            HELD = '我希望它不会在里面开始生长。' -- 物品名:"绿色孢子"->拿在手里
        },
        RABBITHOUSE = {
            GENERIC = '这些胡萝卜里全是兔子。', -- 物品名:"兔屋"->默认 制造描述:"可容纳一只巨大的兔子及其所有物品。"
            BURNT = '有什么东西闻起来很香！' -- 物品名:"兔屋"->烧焦的 制造描述:"可容纳一只巨大的兔子及其所有物品。"
        },
        SLURTLE = '它们怎么能受得了自己这么慢呢？', -- 物品名:"蛞蝓龟"
        SLURTLE_SHELLPIECES = '一把碎裂的贝壳。', -- 物品名:"外壳碎片"
        SLURTLEHAT = '没必要用这个吧，太丑了。', -- 物品名:"背壳头盔"
        SLURTLEHOLE = '很奇怪。好了，继续前进……', -- 物品名:"蛞蝓龟窝"
        SLURTLESLIME = '嗷，麻烦呐！我鞋底好像粘到了一些……', -- 物品名:"蛞蝓龟黏液"
        SNURTLE = '它和其他同类一样慢。', -- 物品名:"蜗牛龟"
        SPIDER_HIDER = '你为什么不从另一个方向溜走呢？', -- 物品名:"洞穴蜘蛛"
        SPIDER_SPITTER = '别烦我了。', -- 物品名:"喷射蜘蛛"
        SPIDERHOLE = '我可以听到它们在里面溜达……', -- 物品名:"蛛网岩"
        SPIDERHOLE_ROCK = '我可以听到它们在里面溜达……', -- 物品名:"兔屋" 制造描述:"可容纳一只巨大的兔子及其所有物品。"
        STALAGMITE = '见过一块石头就等于见过所有的石头了。', -- 物品名:"石笋"
        STALAGMITE_TALL = '哇，太神奇了。我们继续前进，好吗？', -- 物品名:"石笋"
        TURF_CARPETFLOOR = '我没看到地毯……', -- 物品名:"地毯地板" 制造描述:"超级柔软。闻着就像皮弗娄牛。"
        TURF_CHECKERFLOOR = '我为什么要浪费时间盯着地面看？', -- 物品名:"棋盘地板" 制造描述:"精心制作成棋盘状的大理石地砖。"
        TURF_DIRT = '我为什么要浪费时间盯着地面看？', -- 物品名:"泥土地皮"
        TURF_FOREST = '我为什么要浪费时间盯着地面看？', -- 物品名:"森林地皮" 制造描述:"一块森林地皮。"
        TURF_GRASS = '我为什么要浪费时间盯着地面看？', -- 物品名:"长草地皮" 制造描述:"一片草地。"
        TURF_MARSH = '我为什么要浪费时间盯着地面看？', -- 物品名:"沼泽地皮" 制造描述:"沼泽在哪，家就在哪！"
        TURF_METEOR = '虽然看着有意思一点，但终究就是土地。', -- 物品名:"月球环形山地皮" 制造描述:"月球表面的月坑。"
        TURF_PEBBLEBEACH = '我为什么要浪费时间盯着地面看？', -- 物品名:"岩石海滩地皮" 制造描述:"一块鹅卵石海滩地皮。"
        TURF_ROAD = '这条路通往哪里？', -- 物品名:"卵石路" 制造描述:"修建你自己的道路，通往任何地方。"
        TURF_ROCKY = '我为什么要浪费时间盯着地面看？', -- 物品名:"岩石地皮" 制造描述:"一块石头地皮。"
        TURF_SAVANNA = '我为什么要浪费时间盯着地面看？', -- 物品名:"热带草原地皮" 制造描述:"一块热带草原地皮。"
        TURF_WOODFLOOR = '我想念脚下木地板发出的舒适的吱吱声。', -- 物品名:"木地板" 制造描述:"优质复合地板。"
        TURF_CAVE = '我为什么要浪费时间盯着地面看？', -- 物品名:"鸟粪地皮" 制造描述:"洞穴地面冰冷的岩石。"
        TURF_FUNGUS = '我为什么要浪费时间盯着地面看？', -- 物品名:"真菌地皮" 制造描述:"一块长满了真菌的洞穴地皮。"
        TURF_FUNGUS_MOON = '我为什么要浪费时间盯着地面看？', -- 物品名:"变异真菌地皮" 制造描述:"一块长满了变异真菌的洞穴地皮。"
        TURF_ARCHIVE = '虽然看着有意思一点，但终究就是土地。', -- 物品名:"远古石刻" 制造描述:"解封档案馆中的远古石器。"
        TURF_SINKHOLE = '我为什么要浪费时间盯着地面看？', -- 物品名:"黏滑地皮" 制造描述:"一块潮湿、沾满泥巴的草地地皮。"
        TURF_UNDERROCK = '我为什么要浪费时间盯着地面看？', -- 物品名:"洞穴岩石地皮" 制造描述:"一块乱石嶙峋的洞穴地皮。"
        TURF_MUD = '我为什么要浪费时间盯着地面看？', -- 物品名:"泥泞地皮" 制造描述:"一块泥地地皮。"
        TURF_DECIDUOUS = '我为什么要浪费时间盯着地面看？', -- 物品名:"落叶林地皮" 制造描述:"一块落叶林地皮。"
        TURF_SANDY = '我为什么要浪费时间盯着地面看？', -- 物品名:"兔屋" 制造描述:"可容纳一只巨大的兔子及其所有物品。"
        TURF_BADLANDS = '我为什么要浪费时间盯着地面看？', -- 物品名:"兔屋" 制造描述:"可容纳一只巨大的兔子及其所有物品。"
        TURF_DESERTDIRT = '我为什么要浪费时间盯着地面看？', -- 物品名:"沙漠地皮" 制造描述:"一片干燥的沙子。"
        TURF_FUNGUS_GREEN = '我为什么要浪费时间盯着地面看？', -- 物品名:"真菌地皮" 制造描述:"一块爬满绿菌的洞穴地皮。"
        TURF_FUNGUS_RED = '我为什么要浪费时间盯着地面看？', -- 物品名:"真菌地皮" 制造描述:"一块爬满红菌的洞穴地皮。"
        TURF_DRAGONFLY = '这可能真的很有用。', -- 物品名:"龙鳞地板" 制造描述:"消除火灾蔓延速度。"
        TURF_SHELLBEACH = '我为什么要浪费时间盯着地面看？', -- 物品名:"贝壳海滩地皮" 制造描述:"一块贝壳海岸。"
        TURF_RUINSBRICK = '我为什么要浪费时间盯着地面看？', -- 物品名:"远古地面" 制造描述:"远古石制地面，装饰的魔法技艺早已失传。"
        TURF_RUINSBRICK_GLOW = '我为什么要浪费时间盯着地面看？', -- 物品名:"仿远古地面" 制造描述:"远古石制地面的复刻。"
        TURF_RUINSTILES = '我为什么要浪费时间盯着地面看？', -- 物品名:"远古瓷砖" 制造描述:"瓷砖地面，装饰的魔法技艺早已失传。"
        TURF_RUINSTILES_GLOW = '我为什么要浪费时间盯着地面看？', -- 物品名:"仿远古瓷砖" 制造描述:"远古瓷砖地面的复刻。"
        TURF_RUINSTRIM = '我为什么要浪费时间盯着地面看？', -- 物品名:"远古砖雕" 制造描述:"砖石地面，装饰的魔法技艺早已失传。"
        TURF_RUINSTRIM_GLOW = '我为什么要浪费时间盯着地面看？', -- 物品名:"仿远古砖雕" 制造描述:"远古砖石地面的复刻。"
        TURF_MONKEY_GROUND = '我为什么要浪费时间盯着地面看？', -- 物品名:"月亮码头海滩地皮" 制造描述:"一片沙地，散发着淡淡的香蕉香。"
        TURF_CARPETFLOOR2 = '哦，多么可爱的地毯！', -- 物品名:"茂盛地毯" 制造描述:"超级超级软。"
        TURF_MOSAIC_GREY = '我为什么要浪费时间盯着地面看？', -- 物品名:"灰色马赛克地板" 制造描述:"优雅的碎石。灰色。"
        TURF_MOSAIC_RED = '我为什么要浪费时间盯着地面看？', -- 物品名:"红色马赛克地板" 制造描述:"优雅的碎石。红色。"
        TURF_MOSAIC_BLUE = '我为什么要浪费时间盯着地面看？', -- 物品名:"蓝色马赛克地板" 制造描述:"优雅的碎石。蓝色。"
        TURF_BEARD_RUG = '为什么我在浪费时间盯着……等等，那块地毯是用胡须做的吗？', -- 物品名:"胡须地毯" 制造描述:"有些人就是喜欢行为艺术。"
        POWCAKE = '不会有好结果的。', -- 物品名:"芝士蛋糕"
        CAVE_ENTRANCE = '我从来都不擅长一个人枯井逃生。', -- 物品名:"被堵住的洞穴"
        CAVE_ENTRANCE_RUINS = '有人可能出于某种原因堵住了它。我想知道是为什么？', -- 物品名:"被堵住的陷洞"->单机 洞二入口
        CAVE_ENTRANCE_OPEN = {
            GENERIC = '好吧，这样不行。', -- 物品名:"洞穴"->默认
            OPEN = '舍不得孩子就套不着狼。这是一个常见的死因……', -- 物品名:"洞穴"->打开
            FULL = '里面的人快点结束，我可没时间等你们一天！' -- 物品名:"洞穴"->满了
        },
        CAVE_EXIT = {
            GENERIC = '看来我暂时被困在这下面了。', -- 物品名:"楼梯"->默认
            OPEN = '这个地方我待够了！', -- 物品名:"楼梯"->打开
            FULL = '谁能让一下？你挡住出口了！' -- 物品名:"楼梯"->满了
        },
        MAXWELLPHONOGRAPH = '音乐原来是从那来的。',
         --single player		-- 物品名:"麦斯威尔的留声机"->单机 麦斯威尔留声机
        BOOMERANG = '我想我记得如何使用这个……是的，它又回到了我身边！', -- 物品名:"回旋镖" 制造描述:"来自澳洲土著。"
        PIGGUARD = '他看起来尤其讨厌。', -- 物品名:"猪人守卫"
        ABIGAIL = {
            LEVEL1 = {
                '可怜啊。她的时间到的有点太早。', -- 物品名:未找到 制造描述:未找到
                '可怜啊。她的时间到的有点太早。' -- 物品名:未找到 制造描述:未找到
            },
            LEVEL2 = {
                '可怜啊。她的时间到的有点太早。', -- 物品名:未找到 制造描述:未找到
                '可怜啊。她的时间到的有点太早。' -- 物品名:未找到 制造描述:未找到
            },
            LEVEL3 = {
                '可怜啊。她的时间到的有点太早。', -- 物品名:未找到 制造描述:未找到
                '可怜啊。她的时间到的有点太早。' -- 物品名:未找到 制造描述:未找到
            }
        },
        ADVENTURE_PORTAL = '可能发生的最坏情况是什么？', -- 物品名:"麦斯威尔之门"->单机 麦斯威尔之门
        AMULET = '后备计划。', -- 物品名:"重生护符" 制造描述:"逃离死神的魔爪。"
        ANIMAL_TRACK = '有东西往那边去了……希望是好吃的东西。', -- 物品名:"动物足迹"
        ARMORGRASS = '难道就没有更结实的东西吗？', -- 物品名:"草甲" 制造描述:"提供少许防护。"
        ARMORMARBLE = '结实是结实，但为什么一定要这么重呢？！', -- 物品名:"大理石甲" 制造描述:"它很重，但能够保护你。"
        ARMORWOOD = '现在已经够好了。', -- 物品名:"木甲" 制造描述:"为你抵御部分伤害。"
        ARMOR_SANITY = '滚。', -- 物品名:"暗夜甲" 制造描述:"保护你的躯体，但无法保护你的心智。"
        ASH = {
            GENERIC = '真是一团糟', -- 物品名:"灰烬"->默认
            REMAINS_GLOMMERFLOWER = '它没能承受住旅途跋涉。', -- 物品名:"灰烬"->单机专用
            REMAINS_EYE_BONE = '它没能承受住旅途跋涉。', -- 物品名:"灰烬"->单机专用
            REMAINS_THINGIE = '哦。我也记不得那是什么了。' -- 物品名:"灰烬"->单机专用
        },
        AXE = '我习惯于使用更精细的工具。', -- 物品名:"斧头" 制造描述:"砍倒树木！"
        BABYBEEFALO = {
            GENERIC = '如此年轻，如此充满生机。', -- 物品名:"小皮弗娄牛"->默认
            SLEEPING = '谁有时间睡觉？' -- 物品名:"小皮弗娄牛"->睡着了
        },
        BUNDLE = '捆绑起来以后可以快速有效地携带。', -- 物品名:"捆绑物资"
        BUNDLEWRAP = '这将使我的东西免受时间的摧残。', -- 物品名:"捆绑包装" 制造描述:"打包东西的必要工具。"
        BACKPACK = '能多装点东西总是好的。', -- 物品名:"背包" 制造描述:"携带更多物品。"
        BACONEGGS = '谁有时间坐下来吃早餐？', -- 物品名:"培根煎蛋"
        BANDAGE = '给我一点时间，我就能像雨一样好起来。', -- 物品名:"蜂蜜药膏" 制造描述:"愈合小伤口。"
        BASALT = '太硬了，敲不碎！', --removed		-- 物品名:"玄武岩"
        BEARDHAIR = '我知道这是荒野，但他就能到处丢胡须吗？', -- 物品名:"胡须"
        BEARGER = '熊和獾的所有最坏的部分都融为一体了。', -- 物品名:"熊獾"
        BEARGERVEST = '这很温馨。', -- 物品名:"熊皮背心" 制造描述:"像熊一样的背心。"
        ICEPACK = '这将使我的食物有更长的寿命。', -- 物品名:"保鲜背包" 制造描述:"保持新鲜感。"
        BEARGER_FUR = '当时不是他死就是我亡。', -- 物品名:"熊皮" 制造描述:"毛皮再生。"
        BEDROLL_STRAW = '那看起来很不舒服。', -- 物品名:"草席卷" 制造描述:"一觉睡到天亮。"
        BEEQUEEN = '真是一个可怕的想法！', -- 物品名:"蜂王"
        BEEQUEENHIVE = {
            GENERIC = '我可不要再拿蜂窝捣乱。', -- 物品名:"蜂蜜地块"->默认
            GROWING = '自从我上次见它后，它是不是长大了？' -- 物品名:"蜂蜜地块"->正在生长
        },
        BEEQUEENHIVEGROWN = '这让我有一种不好的感觉……', -- 物品名:"巨大蜂窝"
        BEEGUARD = '真烦。', -- 物品名:"嗡嗡蜜蜂"
        HIVEHAT = '真是奇怪又令人欢喜啊！', -- 物品名:"蜂王冠"
        MINISIGN = {
            GENERIC = '很明显，有人认为这很重要，所以挂上了一个标志。', -- 物品名:"小木牌"->默认
            UNDRAWN = '不如我来画个标志上去吧。' -- 物品名:"小木牌"->没有画画
        },
        MINISIGN_ITEM = '我最好找个地方放它。', -- 物品名:"小木牌" 制造描述:"用羽毛笔在这些上面画画。"
        BEE = {
            GENERIC = '它想蜇我，我可以从它那双炯炯有神的眼睛里看出来。', -- 物品名:"蜜蜂"->默认
            HELD = '这在当时似乎是个好主意。' -- 物品名:"蜜蜂"->拿在手里
        },
        BEEBOX = {
            READY = '终于好了！', -- 物品名:"蜂箱"->准备好的 满的 制造描述:"贮存你自己的蜜蜂。"
            FULLHONEY = '终于好了！', -- 物品名:"蜂箱"->蜂蜜满了 制造描述:"贮存你自己的蜜蜂。"
            GENERIC = '我听到一些嗡嗡声从这里传来。', -- 物品名:"蜂箱"->默认 制造描述:"贮存你自己的蜜蜂。"
            NOHONEY = '里面连一滴蜂蜜都没有。', -- 物品名:"蜂箱"->没有蜂蜜 制造描述:"贮存你自己的蜜蜂。"
            SOMEHONEY = '为什么酿蜜要这么久？', -- 物品名:"蜂箱"->有一些蜂蜜 制造描述:"贮存你自己的蜜蜂。"
            BURNT = '看起来它制造蜂蜜的日子已经过去。' -- 物品名:"蜂箱"->烧焦的 制造描述:"贮存你自己的蜜蜂。"
        },
        MUSHROOM_FARM = {
            STUFFED = '我要这么多蘑菇做什么？', -- 物品名:"蘑菇农场"->塞，满了？？ 制造描述:"种蘑菇。"
            LOTS = '蘑菇正在繁殖。', -- 物品名:"蘑菇农场"->很多 制造描述:"种蘑菇。"
            SOME = '哎呀好啊……蘑菇。', -- 物品名:"蘑菇农场"->有一些 制造描述:"种蘑菇。"
            EMPTY = '我很惊讶这根烂木头上没有长出蘑菇。', -- 物品名:"蘑菇农场" 制造描述:"种蘑菇。"
            ROTTEN = '它韶华不再。', -- 物品名:"蘑菇农场"->腐烂的--需要活木 制造描述:"种蘑菇。"
            BURNT = '最后，它成了一把漂亮的小营火。', -- 物品名:"蘑菇农场"->烧焦的 制造描述:"种蘑菇。"
            SNOWCOVERED = '已经冻得很结实了。' -- 物品名:"蘑菇农场"->被雪覆盖 制造描述:"种蘑菇。"
        },
        BEEFALO = {
            FOLLOWER = '花了足够长的时间，但我们终于相处融洽了。', -- 物品名:"皮弗娄牛"->追随者
            GENERIC = '一点也不宏伟，对不对？', -- 物品名:"皮弗娄牛"->默认
            NAKED = '对不起，我需要那件毛皮。', -- 物品名:"皮弗娄牛"->牛毛被刮干净了
            SLEEPING = '看看他，鼾声如雷的浪费宝贵的时间!', -- 物品名:"皮弗娄牛"->睡着了
            DOMESTICATED = '我们达成了谅解。', -- 物品名:"皮弗娄牛"->驯化牛
            ORNERY = '我不喜欢他脸上的表情……', -- 物品名:"皮弗娄牛"->战斗牛
            RIDER = '有了他的帮助，我能从旅行中省下宝贵的时间。', -- 物品名:"皮弗娄牛"->骑行牛
            PUDGY = '他的棱角变圆润了。', -- 物品名:"皮弗娄牛"->胖牛
            MYPARTNER = '他好像喜欢我。' -- 物品名:"皮弗娄牛"
        },
        BEEFALOHAT = '我还以为毛皮帽子会有多高级。', -- 物品名:"牛角帽" 制造描述:"成为牛群中的一员！连气味也变得一样。"
        BEEFALOWOOL = '皮弗娄牛会长回毛的。', -- 物品名:"牛毛"
        BEEHAT = '我喜欢有一层网罩在蜜蜂和我的脸之间。', -- 物品名:"养蜂帽" 制造描述:"防止被愤怒的蜜蜂蜇伤。"
        BEESWAX = '我要是知道怎么做蜡烛就好了。', -- 物品名:"蜂蜡" 制造描述:"一种有用的防腐蜂蜡。"
        BEEHIVE = '我敢肯定蜜蜂在里面像钟表一样辛勤工作。', -- 物品名:"蜂窝"
        BEEMINE = '你敢惹我，叫你尝尝蜜蜂的厉害！', -- 物品名:"蜜蜂地雷" 制造描述:"变成武器的蜜蜂。会出什么问题？"
        BEEMINE_MAXWELL = '被装在地雷里的狂暴蚊子！',
         --removed		-- 物品名:"麦斯威尔的蚊子陷阱"->单机 麦斯威尔的蚊子陷阱
        BERRIES = '这些够我吃一段时间了。', -- 物品名:"浆果"
        BERRIES_COOKED = '好吧，热乎乎的一团……', -- 物品名:"烤浆果"
        BERRIES_JUICY = '它们的时间转瞬即逝，味道也因此更加甜美。', -- 物品名:"多汁浆果"
        BERRIES_JUICY_COOKED = '结果比我预期的要好。', -- 物品名:"烤多汁浆果"
        BERRYBUSH = {
            BARREN = '它需要一些东西来让它重新生长。', -- 物品名:"浆果丛"
            WITHERED = '在这种高温下，一切都在枯萎。', -- 物品名:"浆果丛"->枯萎了
            GENERIC = '啊哈，一个现成的食物供给！', -- 物品名:"浆果丛"->默认
            PICKED = '为什么浆果需要这么长时间才能重新长出来？', -- 物品名:"浆果丛"->被采完了
            DISEASED = '它看上去很不舒服。',
             --removed		-- 物品名:"浆果丛"->生病了
            DISEASING = '呃...有些地方不对劲。',
             --removed		-- 物品名:"浆果丛"->正在生病？？
            BURNING = '这可不好。' -- 物品名:"浆果丛"->正在燃烧
        },
        BERRYBUSH_JUICY = {
            BARREN = '浆果树需要什么才能再次生长？', -- 物品名:"多汁浆果丛"
            WITHERED = '哦，这太让人伤心了！', -- 物品名:"多汁浆果丛"->枯萎了
            GENERIC = '我可以听到我的肚子在咕咕叫，那些浆果看起来很好吃……', -- 物品名:"多汁浆果丛"->默认
            PICKED = '浆果的生长速度如此之慢，令人沮丧！', -- 物品名:"多汁浆果丛"->被采完了
            DISEASED = '它看上去很不舒服。',
             --removed		-- 物品名:"多汁浆果丛"->生病了
            DISEASING = '呃...有些地方不对劲。',
             --removed		-- 物品名:"多汁浆果丛"->正在生病？？
            BURNING = '这可不好。' -- 物品名:"多汁浆果丛"->正在燃烧
        },
        BIGFOOT = '那真是一只巨大无比的脚。',
         --removed		-- 物品名:"大脚怪"->单机 大脚怪
        BIRDCAGE = {
            GENERIC = '现在就差一只小布谷鸟。', -- 物品名:"鸟笼"->默认 制造描述:"为你的鸟类朋友提供一个幸福的家。"
            OCCUPIED = '不是布谷鸟，但也足够接近了。', -- 物品名:"鸟笼"->被占领 制造描述:"为你的鸟类朋友提供一个幸福的家。"
            SLEEPING = '你可以用这些时间来生蛋！', -- 物品名:"鸟笼"->睡着了 制造描述:"为你的鸟类朋友提供一个幸福的家。"
            HUNGRY = '现在是喂食时间吗？', -- 物品名:"鸟笼"->有点饿了 制造描述:"为你的鸟类朋友提供一个幸福的家。"
            STARVING = '嗷，麻烦呐。我是不是又忘记喂你了？', -- 物品名:"鸟笼"->挨饿 制造描述:"为你的鸟类朋友提供一个幸福的家。"
            DEAD = '它也许……到点了。', -- 物品名:"鸟笼"->死了 制造描述:"为你的鸟类朋友提供一个幸福的家。"
            SKELETON = '嗷，麻烦呐。我把他都忘光了！' -- 物品名:"骷髅"
        },
        BIRDTRAP = '还好鸟类是愚蠢的，除了她……唉。', -- 物品名:"捕鸟陷阱" 制造描述:"捕捉会飞的动物。"
        CAVE_BANANA_BURNT = '没关系的! 只要把烧焦的边缘刮掉就可以了！', -- 物品名:"鸟笼"->烧焦的洞穴香蕉树 制造描述:"为你的鸟类朋友提供一个幸福的家。"
        BIRD_EGG = '什么蛋？', -- 物品名:"鸟蛋"
        BIRD_EGG_COOKED = '每当我做蛋时，它们最终不是没熟就是烧焦了。', -- 物品名:"熟鸟蛋"
        BISHOP = '问下，有见到我的朋友吗？', -- 物品名:"发条主教"
        BLOWDART_FIRE = '这简直就是玩火……', -- 物品名:"火焰吹箭" 制造描述:"向你的敌人喷火。"
        BLOWDART_SLEEP = '这应该可以帮助我避免一些冲突。', -- 物品名:"催眠吹箭" 制造描述:"催眠你的敌人。"
        BLOWDART_PIPE = '我喜欢可以从远处射击的武器。最好能在逃跑时使用。', -- 物品名:"吹箭" 制造描述:"向你的敌人喷射利齿。"
        BLOWDART_YELLOW = '好好电一下他们！', -- 物品名:"雷电吹箭" 制造描述:"朝你的敌人放闪电。"
        BLUEAMULET = '仅仅是看着它都让我背脊发凉。', -- 物品名:"寒冰护符" 制造描述:"多么冰冷酷炫的护符。"
        BLUEGEM = '为什么人们说“像海一样蓝”？大海也不是很蓝啊！', -- 物品名:"蓝宝石"
        BLUEPRINT = {
            COMMON = '这看起来很是有趣。', -- 物品名:"蓝图"
            RARE = '哦，这看起来非常有趣！' -- 物品名:"蓝图"->罕见的
        },
        SKETCH = '一个艺术项目？我真的有时间做这个吗？', -- 物品名:"{item}草图"
        COOKINGRECIPECARD = {
            GENERIC = '无论这里曾写过什么，都在时间长河中消失了。' -- 物品名:"{item}食谱卡"->默认
        },
        BLUE_CAP = '这……要是走投无路了，也算能吃吧。', -- 物品名:"采摘的蓝蘑菇"
        BLUE_CAP_COOKED = '我这么一搞更糟糕了。', -- 物品名:"熟蓝蘑菇"
        BLUE_MUSHROOM = {
            GENERIC = '一个蓝色的蘑菇。继续前进。', -- 物品名:"蓝蘑菇"->默认
            INGROUND = '有东西被塞进了地里。', -- 物品名:"蓝蘑菇"->在地里面
            PICKED = '没必要干等它重新长回来。' -- 物品名:"蓝蘑菇"->被采完了
        },
        BOARDS = '我已经看厌了它们。', -- 物品名:"木板" 制造描述:"更平直的木头。"
        BONESHARD = '这些骨头的主人已经在时光中消失。', -- 物品名:"骨头碎片"
        BONESTEW = '真的有必要在里面留下块骨头吗？', -- 物品名:"炖肉汤"
        BUGNET = '这比我用手去抓它们要快。', -- 物品名:"捕虫网" 制造描述:"抓虫子用的。"
        BUSHHAT = '躲藏总比战斗要好。', -- 物品名:"灌木丛帽" 制造描述:"很好的伪装！"
        BUTTER = '好吃。', -- 物品名:"黄油"
        BUTTERFLY = {
            GENERIC = '就是蝴蝶！', -- 物品名:"蝴蝶"->默认
            HELD = '吃了吧。' -- 物品名:"蝴蝶"->拿在手里
        },
        BUTTERFLYMUFFIN = '它有一种微妙的味道，轻盈而短暂。', -- 物品名:"蝴蝶松饼"
        BUTTERFLYWINGS = '吃了吧！', -- 物品名:"蝴蝶翅膀"
        BUZZARD = '你跟着我是浪费时间，秃鹫。', -- 物品名:"秃鹫"
        SHADOWDIGGER = '那些东西让我很紧张……', -- 物品名:"蝴蝶"
        SHADOWDANCER = '我不会很快忘记那一幕。', -- 物品名:"暗影舞者"
        CACTUS = {
            GENERIC = '真没必要这么麻烦。', -- 物品名:"仙人掌"->默认
            PICKED = '现在还要把所有的刺挑出来。多么单调的一种蔬菜。' -- 物品名:"仙人掌"->被采完了
        },
        CACTUS_MEAT_COOKED = '我总算能吃了！', -- 物品名:"熟仙人掌肉"
        CACTUS_MEAT = '现在还要把所有的刺挑出来。多么单调的一种蔬菜。', -- 物品名:"仙人掌肉"
        CACTUS_FLOWER = '我不会停下脚步去闻它。', -- 物品名:"仙人掌花"
        COLDFIRE = {
            EMBERS = '我需要给它一些燃烧的东西，快！', -- 物品名:"吸热营火"->即将熄灭 制造描述:"这火是越烤越冷的冰火。"
            GENERIC = '它能让暗影远离。', -- 物品名:"吸热营火"->默认 制造描述:"这火是越烤越冷的冰火。"
            HIGH = '哦，麻烦呐，我柴火加多了！', -- 物品名:"吸热营火"->高 制造描述:"这火是越烤越冷的冰火。"
            LOW = '如果想让它继续烧的话，它需要更多的燃料。', -- 物品名:"吸热营火"->低？ 制造描述:"这火是越烤越冷的冰火。"
            NORMAL = '这样感觉更好。', -- 物品名:"吸热营火"->普通 制造描述:"这火是越烤越冷的冰火。"
            OUT = '烧的时候还是挺美的。' -- 物品名:"吸热营火"->出去？外面？ 制造描述:"这火是越烤越冷的冰火。"
        },
        CAMPFIRE = {
            EMBERS = '我需要给它一些燃烧的东西，快！', -- 物品名:"营火"->即将熄灭 制造描述:"燃烧时发出光亮。"
            GENERIC = '它能让暗影远离。', -- 物品名:"营火"->默认 制造描述:"燃烧时发出光亮。"
            HIGH = '哦，麻烦呐，我柴火加多了！', -- 物品名:"营火"->高 制造描述:"燃烧时发出光亮。"
            LOW = '如果想让它继续烧的话，它需要更多的燃料。', -- 物品名:"营火"->低？ 制造描述:"燃烧时发出光亮。"
            NORMAL = '这样感觉更好。', -- 物品名:"营火"->普通 制造描述:"燃烧时发出光亮。"
            OUT = '烧的时候还是挺美的。' -- 物品名:"营火"->出去？外面？ 制造描述:"燃烧时发出光亮。"
        },
        CANE = '你不需要这个吧！', -- 物品名:"步行手杖" 制造描述:"泰然自若地快步走。"
        CATCOON = '滚。', -- 物品名:"浣猫"
        CATCOONDEN = {
            GENERIC = '看起来好像有什么东西在里面住了一段时间。', -- 物品名:"空心树桩"->默认
            EMPTY = '它被遗弃了。' -- 物品名:"空心树桩"
        },
        CATCOONHAT = '它们的牺牲将使我保持温暖和活力。', -- 物品名:"猫帽" 制造描述:"适合那些重视温暖甚于朋友的人。"
        COONTAIL = '我做了我必须做的事。', -- 物品名:"猫尾"
        CARROT = '从地里直接进到了我的嘴里。', -- 物品名:"胡萝卜"
        CARROT_COOKED = '我没有费心去调料。', -- 物品名:"烤胡萝卜"
        CARROT_PLANTED = '我可以现在拿，也可以以后再来拿。', -- 物品名:"胡萝卜"
        CARROT_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"椭圆形种子"
        CARTOGRAPHYDESK = {
            GENERIC = '如果绘制出已经去过的地方，我们就能更快地探索。', -- 物品名:"制图桌"->默认 制造描述:"准确地告诉别人你去过哪里。"
            BURNING = '这可不好。', -- 物品名:"制图桌"->正在燃烧 制造描述:"准确地告诉别人你去过哪里。"
            BURNT = '留下的除了回忆，就只有一些烟尘。' -- 物品名:"制图桌"->烧焦的 制造描述:"准确地告诉别人你去过哪里。"
        },
        WATERMELON_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"方形种子"
        CAVE_FERN = '真是非常有趣。总之……', -- 物品名:"蕨类植物"
        CHARCOAL = '它既然烧过一次，就还能再烧。', -- 物品名:"木炭"
        CHESSPIECE_PAWN = '如果足够聪明，即使是一个普通的小卒也能变得强大。', -- 物品名:"卒子雕塑"
        CHESSPIECE_ROOK = {
            GENERIC = '这些是谁雕刻的？', -- 物品名:"战车雕塑"->默认
            STRUGGLE = '你该上场了，我可懒得打这三。' -- 物品名:"战车雕塑"->三基佬棋子晃动
        },
        CHESSPIECE_KNIGHT = {
            GENERIC = '它看起来像一个超大的棋子。', -- 物品名:"骑士雕塑"->默认
            STRUGGLE = '你该上场了，我可懒得打这三。' -- 物品名:"骑士雕塑"->三基佬棋子晃动
        },
        CHESSPIECE_BISHOP = {
            GENERIC = '我猜想附近应该有一个大棋盘。', -- 物品名:"主教雕塑"->默认
            STRUGGLE = '你该上场了，我可懒得打这三。' -- 物品名:"主教雕塑"->三基佬棋子晃动
        },
        CHESSPIECE_MUSE = '她去了，然后就掉了脑袋。', -- 物品名:"女王雕塑"
        CHESSPIECE_FORMAL = '看起来他也丢了脑袋。', -- 物品名:"国王雕塑"
        CHESSPIECE_HORNUCOPIA = '我觉得我们被嘲弄了。', -- 物品名:"丰饶角雕塑"
        CHESSPIECE_PIPE = '一个静物。多么引人入胜。', -- 物品名:"泡泡烟斗雕塑"
        CHESSPIECE_DEERCLOPS = '别让我再看到它了。', -- 物品名:"独眼巨鹿雕塑"
        CHESSPIECE_BEARGER = '这不是我最美好的记忆之一。', -- 物品名:"熊獾雕塑"
        CHESSPIECE_MOOSEGOOSE = {
            '哦，很好，提醒了我另一次不愉快的遭遇。' -- 物品名:"麋鹿鹅雕塑" 制造描述:未找到
        },
        CHESSPIECE_DRAGONFLY = '一个艰难的日子的纪念碑。', -- 物品名:"龙蝇雕塑"
        CHESSPIECE_MINOTAUR = '这将有助于提醒我不要在洞穴里走得太远……', -- 物品名:"远古守护者雕塑"
        CHESSPIECE_BUTTERFLY = '它的美丽被永远地捕获了。', -- 物品名:"月蛾雕塑"
        CHESSPIECE_ANCHOR = '它哪里也不会去。我可以以后再看。', -- 物品名:"锚雕塑"
        CHESSPIECE_MOON = '我应该设计一个更好看的，可惜我没有钱找画师了。', -- 物品名:"“月亮” 雕塑"
        CHESSPIECE_CARRAT = '我不认为这真的需要一个雕像。', -- 物品名:"胡萝卜鼠雕塑"
        CHESSPIECE_MALBATROSS = '为什么会有这么多令人不快的雕像？', -- 物品名:"邪天翁雕塑"
        CHESSPIECE_CRABKING = '哦，是的，我记起来了。我差点被淹死。', -- 物品名:"帝王蟹雕塑"
        CHESSPIECE_TOADSTOOL = '如此有趣的记忆，差点被一只巨大的蟾蜍杀死。', -- 物品名:"毒菌蟾蜍雕塑"
        CHESSPIECE_STALKER = '呵呵呵呵呵。', -- 物品名:"远古织影者雕塑"
        CHESSPIECE_KLAUS = '我为什么要记住他？', -- 物品名:"克劳斯雕塑"
        CHESSPIECE_BEEQUEEN = '这将提醒我不要去捣鼓蜂窝。', -- 物品名:"蜂王雕塑"
        CHESSPIECE_ANTLION = '对。那次我差点被钉子刺伤。', -- 物品名:"蚁狮雕塑"
        CHESSPIECE_BEEFALO = '还是活的看着有意思。', -- 物品名:"皮弗娄牛雕塑"
        CHESSPIECE_KITCOON = '哦，一个岌岌可危的高大雕像，会出什么问题吗？', -- 物品名:"小浣猫雕塑"
        CHESSPIECE_CATCOON = '我愿意花时间和你玩。', -- 物品名:"浣猫雕塑"
        CHESSPIECE_MANRABBIT = '虽然让我分了神，但看着确实挺逗。', -- 物品名:"兔人雕塑"
        CHESSPIECE_GUARDIANPHASE3 = '你是真不知道冒险者多该死啊。', -- 物品名:"天体英雄雕塑"
        CHESSPIECE_EYEOFTERROR = '绝对吸引眼球。', -- 物品名:"恐怖之眼雕塑"
        CHESSPIECE_TWINSOFTERROR = '终于不用再看到这些了，眼睛也干净了。', -- 物品名:"双子魔眼雕塑"
        CHESSPIECE_DAYWALKER = '啊对了，我怎么能不记得那次我差点被砸成碎片？', -- 物品名:"噩梦猪人雕像"
        CHESSPIECE_DEERCLOPS_MUTATED = '太弱了。', -- 物品名:"晶体独眼巨鹿雕塑"
        CHESSPIECE_WARG_MUTATED = '太弱了。', -- 物品名:"附身座狼雕塑"
        CHESSPIECE_BEARGER_MUTATED = '太弱了。', -- 物品名:"装甲熊獾雕塑"
        CHESSJUNK1 = '我没看到做工好的发条。', -- 物品名:"损坏的发条装置"
        CHESSJUNK2 = '我怀疑固定这些东西是魔法而不是工艺。', -- 物品名:"损坏的发条装置"
        CHESSJUNK3 = '连一个小齿轮或钟摆都看不到。真荒唐！', -- 物品名:"损坏的发条装置"
        CHESTER = '是的，是的，你很可爱。请小心我的东西。', -- 物品名:"切斯特"
        CHESTER_EYEBONE = {
            GENERIC = '你曾经眨过眼吗？', -- 物品名:"眼骨"->默认
            WAITING = '它睡着了吗？' -- 物品名:"眼骨"->需要等待
        },
        COOKEDMANDRAKE = '事关生死存亡啊。', -- 物品名:"熟曼德拉草"
        COOKEDMEAT = '好吧，我想这是值得花时间来煮的。', -- 物品名:"熟肉"
        COOKEDMONSTERMEAT = '不知为何，烹饪它并没有让它变得更好。', -- 物品名:"熟怪物肉"
        COOKEDSMALLMEAT = '这至少足以让我在这段时间内不饿肚子。', -- 物品名:"熟小肉"
        COOKPOT = {
            COOKING_LONG = '这就是为什么我讨厌烹饪。烹饪要花很长时间！', -- 物品名:"烹饪锅"->饭还需要很久 制造描述:"制作更好的食物。"
            COOKING_SHORT = '现在应该差不多完成了，对吗？', -- 物品名:"烹饪锅"->饭快做好了 制造描述:"制作更好的食物。"
            DONE = '终于有了食物！', -- 物品名:"烹饪锅"->完成了 制造描述:"制作更好的食物。"
            EMPTY = '我想我就……找些种子或其他东西吃吧。', -- 物品名:"烹饪锅" 制造描述:"制作更好的食物。"
            BURNT = '哎，这是一个挫折。' -- 物品名:"烹饪锅"->烧焦的 制造描述:"制作更好的食物。"
        },
        CORN = '玉米的好处是你不必大费周章去烹饪。', -- 物品名:"玉米"
        CORN_COOKED = '应该加点黄油。', -- 物品名:"爆米花"
        CORN_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"簇状种子"
        CANARY = {
            GENERIC = '某种黄色的鸟。', -- 物品名:"金丝雀"->默认
            HELD = '我手里有只鸟……我在小心翼翼捧着这只鸟……' -- 物品名:"金丝雀"->拿在手里
        },
        CANARY_POISONED = '我想我应该把这作为离开的信号。', -- 物品名:"金丝雀（中毒）"
        CRITTERLAB = '暗影生物! 不，等等，是别的东西……', -- 物品名:"岩石巢穴"
        CRITTER_GLOMLING = '好了，好了。你很可爱。', -- 物品名:"小格罗姆"
        CRITTER_DRAGONLING = '我不是一个养宠物的人……但我会为你破例。', -- 物品名:"小龙蝇"
        CRITTER_LAMB = '看看那张皱巴巴的小脸！', -- 物品名:"小钢羊"
        CRITTER_PUPPY = '它大概想让人揉揉肚子。', -- 物品名:"小座狼"
        CRITTER_KITTEN = '你还真是个好奇的小家伙啊？', -- 物品名:"浣猫崽"
        CRITTER_PERDLING = '我在教她报时。', -- 物品名:"小火鸡"
        CRITTER_LUNARMOTHLING = '时间会飞，你也会飞！', -- 物品名:"小蛾子"
        CROW = {
            GENERIC = '只要你不带着任何坏兆头来，我们就会相处得很好。', -- 物品名:"乌鸦"->默认
            HELD = '萌！' -- 物品名:"乌鸦"->拿在手里
        },
        CUTGRASS = '就是草。', -- 物品名:"采下的草"
        CUTREEDS = '我先把它放在口袋里，以后再用它来做什么。', -- 物品名:"采下的芦苇"
        CUTSTONE = '就是石砖。', -- 物品名:"石砖" 制造描述:"切成正方形的石头。"
        DEADLYFEAST = '功效最强的大餐。', --unimplemented		-- 物品名:"致命盛宴"->致命盛宴 单机
        DEER = {
            GENERIC = '它该理发了……', -- 物品名:"无眼鹿"->默认
            ANTLER = '把你的鹿角留给自己吧!' -- 物品名:"无眼鹿"
        },
        DEER_ANTLER = '这看起来像一个关键的拼图……', -- 物品名:"鹿角"
        DEER_GEMMED = '它被那头野兽控制着！', -- 物品名:"无眼鹿"
        DEERCLOPS = '我们真的要再来一次吗？', -- 物品名:"独眼巨鹿"
        DEERCLOPS_EYEBALL = '我敢打赌，那个生物没有预见到它的结局会是这样。', -- 物品名:"独眼巨鹿眼球"
        EYEBRELLAHAT = '不用淋雨了……', -- 物品名:"眼球伞" 制造描述:"面向天空的眼球让你保持干燥。"
        DEPLETED_GRASS = {
            GENERIC = '它还没有足够的时间重新长出来。' -- 物品名:"草"->默认
        },
        GOGGLESHAT = '我认为它与我穿的衣服很相称。', -- 物品名:"时髦的护目镜" 制造描述:"你可以瞪大眼睛看装饰性护目镜。"
        DESERTHAT = '不幸的是，它对时间的流沙并没有作用。', -- 物品名:"沙漠护目镜" 制造描述:"从你的眼睛里把沙子揉出来。"
        ANTLIONHAT = '天哪，真是一顶奇特的帽子！', -- 物品名:"刮地皮头盔" 制造描述:"旧地不去，新地不来。"
        DIRTPILE = '它有一些令人无法抗拒的可疑之处……', -- 物品名:"可疑的土堆"
        DIVININGROD = {
            COLD = '信号很弱。', --singleplayer		-- 物品名:"冻伤"->冷了
            GENERIC = '它是某种自动引导装置。', --singleplayer		-- 物品名:"探测杖"->默认 制造描述:"肯定有方法可以离开这里..."
            HOT = '这东西发疯了！', --singleplayer		-- 物品名:"中暑"->热了
            WARM = '我在正确的方向上。', --singleplayer		-- 物品名:"探测杖"->温暖 制造描述:"肯定有方法可以离开这里..."
            WARMER = '肯定很接近了。' --singleplayer		-- 物品名:"探测杖" 制造描述:"肯定有方法可以离开这里..."
        },
        DIVININGRODBASE = {
            GENERIC = '我想知道它有什么用。', --singleplayer		-- 物品名:"探测杖底座"->默认
            READY = '看起来它需要一把大钥匙。', --singleplayer		-- 物品名:"探测杖底座"->准备好的 满的
            UNLOCKED = '现在机器可以工作了！' --singleplayer		-- 物品名:"探测杖底座"->解锁了
        },
        DIVININGRODSTART = '那根手杖看起来很有用！', --singleplayer		-- 物品名:"探测杖底座"->单机探测杖底座
        DRAGONFLY = '哼，我今天还就不想躲避那只着火的虫怪了。', -- 物品名:"龙蝇"
        ARMORDRAGONFLY = '我认为它在我身上比在虫子身上更好看。', -- 物品名:"鳞甲" 制造描述:"脾气火爆的盔甲。"
        DRAGON_SCALES = '防火材料在过去一直对我很有帮助。还有未来，想起来了。', -- 物品名:"鳞片"
        DRAGONFLYCHEST = '既然不用担心我的东西被烧毁，我可以担心其他的事情了。', -- 物品名:"龙鳞宝箱" 制造描述:"一种结实且防火的容器。"
        DRAGONFLYFURNACE = {
            HAMMERED = '如果我能够回到过去，撤销这个决定就好了。如果啊。', -- 物品名:"龙鳞火炉"->被锤了 制造描述:"给自己建造一个苍蝇暖炉。"
            GENERIC = '那我就花点时间来暖一暖。', --no gems		-- 物品名:"龙鳞火炉"->默认 制造描述:"给自己建造一个苍蝇暖炉。"
            NORMAL = '那我就花点时间来暖一暖。', --one gem		-- 物品名:"龙鳞火炉"->普通 制造描述:"给自己建造一个苍蝇暖炉。"
            HIGH = '那我就花点时间来暖一暖。' --two gems		-- 物品名:"龙鳞火炉"->高 制造描述:"给自己建造一个苍蝇暖炉。"
        },
        HUTCH = '你带着自己的灯来？真令人刮目相看！', -- 物品名:"哈奇"
        HUTCH_FISHBOWL = {
            GENERIC = '谁会把鱼缸留在洞穴里？', -- 物品名:"星空"->默认
            WAITING = '我想他的时间可能已经用完了……' -- 物品名:"星空"->需要等待
        },
        LAVASPIT = {
            HOT = '烫!！', -- 物品名:"中暑"->热了
            COOL = '摸起来应该是安全的。可我为什么要摸呢？' -- 物品名:"龙蝇唾液"
        },
        LAVA_POND = '不能下去游泳。', -- 物品名:"岩浆池"
        LAVAE = '啧啧，她就这样让她的孩子们乱跑！', -- 物品名:"岩浆虫"
        LAVAE_COCOON = '它……是死了吗？', -- 物品名:"冷冻虫卵"
        LAVAE_PET = {
            STARVING = '嗷，麻烦呐。我又忘记喂你了吗？', -- 物品名:"超级可爱岩浆虫"->挨饿
            HUNGRY = '又到了喂食时间了吗？', -- 物品名:"超级可爱岩浆虫"->有点饿了
            CONTENT = '作为一只被熔岩覆盖的虫子，她看起来已经很高兴了。', -- 物品名:"超级可爱岩浆虫"->内容？？？、
            GENERIC = '出于某种原因，她似乎很喜欢我。' -- 物品名:"超级可爱岩浆虫"->默认
        },
        LAVAE_EGG = {
            GENERIC = '它是热的，我想这只蛋已经熟了。' -- 物品名:"岩浆虫卵"->默认
        },
        LAVAE_EGG_CRACKED = {
            COLD = '它正在冷却，我不认为这是好事。', -- 物品名:"冻伤"->冷了
            COMFY = '我几乎可以想象它在微笑。' -- 物品名:"岩浆虫卵"->舒服的
        },
        LAVAE_TOOTH = '这让人感觉到隐隐约约的威胁。', -- 物品名:"岩浆虫尖牙"
        DRAGONFRUIT = '与我在这里吃过的最奇怪的东西相比，还差得远着呢。', -- 物品名:"火龙果"
        DRAGONFRUIT_COOKED = '我总是忘记它里面是什么样子的。', -- 物品名:"熟火龙果"
        DRAGONFRUIT_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"球茎状种子"
        DRAGONPIE = '如果有疑问，就把它烤成馅饼。', -- 物品名:"火龙果派"
        DRUMSTICK = '我忙着呢，它现在已经很好了。', -- 物品名:"鸟腿"
        DRUMSTICK_COOKED = '为什么我总是忘记熟肉的味道有多好……', -- 物品名:"炸鸟腿"
        DUG_BERRYBUSH = '没有时间挑了，我全部带走好了！', -- 物品名:"浆果丛"
        DUG_BERRYBUSH_JUICY = '如果我把这个带到营地附近，会节省我宝贵的时间。', -- 物品名:"多汁浆果丛"
        DUG_GRASS = '我想到了一个更好的地方。', -- 物品名:"草丛"
        DUG_MARSH_BUSH = '我以后给它找个地方。或者去以前也行。', -- 物品名:"尖刺灌木"
        DUG_SAPLING = '我以后给它找个地方。或者去以前也行。', -- 物品名:"树苗"
        DURIAN = '我永远无法忘记这样的气味。', -- 物品名:"榴莲"
        DURIAN_COOKED = '它的味道比它的气味要好，但也好不到哪去。', -- 物品名:"超臭榴莲"
        DURIAN_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"脆籽荚"
        EARMUFFSHAT = '即使其他补位冻僵了，至少我的耳朵会很舒服。', -- 物品名:"兔耳罩" 制造描述:"毛茸茸的保暖物品。"
        EGGPLANT = '如果你眯起眼睛，它看起来有点像一个巨大的软糖。', -- 物品名:"茄子"
        EGGPLANT_COOKED = '好吧，幻觉破灭了。', -- 物品名:"烤茄子"
        EGGPLANT_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"漩涡种子"
        ENDTABLE = {
            BURNT = '本来可以不这样的。', -- 物品名:"茶几"->烧焦的 制造描述:"一张装饰桌。"
            GENERIC = '我的原则是不要相信在野外发现的花哨桌子。', -- 物品名:"茶几"->默认 制造描述:"一张装饰桌。"
            EMPTY = '有人忘记在花瓶里放花了。也许是我……', -- 物品名:"茶几" 制造描述:"一张装饰桌。"
            WILTED = '它的年龄已经开始显现。', -- 物品名:"茶几"->枯萎的 制造描述:"一张装饰桌。"
            FRESHLIGHT = '像新的一样好。', -- 物品名:"茶几"->茶几-新的发光的 制造描述:"一张装饰桌。"
            OLDLIGHT = '哦，不，我是不是又忘记换灯泡了？' -- will be wilted soon, light radius will be very small at this point		-- 物品名:"茶几"->茶几-旧的发光的 制造描述:"一张装饰桌。"
        },
        DECIDUOUSTREE = {
            BURNING = '也许那是注定的。', -- 物品名:"桦栗树"->正在燃烧
            BURNT = '哎，也只能接受发生的事情了。现在只好如此。', -- 物品名:"桦栗树"->烧焦的
            CHOPPED = '它在这个世界上的时间被缩短了。', -- 物品名:"桦栗树"->被砍了
            POISON = '管好你自己的事，你这棵讨厌的树！', -- 物品名:"桦栗树"->毒化的
            GENERIC = '这肯定是一棵树。' -- 物品名:"桦栗树"->默认
        },
        ACORN = '假以时日，它将长成一棵新树。', -- 物品名:"桦栗果"
        ACORN_SAPLING = '树木的生长速度是如此之慢，令人痛苦。', -- 物品名:"桦栗树树苗"
        ACORN_COOKED = '也许在另一条时间线里，它长成了一棵树。', -- 物品名:"烤桦栗果"
        BIRCHNUTDRAKE = '我要把你踩回地里，你这个超大号的苗子！', -- 物品名:"桦栗果精"
        EVERGREEN = {
            BURNING = '也许那是注定的。', -- 物品名:"常青树"->正在燃烧
            BURNT = '哎，也只能接受发生的事情了。现在只好如此。', -- 物品名:"常青树"->烧焦的
            CHOPPED = '它在这个世界上的时间被缩短了。', -- 物品名:"常青树"->被砍了
            GENERIC = '只是另一棵树而已。' -- 物品名:"常青树"->默认
        },
        EVERGREEN_SPARSE = {
            BURNING = '也许那是注定的。', -- 物品名:"粗壮常青树"->正在燃烧
            BURNT = '哎，也只能接受发生的事情了。现在只好如此。', -- 物品名:"粗壮常青树"->烧焦的
            CHOPPED = '它在这个世界上的时间被缩短了。', -- 物品名:"粗壮常青树"->被砍了
            GENERIC = '它看上去生病了。' -- 物品名:"粗壮常青树"->默认
        },
        TWIGGYTREE = {
            BURNING = '也许那是注定的。', -- 物品名:"多枝树"->正在燃烧
            BURNT = '哎，也只能接受发生的事情了。现在只好如此。', -- 物品名:"多枝树"->烧焦的
            CHOPPED = '它在这个世界上的时间被缩短了。', -- 物品名:"多枝树"->被砍了
            GENERIC = '几乎不能算树，更像是一捆可悲的棍子。', -- 物品名:"多枝树"->默认
            DISEASED = '它看起来很糟糕。比平常还严重。' --unimplemented		-- 物品名:"多枝树"->生病了
        },
        TWIGGY_NUT_SAPLING = '祝你好运，乱糟糟的小树。', -- 物品名:"多枝树苗"
        TWIGGY_OLD = '它已经过了盛年。', -- 物品名:"多枝树"
        TWIGGY_NUT = '树的开始。', -- 物品名:"多枝树种"->多枝树果
        EYEPLANT = '哦，别盯着看了！管好你自己的事！', -- 物品名:"眼球草"
        INSPECTSELF = '哈！还在踢！', -- 物品名:"多枝树"->检查自己
        FARMPLOT = {
            GENERIC = '园艺是如此耗时。', -- 物品名:未找到
            GROWING = '为什么你就不能长得更快呢？', -- 物品名:未找到
            NEEDSFERTILIZER = '施点肥应该能加快进度。', -- 物品名:未找到
            BURNT = '那么多时间，都被浪费了！' -- 物品名:未找到
        },
        FEATHERHAT = '哦，真是不拘一格！', -- 物品名:"羽毛帽" 制造描述:"头上的装饰。"
        FEATHER_CROW = '一根黑色的羽毛。', -- 物品名:"黑色羽毛"
        FEATHER_ROBIN = '一根红色的羽毛。', -- 物品名:"红色羽毛"
        FEATHER_ROBIN_WINTER = '一根发白的羽毛。', -- 物品名:"蓝色羽毛"
        FEATHER_CANARY = '一根黄色的羽毛。', -- 物品名:"黄色羽毛"
        FEATHERPENCIL = '适合匆忙中记下笔记。', -- 物品名:"羽毛笔" 制造描述:"是的，羽毛是必须的。"
        COOKBOOK = '烹饪太花时间了，看看这里有多少原料和方法！', -- 物品名:"烹饪指南" 制造描述:"查看你收集的食谱。"
        FEM_PUPPET = '她被困住了！', --single player		-- 物品名:未找到
        FIREFLIES = {
            GENERIC = '只要有光就行，我不挑。', -- 物品名:"萤火虫"->默认
            HELD = '携带一个小小的应急灯总不会错。' -- 物品名:"萤火虫"->拿在手里
        },
        FIREHOUND = '像你这种家伙还不足以让我走向烈火结局。', -- 物品名:"红色猎犬"
        FIREPIT = {
            EMBERS = '我需要给它一些燃烧的东西，快！', -- 物品名:"火坑"->即将熄灭 制造描述:"一种更安全、更高效的营火。"
            GENERIC = '它能让暗影远离。', -- 物品名:"火坑"->默认 制造描述:"一种更安全、更高效的营火。"
            HIGH = '哦，麻烦呐，我柴火加多了！', -- 物品名:"火坑"->高 制造描述:"一种更安全、更高效的营火。"
            LOW = '如果想让它继续烧的话，它需要更多的燃料。', -- 物品名:"火坑"->低？ 制造描述:"一种更安全、更高效的营火。"
            NORMAL = '这样感觉更好。', -- 物品名:"火坑"->普通 制造描述:"一种更安全、更高效的营火。"
            OUT = '我马上就能让它重新烧起来。' -- 物品名:"火坑"->出去？外面？ 制造描述:"一种更安全、更高效的营火。"
        },
        COLDFIREPIT = {
            EMBERS = '我需要给它一些燃烧的东西，快！', -- 物品名:"吸热火坑"->即将熄灭 制造描述:"燃烧效率更高，但仍然越烤越冷。"
            GENERIC = '它能让暗影远离。', -- 物品名:"吸热火坑"->默认 制造描述:"燃烧效率更高，但仍然越烤越冷。"
            HIGH = '哦，麻烦呐，我柴火加多了！', -- 物品名:"吸热火坑"->高 制造描述:"燃烧效率更高，但仍然越烤越冷。"
            LOW = '如果想让它继续烧的话，它需要更多的燃料。', -- 物品名:"吸热火坑"->低？ 制造描述:"燃烧效率更高，但仍然越烤越冷。"
            NORMAL = '这样感觉更好。', -- 物品名:"吸热火坑"->普通 制造描述:"燃烧效率更高，但仍然越烤越冷。"
            OUT = '我马上就能让它重新烧起来。' -- 物品名:"吸热火坑"->出去？外面？ 制造描述:"燃烧效率更高，但仍然越烤越冷。"
        },
        FIRESTAFF = '最好小心一点，我们不希望重蹈上次的覆辙。', -- 物品名:"火魔杖" 制造描述:"利用火焰的力量！"
        FIRESUPPRESSOR = {
            ON = '还好我们为意外情况做了准备。', -- 物品名:"雪球发射器"->开启 制造描述:"拯救植物，扑灭火焰，可添加燃料。"
            OFF = '随时做好投掷准备。', -- 物品名:"雪球发射器"->关闭 制造描述:"拯救植物，扑灭火焰，可添加燃料。"
            LOWFUEL = '它的发条开始松弛了。' -- 物品名:"雪球发射器"->燃料不足 制造描述:"拯救植物，扑灭火焰，可添加燃料。"
        },
        FISH = '是条像样的鱼。', -- 物品名:"鱼"
        FISHINGROD = '我不知道我是否有足够的耐心成为一名渔妇……', -- 物品名:"淡水钓竿" 制造描述:"去钓鱼。为了鱼。"
        FISHSTICKS = '如果我有东西可以蘸着吃就好了。', -- 物品名:"炸鱼排"
        FISHTACOS = '我要买个玉米卷带走！', -- 物品名:"鱼肉玉米卷"
        FISH_COOKED = '如果我有一点醋就好了。', -- 物品名:"熟鱼"
        FLINT = '啊哈，我发现了一些燧石！', -- 物品名:"燧石"
        FLOWER = {
            GENERIC = '我有比摘花更紧迫的事情要做。', -- 物品名:"花"->默认
            ROSE = '我没有时间停下来闻玫瑰花。' -- 物品名:"花"->玫瑰
        },
        FLOWER_WITHERED = '时间夺取了它。', -- 物品名:"枯萎的花"
        FLOWERHAT = '哦，真是异想天开啊！', -- 物品名:"花环" 制造描述:"放松神经的东西。"
        FLOWER_EVIL = '那朵花有问题。', -- 物品名:"邪恶花"
        FOLIAGE = '我是否要停下脚步，检查我发现的每一点绿色植物？', -- 物品名:"蕨叶"
        FOOTBALLHAT = '为什么要遮住我的头。', -- 物品名:"橄榄球头盔" 制造描述:"保护你的脑壳。"
        FOSSIL_PIECE = '……', -- 物品名:"化石碎片"
        FOSSIL_STALKER = {
            GENERIC = '好像少了点什么。', -- 物品名:"奇异的骨架"->默认
            FUNNY = '嗷，麻烦呐。这看起来一点都不对。', -- 物品名:"奇异的骨架"->趣味？？
            COMPLETE = '是时候了。' -- 物品名:"奇异的骨架"->准备好了
        },
        STALKER = '你好。', -- 物品名:"复活的骨架"
        STALKER_ATRIUM = '这是你的命运。', -- 物品名:"远古织影者"
        STALKER_MINION = '给我走开！', -- 物品名:"编织暗影"
        THURIBLE = '我不相信它。', -- 物品名:"暗影香炉"
        ATRIUM_OVERGROWTH = '它说的大概是“回头是岸”吧。', -- 物品名:"远古方尖碑"
        FROG = {
            DEAD = '他已经跳出了他的最后一步。', -- 物品名:"青蛙"->死了
            GENERIC = '别想了，青蛙们，我永远比你们早一步。', -- 物品名:"青蛙"->默认
            SLEEPING = '睡得多香。' -- 物品名:"青蛙"->睡着了
        },
        FROGGLEBUNWICH = '有人告诉我这是当地的一种美食。', -- 物品名:"蛙腿三明治"
        FROGLEGS = '这只青蛙不再踢了。', -- 物品名:"蛙腿"
        FROGLEGS_COOKED = '至少他们停止了抽搐。', -- 物品名:"熟蛙腿"
        FRUITMEDLEY = '真清爽。', -- 物品名:"水果圣代"
        FURTUFT = '等一下，我的头发是不是掉了？！', -- 物品名:"毛丛"
        GEARS = '不幸的是，它们对怀表来说太大了。', -- 物品名:"齿轮"
        GHOST = '离我远一点! 我不会变得像你一样的!', -- 物品名:"幽灵"
        GOLDENAXE = '在这里，我能用黄金做什么？', -- 物品名:"黄金斧头" 制造描述:"砍树也要有格调！"
        GOLDENPICKAXE = '别多想，它就会有用的。', -- 物品名:"黄金鹤嘴锄" 制造描述:"像大Boss一样砸碎岩石。"
        GOLDENPITCHFORK = '总不能白白浪费这些黄金吧。', -- 物品名:"黄金干草叉" 制造描述:"重新布置整个世界。"
        GOLDENSHOVEL = '如果我必须花时间挖洞，那就必须挖出风格。', -- 物品名:"黄金铲子" 制造描述:"挖掘作用相同，但使用寿命更长。"
        GOLDNUGGET = '嗯……纯金怀表会不会太夸张？', -- 物品名:"金块"
        GRASS = {
            BARREN = '我也许可以找到一些东西来加速它的成长。', -- 物品名:"草"
            WITHERED = '这么热的天气什么也生长不了。', -- 物品名:"草"->枯萎了
            BURNING = '这可不好……', -- 物品名:"草"->正在燃烧
            GENERIC = '草。野外就是草多。', -- 物品名:"草"->默认
            PICKED = '而现在它将开始痛苦而缓慢的生长过程。', -- 物品名:"草"->被采完了
            DISEASED = '它看上去很不舒服。', --unimplemented		-- 物品名:"草"->生病了
            DISEASING = '呃...有些地方不对劲。' --unimplemented		-- 物品名:"草"->正在生病？？
        },
        GRASSGEKKO = {
            GENERIC = '瞧瞧这些跳跃的小东西。这么跳着就挺好的。', -- 物品名:"草壁虎"->默认
            DISEASED = '它看上去真的很不舒服。' --unimplemented		-- 物品名:"草壁虎"->生病了
        },
        GREEN_CAP = '呃，蘑菇……', -- 物品名:"采摘的绿蘑菇"
        GREEN_CAP_COOKED = '不知道为什么，现在想想吃起来也不那么恶心了。', -- 物品名:"熟绿蘑菇"
        GREEN_MUSHROOM = {
            GENERIC = '就是一颗绿蘑菇。', -- 物品名:"绿蘑菇"->默认
            INGROUND = '多半是颗蘑菇。', -- 物品名:"绿蘑菇"->在地里面
            PICKED = '没必要干等它重新长回来。' -- 物品名:"绿蘑菇"->被采完了
        },
        GUNPOWDER = '就要回头看爆炸。', -- 物品名:"火药" 制造描述:"一把火药。"
        HAMBAT = '嗯，那头猪是自找的。', -- 物品名:"火腿棒" 制造描述:"舍不得火腿套不着狼。"
        HAMMER = '有破才有立。', -- 物品名:"锤子" 制造描述:"敲碎各种东西。"
        HEALINGSALVE = '那个没用，我需要的是时间！', -- 物品名:"治疗药膏" 制造描述:"对割伤和擦伤进行消毒杀菌。"
        HEATROCK = {
            FROZEN = '冰凉冰凉。', -- 物品名:"暖石"->冰冻 制造描述:"储存热能供旅行途中使用。"
            COLD = '摸起来凉透了。', -- 物品名:"冻伤"->冷了
            GENERIC = '这不是一块普通的石头。', -- 物品名:"暖石"->默认 制造描述:"储存热能供旅行途中使用。"
            WARM = '暖和一下。', -- 物品名:"暖石"->温暖 制造描述:"储存热能供旅行途中使用。"
            HOT = '我差点把手指烧焦！' -- 物品名:"中暑"->热了
        },
        HOME = '我无意中进入了某人的家。', -- 物品名:"暖石"->没调用 制造描述:"储存热能供旅行途中使用。"
        HOMESIGN = {
            GENERIC = '是个指示牌。', -- 物品名:"木牌"->默认 制造描述:"在世界中留下你的标记。"
            UNWRITTEN = '什么都没写。毫无帮助的指示牌！', -- 物品名:"木牌"->没有写字 制造描述:"在世界中留下你的标记。"
            BURNT = '此乃不祥之兆。' -- 物品名:"木牌"->烧焦的 制造描述:"在世界中留下你的标记。"
        },
        ARROWSIGN_POST = {
            GENERIC = '那是一种征兆。', -- 物品名:"指路木牌"->默认 制造描述:"对这个世界指指点点。或许只是打下手势。"
            UNWRITTEN = '什么都没写。毫无帮助的指示牌！', -- 物品名:"指路木牌"->没有写字 制造描述:"对这个世界指指点点。或许只是打下手势。"
            BURNT = '此乃不祥之兆。' -- 物品名:"指路木牌"->烧焦的 制造描述:"对这个世界指指点点。或许只是打下手势。"
        },
        ARROWSIGN_PANEL = {
            GENERIC = '是个指示牌。', -- 物品名:"指路木牌"->默认
            UNWRITTEN = '什么都没写。毫无帮助的指示牌！', -- 物品名:"指路木牌"->没有写字
            BURNT = '此乃不祥之兆。' -- 物品名:"指路木牌"->烧焦的
        },
        HONEY = '这小东西刚好可以满足我的甜食的渴望。', -- 物品名:"蜂蜜"
        HONEYCOMB = '挑出去蜜蜂以后就会好很多。', -- 物品名:"蜜脾"
        HONEYHAM = '用蜂蜜腌东西一准不会错。', -- 物品名:"蜜汁火腿"
        HONEYNUGGETS = '蘸酱是我最喜欢的部分。', -- 物品名:"蜜汁卤肉"
        HORN = '它从前属于一头皮弗娄牛。', -- 物品名:"牛角"
        HOUND = '别过来！', -- 物品名:"猎犬"
        HOUNDCORPSE = {
            GENERIC = '。。。', -- 物品名:"猎犬"->默认
            BURNING = '。。。', -- 物品名:"猎犬"->正在燃烧
            REVIVING = '。。。' -- 物品名:"猎犬"
        },
        HOUNDBONE = '一堆旧骨头。不要纠结了。', -- 物品名:"犬骨"
        HOUNDMOUND = '呃，一堆枯骨搭成的住所！', -- 物品名:"猎犬丘"
        ICEBOX = '我完全赞成让东西更持久。', -- 物品名:"冰箱" 制造描述:"延缓食物变质。"
        ICEHAT = '简单而有效。', -- 物品名:"冰帽" 制造描述:"用科学技术合成的冰帽。"
        ICEHOUND = '我是怎么得罪你了？！', -- 物品名:"蓝色猎犬"
        INSANITYROCK = {
            ACTIVE = '这周围弥漫着暗影魔法的恶臭。', -- 物品名:"方尖碑"->激活了
            INACTIVE = '这看起来非常令人怀疑。' -- 物品名:"方尖碑"->没有激活
        },
        JAMMYPRESERVES = '一个罐子！这就是我忘记的东西！', -- 物品名:"果酱"
        KABOBS = '不需要盘子或餐具，只要拿着就可以走了！', -- 物品名:"肉串"
        KILLERBEE = {
            GENERIC = '我不会被你们杀死的，蜜蜂！', -- 物品名:"杀人蜂"->默认
            HELD = '我不太清楚我在这里的计划是什么。' -- 物品名:"杀人蜂"->拿在手里
        },
        KNIGHT = '冰箱你好……', -- 物品名:"发条骑士"
        KOALEFANT_SUMMER = '它正处于生命的春天。', -- 物品名:"考拉象"
        KOALEFANT_WINTER = '它长出了一件温暖的冬衣。', -- 物品名:"考拉象"
        KOALEFANT_CARCASS = '它到点了。', -- 物品名:"考拉象尸体"
        KRAMPUS = '他为这个季节带来了不悦。', -- 物品名:"坎普斯"
        KRAMPUS_SACK = '给我的吗？你不用这么客气！', -- 物品名:"坎普斯背包"
        LEIF = '连树都不放过我！', -- 物品名:"树精守卫"
        LEIF_SPARSE = '连树都不放过我！', -- 物品名:"树精守卫"
        LIGHTER = '哦，你在好几条时间线上都造成了破坏……', -- 物品名:"薇洛的打火机" 制造描述:"火焰在雨中彻夜燃烧。"
        LIGHTNING_ROD = {
            CHARGED = '嗯，避雷针是个好主意。', -- 物品名:"避雷针" 制造描述:"防雷劈。"
            GENERIC = '以防天空打起鬼主意。' -- 物品名:"避雷针"->默认 制造描述:"防雷劈。"
        },
        LIGHTNINGGOAT = {
            GENERIC = '过来，你这只老山羊！', -- 物品名:"伏特羊"->默认
            CHARGED = '你怎么了？你看起来一塌糊涂！' -- 物品名:"伏特羊"
        },
        LIGHTNINGGOATHORN = '曲曲折折的，如同时间一样。', -- 物品名:"伏特羊角"
        GOATMILK = '味道无法形容。', -- 物品名:"带电的羊奶"
        LITTLE_WALRUS = '啊，青春。趁你还有的时候抓紧享受它吧。', -- 物品名:"小海象"
        LIVINGLOG = '这根木头有点过于活泼了。', -- 物品名:"活木头" 制造描述:"投身制作，置身其中。"
        LOG = {
            BURNING = '木头用来做那个刚好。', -- 物品名:"木头"->正在燃烧
            GENERIC = '如你所料，它是树上下来的。' -- 物品名:"木头"->默认
        },
        LUCY = '是叫“露西”吧？嗷，麻烦呐。这下他让我也开始跟它对话了！', -- 物品名:"露西斧"
        LUREPLANT = '那种老把戏骗不了我！', -- 物品名:"食人花"
        LUREPLANTBULB = '软绵绵的，令人不快……', -- 物品名:"食人花种子"
        MALE_PUPPET = '他被困住了！', --single player		-- 物品名:"木头"
        MANDRAKE_ACTIVE = '请你停止随时插话！', -- 物品名:"曼德拉草"
        MANDRAKE_PLANTED = '这是什么？萝卜吗？', -- 物品名:"曼德拉草"
        MANDRAKE = '哦，我简直不忍直视……', -- 物品名:"曼德拉草"
        MANDRAKESOUP = '也许换条时间线我们就不用以这样的方式见面了。', -- 物品名:"曼德拉草汤"
        MANDRAKE_COOKED = '就只是烤熟的蔬菜而已，不要多想……', -- 物品名:"木头"
        MAPSCROLL = '现在还不是地图，但将来会是。', -- 物品名:"地图卷轴" 制造描述:"向别人展示你看到什么！"
        MARBLE = '一种永不过时的建筑材料。', -- 物品名:"大理石"
        MARBLEBEAN = '那颗豆子看起来是石化了。', -- 物品名:"大理石豌豆" 制造描述:"种植一片大理石森林。"
        MARBLEBEAN_SAPLING = '给大理石浇水它会长大么？', -- 物品名:"大理石芽"
        MARBLESHRUB = '枝繁叶茂的雕塑。', -- 物品名:"大理石灌木"
        MARBLEPILLAR = '无论它曾经是什么建筑的一部分，都已经在时间长河中消失了。', -- 物品名:"大理石柱"
        MARBLETREE = '多么令人愉快的奇特之树啊。', -- 物品名:"大理石树"
        MARSH_BUSH = {
            BURNT = '我们总能从错误中学习到教训。', -- 物品名:"尖刺灌木"->烧焦的
            BURNING = '这场火果然分秒必争！', -- 物品名:"尖刺灌木"->正在燃烧
            GENERIC = '称其为灌木太善良了。', -- 物品名:"尖刺灌木"->默认
            PICKED = '那样做一点也不明智。' -- 物品名:"尖刺灌木"->被采完了
        },
        BURNT_MARSH_BUSH = '从时间轴上抹去了。', -- 物品名:"尖刺灌木"
        MARSH_PLANT = '我不能见到株绿色植物就掉下来看。', -- 物品名:"植物"
        MARSH_TREE = {
            BURNING = '它要烧没了。', -- 物品名:"针刺树"->正在燃烧
            BURNT = '本来也是一株难看的树。', -- 物品名:"针刺树"->烧焦的
            CHOPPED = '在它最茁壮的时候割下。', -- 物品名:"针刺树"->被砍了
            GENERIC = '盘根错节的一颗老树。' -- 物品名:"针刺树"->默认
        },
        MAXWELL = '我恨那个家伙。',
         --single player		-- 物品名:"麦斯威尔"->单机 麦斯威尔
        MAXWELLHEAD = '我可以看穿他的毛孔。',
         --removed		-- 物品名:"麦斯威尔的头"->单机 麦斯威尔的头
        MAXWELLLIGHT = '我想知道它们是怎么工作的。',
         --single player		-- 物品名:"麦斯威尔灯"->单机 麦斯威尔的灯
        MAXWELLLOCK = '看起来就像一个钥匙孔。',
         --single player		-- 物品名:"梦魇锁"->单机 麦斯威尔的噩梦锁
        MAXWELLTHRONE = '那个看起来不太舒适。',
         --single player		-- 物品名:"梦魇王座"->单机 麦斯威尔的噩梦王座
        MEAT = '好吧，一点生肉不会伤害任何人。', -- 物品名:"肉"
        MEATBALLS = '肉捏成团，快速而有针对性。', -- 物品名:"肉丸"
        MEATRACK = {
            DONE = '完成了！ 终于完成了！！', -- 物品名:"晾肉架"->完成了 制造描述:"晾肉的架子。"
            DRYING = '等它做好了，我头发都要白了……', -- 物品名:"晾肉架"->正在风干 制造描述:"晾肉的架子。"
            DRYINGINRAIN = '天气不配合。', -- 物品名:"晾肉架"->雨天风干 制造描述:"晾肉的架子。"
            GENERIC = '一个可怕的耗费时间的方法，只是为了让肉能放更久。', -- 物品名:"晾肉架"->默认 制造描述:"晾肉的架子。"
            BURNT = '我花了这么多时间在那上面！', -- 物品名:"晾肉架"->烧焦的 制造描述:"晾肉的架子。"
            DONE_NOTMEAT = '我觉得它陈化的时间已经够长了。', -- 物品名:"晾肉架" 制造描述:"晾肉的架子。"
            DRYING_NOTMEAT = '这就像看着油漆变干。', -- 物品名:"晾肉架" 制造描述:"晾肉的架子。"
            DRYINGINRAIN_NOTMEAT = '这并没有帮助。' -- 物品名:"晾肉架" 制造描述:"晾肉的架子。"
        },
        MEAT_DRIED = '一块又老又硬的肉。', -- 物品名:"肉干"
        MERM = '你走吧，别理我。', -- 物品名:"鱼人"
        MERMHEAD = {
            GENERIC = '我想知道他们打了多久的仗。', -- 物品名:"鱼人头"->默认
            BURNT = '啧啧，真歹毒。' -- 物品名:"鱼人头"->烧焦的
        },
        MERMHOUSE = {
            GENERIC = '时间对这所房子造成了损毁。', -- 物品名:"漏雨的小屋"->默认
            BURNT = '前一刻还在，后一刻就不见了。' -- 物品名:"漏雨的小屋"->烧焦的
        },
        MINERHAT = '相比经典的手持式灯笼有相当大的改进。', -- 物品名:"矿工帽" 制造描述:"用你脑袋上的灯照亮夜晚。"
        MONKEY = '它们又开始玩起了老把戏。', -- 物品名:"穴居猴"
        MONKEYBARREL = '起码让人容易记住谁住在这里。', -- 物品名:"穴居猴桶"
        MONSTERLASAGNA = '我其实不是很饿……', -- 物品名:"怪物千层饼"
        FLOWERSALAD = '多么可爱的一碗庭院切花啊。', -- 物品名:"花沙拉"
        ICECREAM = '好吧，那就来一两碗吧。', -- 物品名:"冰淇淋"
        WATERMELONICLE = '是冷冻的夏日之味。', -- 物品名:"西瓜冰棍"
        TRAILMIX = '我更喜欢里面有小块糖果的那种……', -- 物品名:"什锦干果"
        HOTCHILI = '呼呼呼……我总是忘记它有多辣。', -- 物品名:"辣椒炖肉"
        GUACAMOLE = '鳄梨酱，鳄梨——鳄梨——酱。', -- 物品名:"鳄梨酱"
        MONSTERMEAT = '如果有一天我想用馊肉毒死自己，那我一定会试吃它。', -- 物品名:"怪物肉"
        MONSTERMEAT_DRIED = '它所有的生命都已经风干了。', -- 物品名:"怪物肉干"
        MOOSE = '我永远无法忘记那张脸。', -- 物品名:"漏雨的小屋"
        MOOSE_NESTING_GROUND = '有个声音告诉我，我在这里要小心行事。', -- 物品名:"漏雨的小屋"
        MOOSEEGG = '一个全新的生命即将开始。', -- 物品名:"漏雨的小屋"
        MOSSLING = '他们现在很可爱……', -- 物品名:"麋鹿鹅幼崽"
        FEATHERFAN = '我从来没有见过这么大的羽毛！对吧……', -- 物品名:"羽毛扇" 制造描述:"超柔软、超大的扇子。"
        MINIFAN = '再老都要享乐！', -- 物品名:"旋转的风扇" 制造描述:"你得跑起来，才能带来风！"
        GOOSE_FEATHER = '我相信我迟早会找到它的用途。', -- 物品名:"麋鹿鹅羽毛"
        STAFF_TORNADO = '嗷，麻烦呐。我还以为是个指南针呢。', -- 物品名:"天气风向标" 制造描述:"把你的敌人吹走。"
        MOSQUITO = {
            GENERIC = '滚！', -- 物品名:"蚊子"->默认
            HELD = '你活该！' -- 物品名:"蚊子"->拿在手里
        },
        MOSQUITOSACK = '我可能是病了……', -- 物品名:"蚊子血囊"
        MOUND = {
            DUG = '反正他们并不打算使用这些东西。', -- 物品名:"坟墓"->被挖了
            GENERIC = '我永远都不会钻进去的。' -- 物品名:"坟墓"->默认
        },
        NIGHTLIGHT = '我拒绝待在旁边。', -- 物品名:"暗夜灯" 制造描述:"用你的噩梦点亮夜晚。"
        NIGHTMAREFUEL = '为什么要我拿着？', -- 物品名:"噩梦燃料" 制造描述:"傻子和疯子使用的邪恶残渣。"
        NIGHTSWORD = '滚。', -- 物品名:"暗夜剑" 制造描述:"造成噩梦般的伤害。"
        NITRE = '某种岩石。', -- 物品名:"硝石"
        ONEMANBAND = '我可以同时演奏所有乐器了，真是节省时间啊！', -- 物品名:"独奏乐器" 制造描述:"疯子音乐家也有粉丝。"
        OASISLAKE = {
            GENERIC = '水！总算有水了！', -- 物品名:"湖泊"->默认
            EMPTY = '以前有过水……也可能以后会有水。' -- 物品名:"湖泊"
        },
        PANDORASCHEST = '偷看一下有什么坏处呢？', -- 物品名:"华丽箱子"
        PANFLUTE = '我没花太多时间练习……', -- 物品名:"排箫" 制造描述:"抚慰凶猛野兽的音乐。"
        PAPYRUS = '我真的应该在忘记之前把事情写下来……', -- 物品名:"莎草纸" 制造描述:"用于书写。"
        WAXPAPER = '有了这个，我就可以让食物的时间也放慢了！', -- 物品名:"蜡纸" 制造描述:"用于打包东西。"
        PENGUIN = '又到了冬天了？', -- 物品名:"企鸥"
        PERD = '那只鸟太快了！', -- 物品名:"火鸡"
        PEROGIES = '装着食物的小团', -- 物品名:"波兰水饺"
        PETALS = '枯萎得如此之快。', -- 物品名:"花瓣"
        PETALS_EVIL = '当时觉得摘下来还挺好的……', -- 物品名:"深色花瓣"
        PHLEGM = '唉，连时间都不想去碰它。', -- 物品名:"脓鼻涕"
        PICKAXE = '打碎石头最快的方法。', -- 物品名:"鹤嘴锄" 制造描述:"凿碎岩石。"
        PIGGYBACK = '我真要拖着这个东西到处走吗？', -- 物品名:"猪皮包" 制造描述:"能装许多东西，但会减慢你的速度。"
        PIGHEAD = {
            GENERIC = '呵，那个还真让人放松警惕啊。', -- 物品名:"猪头"->默认
            BURNT = '没想到它还能死的更透一些。' -- 物品名:"猪头"->烧焦的
        },
        PIGHOUSE = {
            FULL = '一群猪居然都这么势利。', -- 物品名:"猪屋"->满了 制造描述:"可以住一只猪。"
            GENERIC = '这么久以来，一次都没有邀请我。', -- 物品名:"猪屋"->默认 制造描述:"可以住一只猪。"
            LIGHTSOUT = '你们这些可怕的猪！你至少可以把灯开着吧！', -- 物品名:"猪屋"->关灯了 制造描述:"可以住一只猪。"
            BURNT = '说没就没了。' -- 物品名:"猪屋"->烧焦的 制造描述:"可以住一只猪。"
        },
        PIGKING = '一旦你们认识了，他就会变得很通情达理。', -- 物品名:"猪王"
        PIGMAN = {
            DEAD = '他的时间耗尽了。', -- 物品名:"猪人"->死了
            FOLLOWER = '好吧，他现在已经很友好了。', -- 物品名:"猪人"->追随者
            GENERIC = '去吧，猪。', -- 物品名:"猪人"->默认
            GUARD = '最好还是避开他吧。', -- 物品名:"猪人"->警戒
            WEREPIG = '我讨厌他们变成这样！' -- 物品名:"猪人"->疯猪
        },
        PIGSKIN = '多么悲伤的结局。', -- 物品名:"猪皮"
        PIGTENT = '我不想在里面待太久。', -- 物品名:"猪人"
        PIGTORCH = '也许那些猪比我想的聪明。', -- 物品名:"猪火炬"
        PINECONE = '树的开始。', -- 物品名:"松果"
        PINECONE_SAPLING = '我估计它故意缓慢增长只是为了惹恼我。', -- 物品名:"常青树苗"
        LUMPY_SAPLING = '它似乎决心要生存下去。', -- 物品名:"有疙瘩的树苗"
        PITCHFORK = '我习惯用小一些的工具工作。', -- 物品名:"干草叉" 制造描述:"铲地用具。"
        PLANTMEAT = '如果我不是那么饿，我可能会有别的想法。', -- 物品名:"叶肉"
        PLANTMEAT_COOKED = '只要闭上眼，味道就会好很多。', -- 物品名:"熟叶肉"
        PLANT_NORMAL = {
            GENERIC = '这绝对是一种植物。', -- 物品名:"农作物"->默认
            GROWING = '长快点！ 我还有事要做！', -- 物品名:"农作物"->正在生长
            READY = '终于好了！', -- 物品名:"农作物"->准备好的 满的
            WITHERED = '我是不是又忘了给它浇水？' -- 物品名:"农作物"->枯萎了
        },
        POMEGRANATE = '谁愿意花时间去剔出每一颗籽？', -- 物品名:"石榴"
        POMEGRANATE_COOKED = '我构思的时候还觉得是个好主意。', -- 物品名:"切片熟石榴"
        POMEGRANATE_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"风刮来的种子"
        POND = '那个池塘一直在那里吗？', -- 物品名:"池塘"
        POOP = '这是健康肠道运动的产物。', -- 物品名:"粪肥"
        FERTILIZER = '粪便，方便地储存在了一个桶里。', -- 物品名:"便便桶" 制造描述:"少拉点在手上，多拉点在庄稼上。"
        PUMPKIN = '这么大的南瓜应该能让我吃上一段时间了。', -- 物品名:"南瓜"
        PUMPKINCOOKIE = '我永远无法拒绝饼干。', -- 物品名:"南瓜饼干"
        PUMPKIN_COOKED = '我不知道我为什么要费心去做熟它。', -- 物品名:"烤南瓜"
        PUMPKIN_LANTERN = '说实话，在这，这个一点都不吓人。', -- 物品名:"南瓜灯" 制造描述:"长着鬼脸的照明用具。"
        PUMPKIN_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"尖种子"
        PURPLEAMULET = '让那东西离我远点！', -- 物品名:"梦魇护符" 制造描述:"引起精神错乱。"
        PURPLEGEM = '这可能会有用。', -- 物品名:"紫宝石" 制造描述:"结合你们的颜色！"
        RABBIT = {
            GENERIC = '是兔子吗？', -- 物品名:"兔子"->默认
            HELD = '然后我拿它怎么办呢？' -- 物品名:"兔子"->拿在手里
        },
        RABBITHOLE = {
            GENERIC = '我走路要小心点，可别掉进兔子洞里。', -- 物品名:"兔洞"->默认
            SPRING = '暂时没有兔子洞了。' -- 物品名:"兔洞"->春天 or 潮湿
        },
        RAINOMETER = {
            GENERIC = '噗。如果我想的话，我可以自己去未来看天气。', -- 物品名:"雨量计"->默认 制造描述:"观测降雨机率。"
            BURNT = '也许那是注定要发生的。' -- 物品名:"雨量计"->烧焦的 制造描述:"观测降雨机率。"
        },
        RAINCOAT = '它使我保持温暖干燥。', -- 物品名:"雨衣" 制造描述:"让你保持干燥的防水外套。"
        RAINHAT = '多么迷人的雨帽！', -- 物品名:"雨帽" 制造描述:"手感柔软，防雨必备。"
        RATATOUILLE = '这对一堆切碎的蔬菜来说是个有趣的名字。', -- 物品名:"蔬菜杂烩"
        RAZOR = '这东西好像很危险。', -- 物品名:"剃刀" 制造描述:"剃掉你脏脏的山羊胡子。"
        REDGEM = '真神奇，这里地上随便就能捡到不少宝石。', -- 物品名:"红宝石"
        RED_CAP = '我很确定红色的不能吃。', -- 物品名:"采摘的红蘑菇"
        RED_CAP_COOKED = '这不像是个好主意。', -- 物品名:"熟红蘑菇"
        RED_MUSHROOM = {
            GENERIC = '就是一颗蘑菇。', -- 物品名:"红蘑菇"->默认
            INGROUND = '反正就那些东西。', -- 物品名:"红蘑菇"->在地里面
            PICKED = '也许不长回来反而是好事。' -- 物品名:"红蘑菇"->被采完了
        },
        REEDS = {
            BURNING = '这可不好……', -- 物品名:"芦苇"->正在燃烧
            GENERIC = '我肯定进了沼泽地了。', -- 物品名:"芦苇"->默认
            PICKED = '没必要干等它重新长回来。' -- 物品名:"芦苇"->被采完了
        },
        RELIC = '那时的人与我们没有什么不同。', -- 物品名:"遗物"
        RUINS_RUBBLE = '无论它曾是什么，都在时间长河中消失了。', -- 物品名:"损毁的废墟"
        RUBBLE = '时间的洗礼让它破旧不堪。', -- 物品名:"碎石"
        RESEARCHLAB = {
            GENERIC = '我想知道它是什么驱动的……', -- 物品名:"科学机器"->默认 制造描述:"解锁新的合成配方！"
            BURNT = '我没来得及拯救它。' -- 物品名:"科学机器"->烧焦的 制造描述:"解锁新的合成配方！"
        },
        RESEARCHLAB2 = {
            GENERIC = '什么时候才能开礼物呀！', -- 物品名:"炼金引擎"->默认 制造描述:"解锁更多合成配方！"
            BURNT = '哦，糟糕。' -- 物品名:"炼金引擎"->烧焦的 制造描述:"解锁更多合成配方！"
        },
        RESEARCHLAB3 = {
            GENERIC = '我不喜欢这个。', -- 物品名:"暗影操控器"->默认 制造描述:"这还是科学吗？"
            BURNT = '我下次得多加小心。' -- 物品名:"暗影操控器"->烧焦的 制造描述:"这还是科学吗？"
        },
        RESEARCHLAB4 = {
            GENERIC = '能用就行。', -- 物品名:"灵子分解器"->默认 制造描述:"增强高礼帽的魔力。"
            BURNT = '我得花时间再做一个……' -- 物品名:"灵子分解器"->烧焦的 制造描述:"增强高礼帽的魔力。"
        },
        RESURRECTIONSTATUE = {
            GENERIC = '我支持未雨绸缪，但它一定要做成那样吗？', -- 物品名:"肉块雕像"->默认 制造描述:"以肉的力量让你重生。"
            BURNT = '我尽量不把这当作一个坏兆头。' -- 物品名:"肉块雕像"->烧焦的 制造描述:"以肉的力量让你重生。"
        },
        RESURRECTIONSTONE = '希望我永远都用不到它。', -- 物品名:"试金石"
        ROBIN = {
            GENERIC = '一种红色的鸟。', -- 物品名:"红雀"->默认
            HELD = '嗯，它在我的口袋里了。然后呢？' -- 物品名:"红雀"->拿在手里
        },
        ROBIN_WINTER = {
            GENERIC = '某种蓝白色的鸟。', -- 物品名:"雪雀"->默认
            HELD = '你在里面的时候不要啄我的怀表！' -- 物品名:"雪雀"->拿在手里
        },
        ROBOT_PUPPET = '它被困住了！', --single player		-- 物品名:"雪雀"
        ROCK_LIGHT = {
            GENERIC = '裹了石皮的熔岩坑。',
             --removed		-- 物品名:"熔岩坑"->默认
            OUT = '看起来很易碎。',
             --removed		-- 物品名:"熔岩坑"->出去？外面？
            LOW = '那块熔岩正在裹上石皮。',
             --removed		-- 物品名:"熔岩坑"->低？
            NORMAL = '真舒服。'
         --removed		-- 物品名:"熔岩坑"->普通
        },
        CAVEIN_BOULDER = {
            GENERIC = '我打赌我可以举起它。不过……可能要花点时间。', -- 物品名:"岩石"->默认
            RAISED = '我够不着它。' -- 物品名:"岩石"->提高了？
        },
        ROCK = '哦，是一块巨石，真没想到。', -- 物品名:"岩石"
        PETRIFIED_TREE = '冻结在时光中。', -- 物品名:"岩石"
        ROCK_PETRIFIED_TREE = '冻结在时光中。', -- 物品名:"石化树"
        ROCK_PETRIFIED_TREE_OLD = '冻结在时光中。', -- 物品名:"岩石"
        ROCK_ICE = {
            GENERIC = '一块冻结的未来之水。', -- 物品名:"迷你冰川"->默认
            MELTED = '一滩潜在的冰。' -- 物品名:"迷你冰川"->融化了
        },
        ROCK_ICE_MELTED = '一滩潜在的冰。', -- 物品名:"融化的迷你冰川"
        ICE = '一块冻结的未来之水。', -- 物品名:"冰"
        ROCKS = '一把石头，真刺激！', -- 物品名:"石头"
        ROOK = '我不相信那是正经发条。', -- 物品名:"发条战车"
        ROPE = '我相信我迟早会找到它的用途。', -- 物品名:"绳子" 制造描述:"紧密编成的草绳，非常有用。"
        ROTTENEGG = '它一定是最后一个出来的。', -- 物品名:"腐烂鸟蛋"
        ROYAL_JELLY = '胜利真甜蜜。', -- 物品名:"蜂王浆"
        JELLYBEAN = '我喜欢随时在口袋里放点糖果。', -- 物品名:"彩虹糖豆"
        SADDLE_BASIC = '我有鞍了，就差个坐骑了……', -- 物品名:"鞍具" 制造描述:"你坐在动物身上。仅仅是理论上。"
        SADDLE_RACE = '这个应该能帮我的皮弗娄牛加快一下步伐。', -- 物品名:"闪亮鞍具" 制造描述:"抵消掉完成目标所花费的时间。或许。"
        SADDLE_WAR = '非常威武。', -- 物品名:"战争鞍具" 制造描述:"战场首领的王位。"
        SADDLEHORN = '我终于可以把鞍具从那头可怜的野兽身上取下来了！', -- 物品名:"鞍角" 制造描述:"把鞍具撬开。"
        SALTLICK = '居然被一大块盐弄得神魂颠倒。', -- 物品名:"舔盐块" 制造描述:"好好喂养你家的牲畜。"
        BRUSH = '照顾动物太花时间了!', -- 物品名:"刷子" 制造描述:"减缓皮弗娄牛毛发的生长速度。"
        SANITYROCK = {
            ACTIVE = '什么？我发誓它刚刚很矮……', -- 物品名:"方尖碑"->激活了
            INACTIVE = '嗯。我记得它是比较高的……' -- 物品名:"方尖碑"->没有激活
        },
        SAPLING = {
            BURNING = '这可不好……', -- 物品名:"树苗"->正在燃烧
            WITHERED = '它在这种高温下不会存活太久。', -- 物品名:"树苗"->枯萎了
            GENERIC = '出于某种原因，这些似乎没有再长大了。', -- 物品名:"树苗"->默认
            PICKED = '痛苦而缓慢的恢复生长过程开始了。', -- 物品名:"树苗"->被采完了
            DISEASED = '它看上去很不舒服。', --removed		-- 物品名:"树苗"->生病了
            DISEASING = '呃...有些地方不对劲。' --removed		-- 物品名:"树苗"->正在生病？？
        },
        SCARECROW = {
            GENERIC = '我们对“友好”的定义不一样。', -- 物品名:"友善的稻草人"->默认 制造描述:"模仿最新的秋季时尚。"
            BURNING = '也许是好事。', -- 物品名:"友善的稻草人"->正在燃烧 制造描述:"模仿最新的秋季时尚。"
            BURNT = '我收回我说的话，它变得更糟了。' -- 物品名:"友善的稻草人"->烧焦的 制造描述:"模仿最新的秋季时尚。"
        },
        SCULPTINGTABLE = {
            EMPTY = '我有比艺术和手工更紧迫的事情要做。', -- 物品名:"陶轮" 制造描述:"大理石在你手里将像黏土一样！"
            BLOCK = '凿石头对我来说并不算美好时光。', -- 物品名:"陶轮"->锁住了 制造描述:"大理石在你手里将像黏土一样！"
            SCULPTURE = '我不想去想制作它花了多长时间。', -- 物品名:"陶轮"->雕像做好了 制造描述:"大理石在你手里将像黏土一样！"
            BURNT = '好了，是时候继续前进了。' -- 物品名:"陶轮"->烧焦的 制造描述:"大理石在你手里将像黏土一样！"
        },
        SCULPTURE_KNIGHTHEAD = '真奇怪……', -- 物品名:"可疑的大理石"
        SCULPTURE_KNIGHTBODY = {
            COVERED = '我也说不出它是什么。', -- 物品名:"大理石雕像"->被盖住了-三基佬雕像可以敲大理石的时候
            UNCOVERED = '稍微好点了，但还是少了点什么……', -- 物品名:"大理石雕像"->没有被盖住-三基佬雕像被开采后
            FINISHED = '我为什么要花这么多时间在这上面？', -- 物品名:"大理石雕像"->三基佬雕像修好了
            READY = '你听到了吗？好像有什么东西在里面抓挠……' -- 物品名:"大理石雕像"->准备好的 满的
        },
        SCULPTURE_BISHOPHEAD = '这东西在这里做什么？', -- 物品名:"可疑的大理石"
        SCULPTURE_BISHOPBODY = {
            COVERED = '奇怪……我认为并没有看起来那么老。', -- 物品名:"大理石雕像"->被盖住了-三基佬雕像可以敲大理石的时候
            UNCOVERED = '要么是雕塑家忘记了，要么是有一块雕塑被移走了。', -- 物品名:"大理石雕像"->没有被盖住-三基佬雕像被开采后
            FINISHED = '我真不敢相信我花了这么多时间在重新组合几块大理石上。', -- 物品名:"大理石雕像"->三基佬雕像修好了
            READY = '你听到了吗？好像有什么东西在里面抓挠……' -- 物品名:"大理石雕像"->准备好的 满的
        },
        SCULPTURE_ROOKNOSE = '这是哪儿来的？', -- 物品名:"可疑的大理石"
        SCULPTURE_ROOKBODY = {
            COVERED = '我不知道它是什么。', -- 物品名:"大理石雕像"->被盖住了-三基佬雕像可以敲大理石的时候
            UNCOVERED = '看着还是不太对。', -- 物品名:"大理石雕像"->没有被盖住-三基佬雕像被开采后
            FINISHED = '我花了好长时间才把你拼好，你起码该给我个好脸看吧！', -- 物品名:"大理石雕像"->三基佬雕像修好了
            READY = '你听到了吗？好像有什么东西在里面抓挠……' -- 物品名:"大理石雕像"->准备好的 满的
        },
        GARGOYLE_HOUND = '免费月岩。', -- 物品名:"可疑的月岩"
        GARGOYLE_WEREPIG = '免费月岩。', -- 物品名:"可疑的月岩"
        SEEDS = '未来的植物，现在的零食。', -- 物品名:"种子"
        SEEDS_COOKED = '我不知道我为什么要费心去烹饪它们。', -- 物品名:"烤种子"
        SEWING_KIT = '谁有耐心去缝衣服？', -- 物品名:"针线包" 制造描述:"缝补受损的衣物。"
        SEWING_TAPE = '现才是补衣服的正解，根本不用针和线那么麻烦！', -- 物品名:"可靠的胶布" 制造描述:"缝补受损的衣物。"
        SHOVEL = '我不适合干这种工作……', -- 物品名:"铲子" 制造描述:"挖掘各种各样的东西。"
        SILK = '它出乎意料地耐用。', -- 物品名:"蜘蛛丝"
        SKELETON = '死透了……', -- 物品名:"骷髅"
        SCORCHED_SKELETON = '这个生命早早之前就熄灭了。', -- 物品名:"易碎骷髅"
        SKULLCHEST = '不确定要不要打开。', --removed		-- 物品名:"骷髅箱"
        SMALLBIRD = {
            GENERIC = '那个不是童子鸡。', -- 物品名:"小鸟"->默认
            HUNGRY = '怎么了？又要喂了吗？', -- 物品名:"小鸟"->有点饿了
            STARVING = '哦，不，我又忘记喂你了？', -- 物品名:"小鸟"->挨饿
            SLEEPING = '谢天谢地。我终于可以不受干扰地做事情了。' -- 物品名:"小鸟"->睡着了
        },
        SMALLMEAT = '有一点肉总比没有好。', -- 物品名:"小肉"
        SMALLMEAT_DRIED = '一小口坚硬的干肉。', -- 物品名:"小风干肉"
        SPAT = '他是个老顽固。', -- 物品名:"钢羊"
        SPEAR = '凑合着用！', -- 物品名:"长矛" 制造描述:"使用尖的那一端。"
        SPEAR_WATHGRITHR = '好用一些的。', -- 物品名:"战斗长矛" 制造描述:"黄金使它更锋利。"
        WATHGRITHRHAT = '我找找我有没有好看一些的皮肤。', -- 物品名:"战斗头盔" 制造描述:"独角兽是你的保护神。"
        SPIDER = {
            DEAD = '它们这样我更喜欢。', -- 物品名:"蜘蛛"->死了
            GENERIC = '你不走开还等什么？去做蜘蛛的事情吧。', -- 物品名:"蜘蛛"->默认
            SLEEPING = '至少它没有造成任何麻烦。' -- 物品名:"蜘蛛"->睡着了
        },
        SPIDERDEN = '我并不急于和蜘蛛纠缠。', -- 物品名:"蜘蛛巢"
        SPIDEREGGSACK = '我应该现在就把它们压扁，以免后患无穷……', -- 物品名:"蜘蛛卵" 制造描述:"跟你的朋友寻求点帮助。"
        SPIDERGLAND = '那只蜘蛛给我留下了一份贴心的离别礼物。', -- 物品名:"蜘蛛腺"
        SPIDERHAT = '让我想起了我差点被一只大蜘蛛吃掉的意外。', -- 物品名:"蜘蛛帽" 制造描述:"蜘蛛们会喊你\"妈妈\"。"
        SPIDERQUEEN = '是谁让这里的蜘蛛长这么大的？我想跟他谈谈。', -- 物品名:"蜘蛛女王"
        SPIDER_WARRIOR = {
            DEAD = '我选择我活，他死。', -- 物品名:"蜘蛛战士"->死了
            GENERIC = '嗷，麻烦呐！我讨厌有条纹的那些。', -- 物品名:"蜘蛛战士"->默认
            SLEEPING = '至少它没有造成任何麻烦。' -- 物品名:"蜘蛛战士"->睡着了
        },
        SPOILED_FOOD = '曾经的食物。', -- 物品名:"腐烂物"
        STAGEHAND = {
            AWAKE = '离我远点。', -- 物品名:"舞台之手"->醒了
            HIDING = '我知道你藏在里面。' -- 物品名:"舞台之手"->藏起来了
        },
        STATUE_MARBLE = {
            GENERIC = '我可以以后再看它们，反正它们哪里也不会去。', -- 物品名:"大理石雕像"->默认
            TYPE1 = '我对艺术没有什么耐心。', -- 物品名:"大理石雕像"->类型1
            TYPE2 = '我以前见过，以后可能还会遇到。', -- 物品名:"大理石雕像"->类型2
            TYPE3 = '我仍然不确定是谁把这些东西留在这里的。' --bird bath type statue		-- 物品名:"大理石雕像"
        },
        STATUEHARP = '奇怪啊，它们似乎都坏在了同一个地方……', -- 物品名:"竖琴雕像"
        STATUEMAXWELL = '“有人”真是闲的慌……', -- 物品名:"麦斯威尔雕像"
        STEELWOOL = '在这里，有些事情真的是按字面理解的。', -- 物品名:"钢丝绵"
        STINGER = '曾经的蜜蜂尾后针。', -- 物品名:"针刺"
        STRAWHAT = '我可以把自己打扮成一个农民了，真好玩！', -- 物品名:"草帽" 制造描述:"帮助你保持清凉干爽。"
        STUFFEDEGGPLANT = '里外都是蔬菜。', -- 物品名:"酿茄子"
        SWEATERVEST = '它看起来像一个自命不凡的老教授会穿的东西。', -- 物品名:"犬牙背心" 制造描述:"粗糙，但挺时尚。"
        REFLECTIVEVEST = '穿上这个很容易就被发现……', -- 物品名:"清凉夏装" 制造描述:"穿上这件时尚的背心，让你神清气爽。"
        HAWAIIANSHIRT = '有时偶尔放松一两分钟……也是挺惬意的。', -- 物品名:"花衬衫" 制造描述:"适合夏日穿着，或在周五便装日穿着。"
        TAFFY = '我永远不会忘记这些，爸爸逢年过节会带一些回家给我们吃。', -- 物品名:"太妃糖"
        TALLBIRD = '我想知道他们是如何保持平衡的。', -- 物品名:"高脚鸟"
        TALLBIRDEGG = '未来的鸟。', -- 物品名:"高脚鸟蛋"
        TALLBIRDEGG_COOKED = '它尝起来像偷来的时间。', -- 物品名:"煎高脚鸟蛋"
        TALLBIRDEGG_CRACKED = {
            COLD = '我不应该把它丢在寒冷的地方。', -- 物品名:"冻伤"->冷了
            GENERIC = '那条裂缝是来自外部还是内部？', -- 物品名:"孵化中的高脚鸟蛋"->默认
            HOT = '如果我不把它冷却下来，它很快就会变成一颗煎蛋。', -- 物品名:"中暑"->热了
            LONG = '你能不能快一点孵化？', -- 物品名:"孵化中的高脚鸟蛋"->还需要很久
            SHORT = '我的鸟蛋计时器货它随时可能孵化！' -- 物品名:"孵化中的高脚鸟蛋"->很快了
        },
        TALLBIRDNEST = {
            GENERIC = '我发现了一颗蛋！上面有很多斑点。', -- 物品名:"高脚鸟巢"->默认
            PICKED = '空的鸟巢。' -- 物品名:"高脚鸟巢"->被采完了
        },
        TEENBIRD = {
            GENERIC = '你是什么时候染的羽毛？', -- 物品名:"小高脚鸟"->默认
            HUNGRY = '嗷，麻烦呐。我打赌你饿了。', -- 物品名:"小高脚鸟"->有点饿了
            STARVING = '如果我不尽快喂她，她可能真的会吃掉我。', -- 物品名:"小高脚鸟"->挨饿
            SLEEPING = '现在不是睡觉的时候！' -- 物品名:"小高脚鸟"->睡着了
        },
        TELEPORTATO_BASE = {
            ACTIVE = '有了这个，我肯定可以穿越时空！', --single player		-- 物品名:"木制装置"->激活了
            GENERIC = '这好像可以通往另一个世界！', --single player		-- 物品名:"木制装置"->默认
            LOCKED = '还少了些什么东西。', --single player		-- 物品名:"木制装置"->锁住了
            PARTIAL = '很快，这个发明就要大功告成！' --single player		-- 物品名:"木制装置"->已经有部分了
        },
        TELEPORTATO_BOX = '这可能控制着整个宇宙的极性。', --single player		-- 物品名:"盒状装置"
        TELEPORTATO_CRANK = '结实到足以应付最危险的实验。', --single player		-- 物品名:"曲柄装置"
        TELEPORTATO_POTATO = '这个金属土豆包含强大而又可怕的力量...', --single player		-- 物品名:"金属土豆状装置"
        TELEPORTATO_RING = '一个可以聚集空间能量的圆环。', --single player		-- 物品名:"环状装置"
        TELESTAFF = '虽然有点笨拙，但凑活着用算了。', -- 物品名:"传送魔杖" 制造描述:"穿越空间的法杖！时间要另外收费。"
        TENT = {
            GENERIC = '我看小憩一下也无妨嘛……', -- 物品名:"帐篷"->默认 制造描述:"回复理智值，但要花费时间并导致饥饿。"
            BURNT = '看来小憩时间已经结束了，永远结束了。' -- 物品名:"帐篷"->烧焦的 制造描述:"回复理智值，但要花费时间并导致饥饿。"
        },
        SIESTAHUT = {
            GENERIC = '我愿意花一两分钟时间来避开热浪。', -- 物品名:"遮阳篷"->默认 制造描述:"躲避烈日，回复理智值。"
            BURNT = '它现在没什么用了。' -- 物品名:"遮阳篷"->烧焦的 制造描述:"躲避烈日，回复理智值。"
        },
        TENTACLE = '我会想办法避开那个。', -- 物品名:"触手"
        TENTACLESPIKE = '相当讨厌的武器。', -- 物品名:"触手尖刺"
        TENTACLESPOTS = '这么好的图案，如果它不是那么粘稠和恶心就好了。', -- 物品名:"触手皮"
        TENTACLE_PILLAR = '我想我不应该碰那个。', -- 物品名:"大触手"
        TENTACLE_PILLAR_HOLE = '下面有一条迷宫般的隧道。', -- 物品名:"硕大的泥坑"
        TENTACLE_PILLAR_ARM = '满心仇恨的小东西！', -- 物品名:"小触手"
        TENTACLE_GARDEN = '这个我也不应该碰。', -- 物品名:"大触手"
        TOPHAT = '我戴上以后肯定英姿飒爽！', -- 物品名:"高礼帽" 制造描述:"最经典的帽子款式。"
        TORCH = '起码能帮我驱离一段时间的黑暗。', -- 物品名:"火炬" 制造描述:"可携带的光源。"
        TRANSISTOR = '这就是新奇的电动组件吗？', -- 物品名:"电子元件" 制造描述:"科学至上！滋滋滋！"
        TRAP = '陷阱是好的，让我伤心的是之后的部分……', -- 物品名:"陷阱" 制造描述:"捕捉小型生物。"
        TRAP_TEETH = '一步走错，遗恨终身。', -- 物品名:"犬牙陷阱" 制造描述:"弹出来并咬伤任何踩到它的东西。"
        TRAP_TEETH_MAXWELL = '我可不想踩在那上面！', --single player		-- 物品名:"麦斯威尔的犬牙陷阱" 制造描述:"弹出来并咬伤任何踩到它的东西。"
        TREASURECHEST = {
            GENERIC = '减少口袋里的杂物意味着减少思想上的混乱。', -- 物品名:"箱子"->默认 制造描述:"一种结实的容器。"
            BURNT = '我早该料到的。' -- 物品名:"箱子"->烧焦的 制造描述:"一种结实的容器。"
        },
        TREASURECHEST_TRAP = '我把这个留在这里了吗？嗯……', -- 物品名:"宝箱"
        SACRED_CHEST = {
            GENERIC = '一个古老的谜题！多么令人激动啊！', -- 物品名:"远古宝箱"->默认
            LOCKED = '你很快就会被解开了。' -- 物品名:"远古宝箱"->锁住了
        },
        TREECLUMP = '是不是有人想把我困在这里。', --removed		-- 物品名:"远古宝箱"
        TRINKET_1 = '看上去像在口袋里放了太久的糖果。', --Melted Marbles		-- 物品名:"熔化的弹珠"
        TRINKET_2 = '一个音符也演奏不出来。', --Fake Kazoo		-- 物品名:"假卡祖笛"
        TRINKET_3 = '我不打算费力地去解开它。', --Gord's Knot		-- 物品名:"戈尔迪之结"
        TRINKET_4 = '我确实喜欢精美的小饰品。', --Gnome		-- 物品名:"地精爷爷"
        TRINKET_5 = '多么前卫！', --Toy Rocketship		-- 物品名:"迷你火箭"
        TRINKET_6 = '又是电子组件，我还是用我的齿轮和钟摆好了。', --Frazzled Wires		-- 物品名:"烂电线"
        TRINKET_7 = '我可没时间分心在别的事情上。', --Ball and Cup		-- 物品名:"杯子和球"
        TRINKET_8 = '你永远不知道什么会在以后派上用场。', --Rubber Bung		-- 物品名:"硬化橡胶塞"
        TRINKET_9 = '每一个都很独特，很迷人。', --Mismatched Buttons		-- 物品名:"不搭的纽扣"
        TRINKET_10 = '还好我的牙齿在我年老的时候也很坚固。', --Dentures		-- 物品名:"二手假牙"
        TRINKET_11 = '哦，你放在架子上瓷器小雕像旁边会显得很可爱。', --Lying Robot		-- 物品名:"机器人玩偶"
        TRINKET_12 = '它停留在了一个永久的腐烂状态。', --Dessicated Tentacle		-- 物品名:"干瘪的触手"
        TRINKET_13 = '我确实喜欢精美的小饰品。', --Gnomette		-- 物品名:"地精奶奶"
        TRINKET_14 = '就是个装饰品。', --Leaky Teacup		-- 物品名:"漏水的茶杯"
        TRINKET_15 = '我对象棋没有耐心，但它看起来够简单。', --Pawn		-- 物品名:"白色主教"
        TRINKET_16 = '我对象棋没有耐心，但它看起来够简单。', --Pawn		-- 物品名:"黑色主教"
        TRINKET_17 = '想一想，如果我只需要使用一件餐具，将会省下多少时间啊！', --Bent Spork		-- 物品名:"弯曲的叉子"
        TRINKET_18 = '难道历史没有告诉我们什么吗？', --Trojan Horse		-- 物品名:"玩具木马"
        TRINKET_19 = '没有人是完美的。', --Unbalanced Top		-- 物品名:"失衡陀螺"
        TRINKET_20 = '原来跑这来了！', --Backscratcher		-- 物品名:"痒痒挠"
        TRINKET_21 = '它曾经有过好日子。', --Egg Beater		-- 物品名:"破搅拌器"
        TRINKET_22 = '我既不是猫，也不织毛衣。这东西给别人吧。', --Frayed Yarn		-- 物品名:"磨损的纱线"
        TRINKET_23 = '我将能够缩短几秒换鞋时间。', --Shoehorn		-- 物品名:"鞋拔子"
        TRINKET_24 = '我不太喜欢猫。', --Lucky Cat Jar		-- 物品名:"幸运猫扎尔"
        TRINKET_25 = '它闻起来像松针。死掉、腐烂的松针。', --Air Unfreshener		-- 物品名:"臭气制造器"
        TRINKET_26 = '同时吃喝的东西！', --Potato Cup		-- 物品名:"土豆杯"
        TRINKET_27 = '我还是宁愿要挂在上面的大衣。', --Coat Hanger		-- 物品名:"钢丝衣架"
        TRINKET_28 = '似乎你在这里走不了多远就会被一个棋子绊倒。', --Rook		-- 物品名:"白色战车"
        TRINKET_29 = '似乎你在这里走不了多远就会被一个棋子绊倒。', --Rook		-- 物品名:"黑色战车"
        TRINKET_30 = '我想知道这副棋的其他棋子怎么样了；棋手后来怎么样了。', --Knight		-- 物品名:"白色骑士"
        TRINKET_31 = '我想知道这副棋的其他棋子怎么样了；棋手后来怎么样了。', --Knight		-- 物品名:"黑色骑士"
        TRINKET_32 = '它只会向你展示一个可能的未来。', --Cubic Zirconia Ball		-- 物品名:"立方氧化锆球"
        TRINKET_33 = '我一直忘了这不是真的！', --Spider Ring		-- 物品名:"蜘蛛指环"
        TRINKET_34 = '如果你足够聪明，能够胜过诅咒，就没有必要害怕诅咒。', --Monkey Paw		-- 物品名:"猴爪"
        TRINKET_35 = '不管它承载了什么，现在已经消失了。', --Empty Elixir		-- 物品名:"空的长生不老药"
        TRINKET_36 = '我不认为把我们在这里找到的东西放进嘴里是个好主意。', --Faux fangs		-- 物品名:"人造尖牙"
        TRINKET_37 = '在某个地方，有一个吸血鬼过着非常糟糕的一天。', --Broken Stake		-- 物品名:"断桩"
        TRINKET_38 = '它帮我看清前路。', -- Binoculars Griftlands trinket		-- 物品名:"双筒望远镜"
        TRINKET_39 = '应该不是这条时间线里的东西……', -- Lone Glove Griftlands trinket		-- 物品名:"单只手套"
        TRINKET_40 = '针头的移动相当迟缓。', -- Snail Scale Griftlands trinket		-- 物品名:"蜗牛秤"
        TRINKET_41 = '这肯定会污染时间线。', -- Goop Canister Hot Lava trinket		-- 物品名:"黏液罐"
        TRINKET_42 = '……但为什么它有一个老鼠头？', -- Toy Cobra Hot Lava trinket		-- 物品名:"玩具眼镜蛇"
        TRINKET_43 = '青春啊青春……', -- Crocodile Toy Hot Lava trinket		-- 物品名:"鳄鱼玩具"
        TRINKET_44 = '那株植物还活着吗？', -- Broken Terrarium ONI trinket		-- 物品名:"破碎的玻璃罐"
        TRINKET_45 = '它一直发出古怪的声音。', -- Odd Radio ONI trinket		-- 物品名:"奇怪的收音机"
        TRINKET_46 = '这东西是怎么到这里来的？', -- Hairdryer ONI trinket		-- 物品名:"损坏的吹风机"
        LOST_TOY_1 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"遗失的玻璃球"
        LOST_TOY_2 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"多愁善感的卡祖笛"
        LOST_TOY_7 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"珍视的抽线陀螺"
        LOST_TOY_10 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"缺少的牙齿"
        LOST_TOY_11 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"珍贵的玩具机器人"
        LOST_TOY_14 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"妈妈最爱的茶杯"
        LOST_TOY_18 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"宝贵的玩具木马"
        LOST_TOY_19 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"最爱的陀螺"
        LOST_TOY_42 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"装错的玩具眼镜蛇"
        LOST_TOY_43 = '嗷，麻烦呐。我大概开始出现幻觉了。', -- 物品名:"宠爱的鳄鱼玩具"
        HALLOWEENCANDY_1 = '涂了美味糖果涂层的苹果。', -- 物品名:"糖果苹果"
        HALLOWEENCANDY_2 = '值得咀嚼的美味糖果玉米。', -- 物品名:"糖果玉米"
        HALLOWEENCANDY_3 = '是谁在拿根普通的玉米棒子混充糖果？', -- 物品名:"不太甜的玉米"
        HALLOWEENCANDY_4 = '这个东西够我嚼一段时间了。', -- 物品名:"粘液蜘蛛"
        HALLOWEENCANDY_5 = '我会在我的口袋里多藏一点，我相信有孩子会喜欢硬糖的。', -- 物品名:"浣猫糖果"
        HALLOWEENCANDY_6 = '你认为我是昨天才出生的吗？', -- 物品名:"\"葡萄干\""
        HALLOWEENCANDY_7 = '一点额外的纤维不会伤害任何人。', -- 物品名:"葡萄干"
        HALLOWEENCANDY_8 = '我喜欢这个小鬼。', -- 物品名:"鬼魂棒棒糖"
        HALLOWEENCANDY_9 = '挺有嚼头的，就是虫子多了点。', -- 物品名:"果冻虫"
        HALLOWEENCANDY_10 = '甜美的东西，而且永远不会变坏，谁会不爱它呢？', -- 物品名:"触手棒棒糖"
        HALLOWEENCANDY_11 = '哦，好吧，我就咬一口。', -- 物品名:"巧克力猪"
        HALLOWEENCANDY_12 = '如果没有人要，我很乐意收下。', --ONI meal lice candy		-- 物品名:"糖果虱"
        HALLOWEENCANDY_13 = '那似乎是一个自我实现的预言。', --Griftlands themed candy		-- 物品名:"无敌硬糖"
        HALLOWEENCANDY_14 = '甜味与辣味混合在了一起！', --Hot Lava pepper candy		-- 物品名:"熔岩椒"
        CANDYBAG = '它的容量比我想象的要大，莫非里面别有乾坤……', -- 物品名:"糖果袋" 制造描述:"只带万圣夜好吃的东西。"
        HALLOWEEN_ORNAMENT_1 = '多么阴郁的庆祝方式啊。', -- 物品名:"幽灵装饰"
        HALLOWEEN_ORNAMENT_2 = '我想我可以花一点时间来装饰。', -- 物品名:"蝙蝠装饰"
        HALLOWEEN_ORNAMENT_3 = '呃，别让我想起这些东西。', -- 物品名:"蜘蛛装饰"
        HALLOWEEN_ORNAMENT_4 = '我不妨把它挂起来。', -- 物品名:"触手装饰"
        HALLOWEEN_ORNAMENT_5 = '我要是没记错的话，是应该挂在树上的。', -- 物品名:"穴居悬蛛装饰"
        HALLOWEEN_ORNAMENT_6 = '有那么多活的在飞，它似乎有点多余了。', -- 物品名:"乌鸦装饰"
        HALLOWEENPOTION_DRINKS_WEAK = '我不是化学家。', -- 物品名:"远古宝箱"
        HALLOWEENPOTION_DRINKS_POTENT = '我能感受到它所散发出来的潜力。', -- 物品名:"远古宝箱"
        HALLOWEENPOTION_BRAVERY = '恐惧使你安全，但勇敢使你前进。', -- 物品名:"远古宝箱"
        HALLOWEENPOTION_MOON = '闻起来有不断变化的各种可能。', -- 物品名:"月亮精华液"
        HALLOWEENPOTION_FIRE_FX = '这样使用我的时间可能有些轻率……', -- 物品名:"远古宝箱"
        MADSCIENCE_LAB = '这有点超出我的专业领域……', -- 物品名:"疯狂科学家实验室" 制造描述:"疯狂实验无极限。唯独神智有极限。"
        LIVINGTREE_ROOT = '里面的树根特别活泼。', -- 物品名:"完全正常的树根"
        LIVINGTREE_SAPLING = '它开始看起来有点愉快了。', -- 物品名:"完全正常的树苗"
        DRAGONHEADHAT = '那句老话是什么？两个脑袋比一个好？', -- 物品名:"幸运兽脑袋" 制造描述:"野兽装束的前端。"
        DRAGONBODYHAT = '啥玩意。', -- 物品名:"幸运兽躯体" 制造描述:"野兽装束的中间部分。"
        DRAGONTAILHAT = '哼哼，谁想成为最后一个？', -- 物品名:"幸运兽尾巴" 制造描述:"野兽装束的尾端。"
        PERDSHRINE = {
            GENERIC = '我要是稍不留神，就会在这个上花过多的时间……', -- 物品名:"火鸡神龛"->默认 制造描述:"供奉庄严之火鸡。"
            EMPTY = '这又是怎么回事？', -- 物品名:"火鸡神龛" 制造描述:"供奉庄严之火鸡。"
            BURNT = '说没就没了。' -- 物品名:"火鸡神龛"->烧焦的 制造描述:"供奉庄严之火鸡。"
        },
        REDLANTERN = '还好我走运，火焰没烧着包着它的纸。', -- 物品名:"红灯笼" 制造描述:"照亮你的路的幸运灯笼。"
        LUCKY_GOLDNUGGET = '我不会对一点额外的运气说不。', -- 物品名:"幸运黄金"
        FIRECRACKERS = '以防这里的事情不够刺激。', -- 物品名:"红鞭炮" 制造描述:"用爆炸来庆祝！"
        PERDFAN = '那只可怜的鸟真是不走运。', -- 物品名:"幸运扇" 制造描述:"额外的运气，超级多。"
        REDPOUCH = '里面有东西在晃动。', -- 物品名:"红包"
        WARGSHRINE = {
            GENERIC = '嗯……我也是可以匀一点时间出来的。', -- 物品名:"座狼神龛"->默认 制造描述:"供奉陶土之座狼。"
            EMPTY = '有什么好主意吗？', -- 物品名:"座狼神龛" 制造描述:"供奉陶土之座狼。"
            BURNT = '它走到了尽头。' -- 物品名:"座狼神龛"->烧焦的 制造描述:"供奉陶土之座狼。"
        },
        CLAYWARG = {
            GENERIC = '不是雕像！！', -- 物品名:"黏土座狼"->默认
            STATUE = '还好只是一座雕像。' -- 物品名:"黏土座狼"->雕像
        },
        CLAYHOUND = {
            GENERIC = '我真的希望它能更易碎一些！', -- 物品名:"黏土猎犬"->默认
            STATUE = '那是一个时空错乱，还是那座雕像刚刚动了？' -- 物品名:"黏土猎犬"->雕像
        },
        HOUNDWHISTLE = '训练一些不听话的狗时可能会派上用场。', -- 物品名:"幸运哨子" 制造描述:"对野猎犬吹哨。"
        CHESSPIECE_CLAYHOUND = '好吧，它还没有变成活的。所以现在还算安全。', -- 物品名:"猎犬雕塑"
        CHESSPIECE_CLAYWARG = '我希望它不会回来咬我一口。', -- 物品名:"座狼雕塑"
        PIGSHRINE = {
            GENERIC = '嗯……也许能抽点时间做一些小饰品。', -- 物品名:"猪神龛"->默认 制造描述:"供奉富饶之猪人。"
            EMPTY = '又到了十二年一次的轨道循环了。', -- 物品名:"猪神龛" 制造描述:"供奉富饶之猪人。"
            BURNT = '一下子就烧掉了。' -- 物品名:"猪神龛"->烧焦的 制造描述:"供奉富饶之猪人。"
        },
        PIG_TOKEN = '猪都戴上金腰带了！', -- 物品名:"金腰带"
        PIG_COIN = '哦，我以前从未请过助理。', -- 物品名:"猪鼻铸币"
        YOTP_FOOD1 = '我希望它不要再这样盯着我。', -- 物品名:"贡品烤肉" 制造描述:"向猪王敬肉。"
        YOTP_FOOD2 = '……也许会有其他人来拿。', -- 物品名:"八宝泥馅饼" 制造描述:"那里隐藏着什么？"
        YOTP_FOOD3 = '这能让我吃上一段时间了。', -- 物品名:"鱼头串" 制造描述:"棍子上的荣华富贵。"
        PIGELITE1 = '我怎么惹上这个的？', --BLUE		-- 物品名:"韦德"
        PIGELITE2 = '漂亮的小猪……', --RED		-- 物品名:"伊格内修斯"
        PIGELITE3 = '让我们先冷静一下……', --WHITE		-- 物品名:"德米特里"
        PIGELITE4 = '等一下，等一下！！', --GREEN		-- 物品名:"索耶"
        PIGELITEFIGHTER1 = '我怎么惹上这个的？', --BLUE		-- 物品名:"韦德"
        PIGELITEFIGHTER2 = '漂亮的小猪……', --RED		-- 物品名:"伊格内修斯"
        PIGELITEFIGHTER3 = '让我们先冷静一下……', --WHITE		-- 物品名:"德米特里"
        PIGELITEFIGHTER4 = '等一下，等一下！！', --GREEN		-- 物品名:"索耶"
        CARRAT_GHOSTRACER = '很好的尝试，但你骗不了我。', -- 物品名:"查理的胡萝卜鼠"
        YOTC_CARRAT_RACE_START = '凡事必有起点。', -- 物品名:"起点" 制造描述:"冲向比赛！"
        YOTC_CARRAT_RACE_CHECKPOINT = '小小的里程碑。', -- 物品名:"检查点" 制造描述:"通往光荣之路上的一站。"
        YOTC_CARRAT_RACE_FINISH = {
            GENERIC = '比赛总有结束时。', -- 物品名:"终点线"->默认 制造描述:"你走投无路了。"
            BURNT = '这当然是结束比赛的一种方式。', -- 物品名:"终点线"->烧焦的 制造描述:"你走投无路了。"
            I_WON = '我没掰弯时空就能赢得了比赛！', -- 物品名:"终点线" 制造描述:"你走投无路了。"
            SOMEONE_ELSE_WON = '好样的，{winner}，不过我上次会赢的！我的意思是，下次！' -- 物品名:"终点线" 制造描述:"你走投无路了。"
        },
        YOTC_CARRAT_RACE_START_ITEM = '我越早为它找到一个地方，我们就能越早开始。', -- 物品名:"起点套装" 制造描述:"冲向比赛！"
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = '我迟早会为它找到一个地方的。', -- 物品名:"检查点套装" 制造描述:"通往光荣之路上的一站。"
        YOTC_CARRAT_RACE_FINISH_ITEM = '比赛的终点。', -- 物品名:"终点线套装" 制造描述:"你走投无路了。"
        YOTC_SEEDPACKET = '总得种它们。', -- 物品名:"种子包" 制造描述:"一包普通的混合种子。"
        YOTC_SEEDPACKET_RARE = '它们的质量比一般的种子要高。', -- 物品名:"高级种子包" 制造描述:"一包高质量的种子。"
        MINIBOATLANTERN = '海洋上就应该多一点光照。', -- 物品名:"漂浮灯笼" 制造描述:"闪着暖暖的光亮。"
        YOTC_CARRATSHRINE = {
            GENERIC = '我可以抽时间可以制作一两件饰品。', -- 物品名:"胡萝卜鼠神龛"->默认 制造描述:"供奉灵巧之胡萝卜鼠。"
            EMPTY = '好吧，这帮助我缩小了我的时空位置。', -- 物品名:"胡萝卜鼠神龛" 制造描述:"供奉灵巧之胡萝卜鼠。"
            BURNT = '消失的太快了。' -- 物品名:"胡萝卜鼠神龛"->烧焦的 制造描述:"供奉灵巧之胡萝卜鼠。"
        },
        YOTC_CARRAT_GYM_DIRECTION = {
            GENERIC = '我希望我可以改善自己的方向感……', -- 物品名:"方向健身房"->默认
            RAT = '我光是看着都觉得头晕。', -- 物品名:"方向健身房"
            BURNT = '嗷，麻烦呐。这下我又要做一个！' -- 物品名:"方向健身房"->烧焦的
        },
        YOTC_CARRAT_GYM_SPEED = {
            GENERIC = '完美！', -- 物品名:"速度健身房"->默认
            RAT = '我希望能快点训练它提速……', -- 物品名:"速度健身房"
            BURNT = '这算是个挫折吧。' -- 物品名:"速度健身房"->烧焦的
        },
        YOTC_CARRAT_GYM_REACTION = {
            GENERIC = '我希望我的胡萝卜鼠反应要快。', -- 物品名:"反应健身房"->默认
            RAT = '它看起来已经聪明多了！', -- 物品名:"反应健身房"
            BURNT = '它很快就烧掉了。' -- 物品名:"反应健身房"->烧焦的
        },
        YOTC_CARRAT_GYM_STAMINA = {
            GENERIC = '我开始怀疑这时间花得值不值……', -- 物品名:"耐力健身房"->默认
            RAT = '它好像挺开心的。', -- 物品名:"耐力健身房"
            BURNT = '哎……现在我不得不从头开始建立一个新的。' -- 物品名:"耐力健身房"->烧焦的
        },
        YOTC_CARRAT_GYM_DIRECTION_ITEM = '准备工作已经完成，现在要给它找一个地方。', -- 物品名:"方向健身房套装" 制造描述:"提高你的胡萝卜鼠的方向感。"
        YOTC_CARRAT_GYM_SPEED_ITEM = '该我的胡萝卜鼠跑起来了。', -- 物品名:"速度健身房套装" 制造描述:"增加你的胡萝卜鼠的速度。"
        YOTC_CARRAT_GYM_STAMINA_ITEM = '拼起来应该要不了多久。', -- 物品名:"耐力健身房套装" 制造描述:"增强你的胡萝卜鼠的耐力。"
        YOTC_CARRAT_GYM_REACTION_ITEM = '我希望训练胡萝卜鼠不会花太长时间。', -- 物品名:"反应健身房套装" 制造描述:"加快你的胡萝卜鼠的反应时间。"
        YOTC_CARRAT_SCALE_ITEM = '我早点弄好吧。', -- 物品名:"胡萝卜鼠秤套装" 制造描述:"看看你的胡萝卜鼠的情况。"
        YOTC_CARRAT_SCALE = {
            GENERIC = '它衡量的是经验的重量。', -- 物品名:"胡萝卜鼠秤"->默认
            CARRAT = '相当一般。', -- 物品名:"胡萝卜鼠" 制造描述:"灵巧机敏，富含胡萝卜素。"
            CARRAT_GOOD = '这家伙可能会赢！', -- 物品名:"胡萝卜鼠秤"
            BURNT = '它已经所剩无几了。' -- 物品名:"胡萝卜鼠秤"->烧焦的
        },
        YOTB_BEEFALOSHRINE = {
            GENERIC = '我确实喜欢修补新事物……', -- 物品名:"皮弗娄牛神龛"->默认 制造描述:"供奉坚毅之皮弗娄牛。"
            EMPTY = '它需要什么来着？我的记忆有点模糊了……', -- 物品名:"皮弗娄牛神龛" 制造描述:"供奉坚毅之皮弗娄牛。"
            BURNT = '它很快就烧光了。' -- 物品名:"皮弗娄牛神龛"->烧焦的 制造描述:"供奉坚毅之皮弗娄牛。"
        },
        BEEFALO_GROOMER = {
            GENERIC = '哦！我差点忘了带皮弗娄牛！', -- 物品名:"皮弗娄牛美妆台"->默认 制造描述:"美牛原型机。"
            OCCUPIED = '你将成为周围最打扮醒目的生物!', -- 物品名:"皮弗娄牛美妆台"->被占领 制造描述:"美牛原型机。"
            BURNT = '嗷，麻烦呐。怎么又这样。' -- 物品名:"皮弗娄牛美妆台"->烧焦的 制造描述:"美牛原型机。"
        },
        BEEFALO_GROOMER_ITEM = '我不是已经设置好了吗？', -- 物品名:"美妆台套装" 制造描述:"美牛原型机。"
        YOTR_RABBITSHRINE = {
            GENERIC = '不知道它能给点什么小饰品？', -- 物品名:"兔人神龛"->默认 制造描述:"供奉舒适之兔人。"
            EMPTY = '那只兔子看起来很饿。', -- 物品名:"兔人神龛" 制造描述:"供奉舒适之兔人。"
            BURNT = '世事难料啊。' -- 物品名:"兔人神龛"->烧焦的 制造描述:"供奉舒适之兔人。"
        },
        NIGHTCAPHAT = '现在不是睡午觉的时候！', -- 物品名:"睡帽" 制造描述:"为你打瞌睡的脑袋准备的帽子。"
        YOTR_FOOD1 = '好吧，那就抓紧吃两片吧。', -- 物品名:"兔子卷" 制造描述:"制造这个蛋糕的过程中没有兔子受到伤害。"
        YOTR_FOOD2 = '我都差点忘了“蓝色”是什么味道了。', -- 物品名:"月饼" 制造描述:"“蓝色”风味！"
        YOTR_FOOD3 = '多么时尚的果冻甜点啊！', -- 物品名:"月冻" 制造描述:"这甜点美的让人不忍心咬一口。"
        YOTR_FOOD4 = '世间有比签子上串的食物更好的东西吗？', -- 物品名:"泡芙串" 制造描述:"蓬松有嚼劲的球。"
        YOTR_TOKEN = '必须让我得到满足！', -- 物品名:"挑战手套" 制造描述:"告诉兔人你想在枕头大战里试试手。"
        COZY_BUNNYMAN = '除了躺平你就无事可干吗？', -- 物品名:"舒适的兔人"
        HANDPILLOW_BEEFALOWOOL = '看上去很舒适。', -- 物品名:"皮弗娄牛毛枕头" 制造描述:"打出一记带牛毛的重击。"
        HANDPILLOW_KELP = '谁觉得这是个好主意？', -- 物品名:"海带枕头" 制造描述:"没有人喜欢盖着湿毯子睡。别以为湿枕头能好到哪去。"
        HANDPILLOW_PETALS = '多么好闻的香气！', -- 物品名:"花朵枕头" 制造描述:"枕头里装满了花的力量。"
        HANDPILLOW_STEELWOOL = '扎人扎得有点恐怖。', -- 物品名:"钢丝绵枕头" 制造描述:"专为枕头大战的严肃参赛者准备。"
        BODYPILLOW_BEEFALOWOOL = '看起来很舒服。', -- 物品名:"皮弗娄牛枕头盔甲" 制造描述:"加强你的枕头防卫。"
        BODYPILLOW_KELP = '谁觉得这是个好主意？', -- 物品名:"海带枕头盔甲" 制造描述:"一套湿漉漉的枕头盔甲。"
        BODYPILLOW_PETALS = '多么好闻的香气！', -- 物品名:"花朵枕头盔甲" 制造描述:"它提供了最低限度的保护，脱下它后你身上会有玫瑰花的香味。"
        BODYPILLOW_STEELWOOL = '扎人扎得有点恐怖。', -- 物品名:"钢丝绵枕头盔甲" 制造描述:"一个可穿戴的枕头，既有效又令人不快。"
        BISHOP_CHARGE_HIT = '啊！！', -- 物品名:"兔人神龛"->被主教攻击 制造描述:"供奉舒适之兔人。"
        TRUNKVEST_SUMMER = '很舒适。', -- 物品名:"透气背心" 制造描述:"暖和，但算不上非常暖和。"
        TRUNKVEST_WINTER = '里面的毛皮也是一样的厚。', -- 物品名:"松软背心" 制造描述:"足以抵御冬季暴雪的保暖背心。"
        TRUNK_COOKED = '一段时间后你就会习惯这种味道。', -- 物品名:"象鼻排"
        TRUNK_SUMMER = '我希望彻底洗干净了。', -- 物品名:"象鼻"
        TRUNK_WINTER = '为了节省时间，我就没费力气去拔毛。', -- 物品名:"冬象鼻"
        TUMBLEWEED = '它在旅程中肯定什么都见过了。', -- 物品名:"风滚草"
        TURKEYDINNER = '哦，这闻起来不错……', -- 物品名:"火鸡正餐"
        TWIGS = '树枝总是迟早会派上用场的。', -- 物品名:"树枝"
        UMBRELLA = '方便的小雨具。', -- 物品名:"雨伞" 制造描述:"遮阳挡雨！"
        GRASS_UMBRELLA = '时髦的雨具，对不对？', -- 物品名:"花伞" 制造描述:"漂亮轻便的保护伞。"
        UNIMPLEMENTED = '一条崩溃的时间线的残余物。', -- 物品名:"兔人神龛" 制造描述:"供奉舒适之兔人。"
        WAFFLES = '淋上糖浆后味道绝佳。', -- 物品名:"华夫饼"
        WALL_HAY = {
            GENERIC = '肯定能比上次好。', -- 物品名:"草墙"->默认
            BURNT = '我早该料到的。' -- 物品名:"草墙"->烧焦的
        },
        WALL_HAY_ITEM = '这些墙似乎总是在最不恰当的时候着火。', -- 物品名:"草墙" 制造描述:"草墙墙体。不太结实。"
        WALL_STONE = '它近期哪也去不了。', -- 物品名:"石墙"
        WALL_STONE_ITEM = '石头是一种经过时间检验的建筑材料。', -- 物品名:"石墙" 制造描述:"石墙墙体。"
        WALL_RUINS = '既有新，也有旧……我是不是刚刚创造了一个悖论？', -- 物品名:"铥墙"
        WALL_RUINS_ITEM = '感觉挺结实的。', -- 物品名:"铥墙" 制造描述:"这些墙可以承受相当多的打击。"
        WALL_WOOD = {
            GENERIC = '也不是很好看吧？', -- 物品名:"木墙"->默认
            BURNT = '下次我将使用不那么易燃的东西。' -- 物品名:"木墙"->烧焦的
        },
        WALL_WOOD_ITEM = '赶紧弄好吧，我没那么多时间。', -- 物品名:"木墙" 制造描述:"木墙墙体。"
        WALL_MOONROCK = '我想看到有东西穿透它！算了，还是别了。', -- 物品名:"月岩墙"
        WALL_MOONROCK_ITEM = '我感觉更安全了。', -- 物品名:"月岩墙" 制造描述:"月球疯子之墙。"
        WALL_DREADSTONE = '它只是一堵墙，仅此而已。', -- 物品名:"绝望石墙"
        WALL_DREADSTONE_ITEM = '快来装好它，没有时间可以浪费了。', -- 物品名:"绝望石墙" 制造描述:"将自己包围在最可怕的装饰之中。"
        FENCE = '一道异常普通的木栅栏。', -- 物品名:"木栅栏"
        FENCE_ITEM = '我不是已经建好了吗？', -- 物品名:"木栅栏" 制造描述:"木栅栏部分。"
        FENCE_GATE = '一扇异常普通的木门。', -- 物品名:"木门"
        FENCE_GATE_ITEM = '我就算现在不建，以后也得建。', -- 物品名:"木门" 制造描述:"木栅栏的门。"
        WALRUS = '他是个糟老头。', -- 物品名:"海象"
        WALRUSHAT = '它仍然有海象的味道。', -- 物品名:"贝雷帽"
        WALRUS_CAMP = {
            EMPTY = '它们会再长出来的。', -- 物品名:"海象营地"
            GENERIC = '从来没人邀请我进去过。我感觉他们就是不喜欢我！' -- 物品名:"海象营地"->默认
        },
        WALRUS_TUSK = '我应该把它装进口袋，将来拿来修补东西。', -- 物品名:"海象牙"
        WARDROBE = {
            GENERIC = '这回我可以随时改变造型了。', -- 物品名:"衣柜"->默认 制造描述:"随心变换面容。"
            BURNING = '这些是年轻人们追逐的 “热门”吗？', -- 物品名:"衣柜"->正在燃烧 制造描述:"随心变换面容。"
            BURNT = '也算少了一件分心的事情吧。' -- 物品名:"衣柜"->烧焦的 制造描述:"随心变换面容。"
        },
        WARG = '就知道迟早会遇到你。', -- 物品名:"座狼"
        WARGLET = '我发誓，它们以前比现在大……', -- 物品名:"青年座狼"
        WASPHIVE = '我一下都不想被蛰，谢谢你。', -- 物品名:"杀人蜂蜂窝"
        WATERBALLOON = '别以为我不会丢你！', -- 物品名:"水球" 制造描述:"球体灭火。"
        WATERMELON = '啊，耳目一新啊！', -- 物品名:"西瓜"
        WATERMELON_COOKED = '做熟似乎完全没有必要。', -- 物品名:"烤西瓜"
        WATERMELONHAT = '不管你信不信，它还是十分实用的。', -- 物品名:"西瓜帽" 制造描述:"提神醒脑，但感觉黏黏的。"
        WAXWELLJOURNAL = {
            GENERIC = '嗯。' -- 物品名:"暗影秘典"->默认 制造描述:"这将让你大吃一惊。"
        },
        WETGOOP = '我从来没吹嘘自己会做饭！', -- 物品名:"潮湿黏糊"
        WHIP = '这个应该能让很多生物听话。', -- 物品名:"三尾猫鞭" 制造描述:"提出有建设性的反馈意见。"
        WINTERHAT = '多么有趣的小毛线帽。介意我试戴一下吗？', -- 物品名:"冬帽" 制造描述:"保持脑袋温暖。"
        WINTEROMETER = {
            GENERIC = '谨慎起见，可能要注意一下温度。', -- 物品名:"温度测量仪"->默认 制造描述:"测量环境气温。"
            BURNT = '外面不可能那么热！' -- 物品名:"温度测量仪"->烧焦的 制造描述:"测量环境气温。"
        },
        WINTER_TREE = {
            BURNT = '这种情况有时确实会发生在树上。', -- 物品名:"冬季盛宴树"->烧焦的
            BURNING = '我敢打赌，是那些新奇电蜡烛引起的。', -- 物品名:"冬季盛宴树"->正在燃烧
            CANDECORATE = '这是一棵长成了的松树。', -- 物品名:"冬季盛宴树"->烛台？？？
            YOUNG = '小木桶里的小树。' -- 物品名:"冬季盛宴树"->还年轻
        },
        WINTER_TREESTAND = {
            GENERIC = '显然，它只接受松果。', -- 物品名:"盛宴树盆"->默认 制造描述:"种植并装饰一棵冬季盛宴树！"
            BURNT = '节日气氛受了影响。' -- 物品名:"盛宴树盆"->烧焦的 制造描述:"种植并装饰一棵冬季盛宴树！"
        },
        WINTER_ORNAMENT = '我对收集小饰品完全没有抵抗力。', -- 物品名:"圣诞小玩意"
        WINTER_ORNAMENTLIGHT = '这是我听说过的那种电蜡烛吗？', -- 物品名:"圣诞灯"
        WINTER_ORNAMENTBOSS = '啊。回忆啊。', -- 物品名:"华丽的装饰"
        WINTER_ORNAMENTFORGE = '我一定是错过了这个。', -- 物品名:"熔炉装饰"
        WINTER_ORNAMENTGORGE = '如此可爱的家庭。', -- 物品名:"暴食装饰"
        WINTER_FOOD1 = '我觉得它多半很快就会跑掉。', --gingerbread cookie		-- 物品名:"小姜饼"
        WINTER_FOOD2 = '一旦你吃了一个，就很难停下来。', --sugar cookie		-- 物品名:"糖曲奇饼"
        WINTER_FOOD3 = '嗯，薄荷！', --candy cane		-- 物品名:"拐杖糖"
        WINTER_FOOD4 = '跟姐提“永远”？呵呵！', --fruitcake		-- 物品名:"永远的水果蛋糕"
        WINTER_FOOD5 = '我一直不明白做把甜点做成根木头有什么吸引力。', --yule log cake		-- 物品名:"巧克力原木蛋糕"
        WINTER_FOOD6 = '好吧，那就吃一口布丁吧。', --plum pudding		-- 物品名:"李子布丁"
        WINTER_FOOD7 = '喝几口温暖的饮品。', --apple cider		-- 物品名:"苹果酒"
        WINTER_FOOD8 = '一杯热腾腾的甜蜜。', --hot cocoa		-- 物品名:"热可可"
        WINTER_FOOD9 = '一杯冰凉的蛋奶酒可能对我有好处。', --eggnog		-- 物品名:"美味的蛋酒"
        WINTERSFEASTOVEN = {
            GENERIC = '哎呀，别跟我说让我做饭……', -- 物品名:"砖砌烤炉"->默认 制造描述:"燃起了喜庆的火焰。"
            COOKING = '为什么做饭这么费时间？', -- 物品名:"砖砌烤炉"->无效 制造描述:"燃起了喜庆的火焰。"
            ALMOST_DONE_COOKING = '差不多该好了吧！', -- 物品名:"砖砌烤炉" 制造描述:"燃起了喜庆的火焰。"
            DISH_READY = '总算好了！' -- 物品名:"砖砌烤炉" 制造描述:"燃起了喜庆的火焰。"
        },
        BERRYSAUCE = '如果能单独吃，为什么还要把它放在其他东西上呢？', -- 物品名:"快乐浆果酱"
        BIBINGKA = '酥脆可口。', -- 物品名:"比宾卡米糕"
        CABBAGEROLLS = '肉卷在卷心菜里，就这么简单。', -- 物品名:"白菜卷"
        FESTIVEFISH = '我没想到肉豆蔻、肉桂和鱼会如此相配！', -- 物品名:"节庆鱼料理"
        GRAVY = '我不需要把它浇在火鸡肉上，给我递个勺子来。', -- 物品名:"好肉汁"
        LATKES = '酥脆可口的土豆圈。', -- 物品名:"土豆饼"
        LUTEFISK = '这个庆祝活动涉及到的鱼的数量令人吃惊。', -- 物品名:"苏打鱼"
        MULLEDDRINK = '它能由内而外地温暖你。', -- 物品名:"香料潘趣酒"
        PANETTONE = '嗯，面包。', -- 物品名:"托尼甜面包"
        PAVLOVA = '它比我预期的要脆，这样挺好。', -- 物品名:"巴甫洛娃蛋糕"
        PICKLEDHERRING = '这一定是某种美味佳肴。', -- 物品名:"腌鲱鱼"
        POLISHCOOKIE = '我多放几个在口袋里……别介意。', -- 物品名:"波兰饼干"
        PUMPKINPIE = '能一口吞的，干嘛还浪费时间把它切成片？', -- 物品名:"南瓜派"
        ROASTTURKEY = '多么巨大的火鸡腿啊！', -- 物品名:"烤火鸡"
        STUFFING = '我再饱也愿意多吃点馅料。', -- 物品名:"烤火鸡面包馅"
        SWEETPOTATO = '一个奇怪的食谱，但我承认我喜欢它。', -- 物品名:"红薯焗饭"
        TAMALES = '火辣辣！', -- 物品名:"塔马利"
        TOURTIERE = '这正是我最初想象的肉馅饼的样子。', -- 物品名:"饕餮馅饼"
        TABLE_WINTERS_FEAST = {
            GENERIC = '空荡荡的餐桌没什么好看的。', -- 物品名:"冬季盛宴餐桌"->默认 制造描述:"一起来享用冬季盛宴吧。"
            HAS_FOOD = '精心布置的餐桌。', -- 物品名:"冬季盛宴餐桌" 制造描述:"一起来享用冬季盛宴吧。"
            WRONG_TYPE = '嗷，麻烦呐。现在是什么季节？', -- 物品名:"冬季盛宴餐桌" 制造描述:"一起来享用冬季盛宴吧。"
            BURNT = '晚餐可能要等一等了。' -- 物品名:"冬季盛宴餐桌"->烧焦的 制造描述:"一起来享用冬季盛宴吧。"
        },
        GINGERBREADWARG = '我想我已经没有任何食欲了……', -- 物品名:"姜饼座狼"
        GINGERBREADHOUSE = '它的装饰太有品味了！', -- 物品名:"姜饼猪屋"
        GINGERBREADPIG = '哦，这些是会跑的！', -- 物品名:"姜饼猪"
        CRUMBS = '可怜的东西，它正把我们引向它的家。', -- 物品名:"饼干屑"
        WINTERSFEASTFUEL = '我信不太过那东西。', -- 物品名:"节日欢愉"
        KLAUS = '又到了每年的这个时候了吗？', -- 物品名:"克劳斯"
        KLAUS_SACK = '至少他留下了一些好东西！', -- 物品名:"赃物袋"
        KLAUSSACKKEY = '这看起来正是我需要的。', -- 物品名:"麋鹿茸"
        WORMHOLE = {
            GENERIC = '它暂时在休息。', -- 物品名:"虫洞"->默认
            OPEN = '不是我喜欢的出行方式，但在紧要关头还是可以的。' -- 物品名:"虫洞"->打开
        },
        WORMHOLE_LIMITED = '我还是用自己的方式旅行吧。', -- 物品名:"生病的虫洞"->一次性虫洞 单机
        ACCOMPLISHMENT_SHRINE = '我想用一下它，我想让全世界都知道我的所作所为。', --single player		-- 物品名:"奖杯" 制造描述:"证明你作为一个人的价值。"
        LIVINGTREE = '它这张脸简直可怕！', -- 物品名:"完全正常的树"
        ICESTAFF = '它会冻结所有挡它道的人。', -- 物品名:"冰魔杖" 制造描述:"把敌人冰冻在原地。"
        REVIVER = '不如。。。算了。', -- 物品名:"告密的心" 制造描述:"鬼魂朋友复活了，好可怕。"
        SHADOWHEART = '还在跳动……', -- 物品名:"暗影心房"
        ATRIUM_RUBBLE = {
            LINE_1 = '这就是故事的开始。', -- 物品名:"远古壁画"->第一行
            LINE_2 = '我很怕科雷吃书，所以我不对这些壁画发表来自月亮的评论。', -- 物品名:"远古壁画"->第二行
            LINE_3 = '我曾经的一个朋友也被黑暗吞噬了。而我也变成现在这样了。', -- 物品名:"远古壁画"->第三行
            LINE_4 = '但不能妄下结论，被黑暗吞噬和被月光吞噬或许并没有区别。', -- 物品名:"远古壁画"->第四行
            LINE_5 = '我们只需要表演好自己的角色，于是故事照常运转。' -- 物品名:"远古壁画"->第五行
        },
        ATRIUM_STATUE = '古代历史上的一个凝固了的时刻。', -- 物品名:"远古雕像"
        ATRIUM_LIGHT = {
            ON = '我应当保持距离。', -- 物品名:"远古灯柱"->开启
            OFF = '我不知道要不要打开这些灯……' -- 物品名:"远古灯柱"->关闭
        },
        ATRIUM_GATE = {
            ON = '呵呵……', -- 物品名:"远古大门"->开启
            OFF = '行吧。', -- 物品名:"远古大门"->关闭
            CHARGING = '为什么？', -- 物品名:"远古大门"->充能中
            DESTABILIZING = '为什么！', -- 物品名:"远古大门"->不稳定
            COOLDOWN = '还是别管它的好。' -- 物品名:"远古大门"->冷却中
        },
        ATRIUM_KEY = '必要的？', -- 物品名:"远古钥匙"
        LIFEINJECTOR = '它对我没有用，我需要的是更多的时间。', -- 物品名:"强心针" 制造描述:"提高下你那日渐衰退的最大健康值吧。"
        SKELETON_PLAYER = {
            MALE = '%s！也许还有时间把他带回来！', -- 物品名:"骷髅"->男性
            FEMALE = '%s！有我在，是不会让你就这么走的！', -- 物品名:"骷髅"->女性
            ROBOT = '%s! 也许还有时间救回来！', -- 物品名:"骷髅"->机器人
            DEFAULT = '%s！有我在，是不会让你就这么走的！' -- 物品名:"物品栏物品"->默认
        },
        ROCK_MOON = '免费的。', -- 物品名:"岩石"
        MOONROCKNUGGET = '归我了。', -- 物品名:"月岩"
        MOONROCKCRATER = '我有没有看到地上有宝石？', -- 物品名:"带孔月岩" 制造描述:"用于划定地盘的岩石。"
        MOONROCKSEED = '怎么落到这里来了。', -- 物品名:"天体宝球"
        REDMOONEYE = '睁一只眼闭一只眼也不是坏事。', -- 物品名:"红色月眼"
        PURPLEMOONEYE = '我想我还可以再修补一下。', -- 物品名:"紫色月眼"
        GREENMOONEYE = '它可以帮助我追踪我去过的地方。', -- 物品名:"绿色月眼"
        ORANGEMOONEYE = '我可以用它来设计更多有趣的东西。', -- 物品名:"橘色月眼"
        YELLOWMOONEYE = '知道每个人的位置可以为我节省很多时间。', -- 物品名:"黄色月眼"
        BLUEMOONEYE = '当我有时间了，我可能会再修补一下。', -- 物品名:"蓝色月眼"
        BOARRIOR = '你可真大！', -- 物品名:"大熔炉猪战士"->大熔炉猪战士
        BOARON = '我可以应对他！', -- 物品名:"战猪"
        PEGHOOK = '那家伙喷出来的东西有腐蚀性！', -- 物品名:"蝎子"
        TRAILS = '他的胳膊真壮啊。', -- 物品名:"野猪猩"
        TURTILLUS = '它的壳有尖刺！', -- 物品名:"坦克龟"
        SNAPPER = '这家伙会咬人。', -- 物品名:"鳄鱼指挥官"
        RHINODRILL = '他的鼻子很适合干这个活。', -- 物品名:"后扣帽犀牛兄弟"
        BEETLETAUR = '我在这里都能闻到他的气味！', -- 物品名:"地狱独眼巨猪"
        LAVAARENA_PORTAL = {
            ON = '我要走了。', -- 物品名:"远古大门"->开启
            GENERIC = '能过来，应该也能回去吧？' -- 物品名:"远古大门"->默认
        },
        HEALINGSTAFF = '释放再生的力量。', -- 物品名:"生命魔杖"
        FIREBALLSTAFF = '召唤流星从天而降。', -- 物品名:"地狱魔杖"
        HAMMER_MJOLNIR = '这把敲东西的锤子可真重。', -- 物品名:"锻锤"
        SPEAR_GUNGNIR = '我可以用它快速充电。', -- 物品名:"尖齿矛"
        BLOWDART_LAVA = '我可以在范围内用这个武器。', -- 物品名:"吹箭"
        BLOWDART_LAVA2 = '它利用一股强气流来推动抛射物。', -- 物品名:"熔化吹箭"
        WEBBER_SPIDER_MINION = '可以说他们是在为我们战斗吧。', -- 物品名:"蜘蛛宝宝"
        BOOK_FOSSIL = '这样能把那些怪物拖住一阵子。', -- 物品名:"石化之书"
        SPEAR_LANCE = '它直击要害。', -- 物品名:"螺旋矛"
        BOOK_ELEMENTAL = '我看不清这些字。', -- 物品名:"召唤之书"
        QUAGMIRE_ALTAR = {
            GENERIC = '我们最好开始煮些祭品。', -- 物品名:"饕餮祭坛"->默认
            FULL = '它正在消化。' -- 物品名:"饕餮祭坛"->满了
        },
        QUAGMIRE_SUGARWOODTREE = {
            GENERIC = '它含有大量美味可口的树液。', -- 物品名:"糖木树"->默认
            STUMP = '那棵树哪去了？真是一桩谜题。', -- 物品名:"糖木树"->暴食模式糖木树只剩树桩了
            TAPPED_EMPTY = '丰富的汁液。', -- 物品名:"糖木树"->暴食模式糖木树空了
            TAPPED_READY = '香甜的金黄色汁液。', -- 物品名:"糖木树"->暴食模式糖木树好了
            TAPPED_BUGS = '蚂蚁就是这样来的。', -- 物品名:"糖木树"->暴食模式糖木树上有蚂蚁
            WOUNDED = '它看上去生病了。' -- 物品名:"糖木树"->暴食糖木树生病了
        },
        QUAGMIRE_SPOTSPICE_SHRUB = {
            GENERIC = '它让我想起来那些带触手的怪物。', -- 物品名:"带斑点的小灌木"->默认
            PICKED = '从那丛灌木中采集不到更多果实了。' -- 物品名:"带斑点的小灌木"->被采完了
        },
        QUAGMIRE_SALT_RACK = {
            READY = '盐积聚在绳子上了。', -- 物品名:"盐架"->准备好的 满的
            GENERIC = '科学是需要时间的。' -- 物品名:"盐架"->默认
        },
        QUAGMIRE_SAFE = {
            GENERIC = '这是保险箱，用来保护物品安全的。', -- 物品名:"保险箱"->默认
            LOCKED = '没有钥匙就打不开。' -- 物品名:"保险箱"->锁住了
        },
        QUAGMIRE_MUSHROOMSTUMP = {
            GENERIC = '那些是蘑菇吗？这真是一桩难题。', -- 物品名:"蘑菇"->默认
            PICKED = '应该不会长回来了。' -- 物品名:"蘑菇"->被采完了
        },
        QUAGMIRE_RUBBLE_HOUSE = {
            '空无一人。', -- 物品名:"残破的房子" 制造描述:未找到
            '这个小镇被摧毁了。', -- 物品名:"残破的房子" 制造描述:未找到
            '不知道他们惹怒了谁。' -- 物品名:"残破的房子" 制造描述:未找到
        },
        QUAGMIRE_SWAMPIGELDER = {
            GENERIC = '我猜你是这里的老大？', -- 物品名:"沼泽猪长老"->默认
            SLEEPING = '它睡着了，暂时睡着了。' -- 物品名:"沼泽猪长老"->睡着了
        },
        QUAGMIRE_FOOD = {
            GENERIC = '我应该把它献祭在饕餮祭坛上。', -- 物品名:未找到
            MISMATCH = '不是它想要的。', -- 物品名:未找到
            MATCH = '科学说这样会安抚天空之神。', -- 物品名:未找到
            MATCH_BUT_SNACK = '真的，这更像是小吃。' -- 物品名:未找到
        },
        QUAGMIRE_PARK_GATE = {
            GENERIC = '没钥匙不行。', -- 物品名:"铁门"->默认
            LOCKED = '锁得牢牢的。' -- 物品名:"铁门"->锁住了
        },
        QUAGMIRE_PIGEON = {
            DEAD = '死了。', -- 物品名:"鸽子"->死了 制造描述:"这是一只完整的活鸽。"
            GENERIC = '羽翼丰满。', -- 物品名:"鸽子"->默认 制造描述:"这是一只完整的活鸽。"
            SLEEPING = '它睡着了，暂时睡着了。' -- 物品名:"鸽子"->睡着了 制造描述:"这是一只完整的活鸽。"
        },
        WINONA_CATAPULT = {
            GENERIC = '她对中世纪的发明进行了现代化改造。', -- 物品名:"薇诺娜的投石机"->默认 制造描述:"向敌人投掷大石块"
            OFF = '是要上发条么？', -- 物品名:"薇诺娜的投石机"->关闭 制造描述:"向敌人投掷大石块"
            BURNING = '这对我们来说不是好兆头。', -- 物品名:"薇诺娜的投石机"->正在燃烧 制造描述:"向敌人投掷大石块"
            BURNT = '我想知道她能以多快的速度建造一个新的……' -- 物品名:"薇诺娜的投石机"->烧焦的 制造描述:"向敌人投掷大石块"
        },
        WINONA_SPOTLIGHT = {
            GENERIC = '那位年轻的女士是个天才!', -- 物品名:"薇诺娜的聚光灯"->默认 制造描述:"白天夜里都发光"
            OFF = '是要上发条么？', -- 物品名:"薇诺娜的聚光灯"->关闭 制造描述:"白天夜里都发光"
            BURNING = '这对我们来说不是好兆头。', -- 物品名:"薇诺娜的聚光灯"->正在燃烧 制造描述:"白天夜里都发光"
            BURNT = '我想知道她能以多快的速度建造一个新的……' -- 物品名:"薇诺娜的聚光灯"->烧焦的 制造描述:"白天夜里都发光"
        },
        WINONA_BATTERY_LOW = {
            GENERIC = '那么这就是现代化电气设备？', -- 物品名:"薇诺娜的发电机"->默认 制造描述:"要确保电力供应充足"
            LOWPOWER = '这就没电了？还是发条可靠。', -- 物品名:"薇诺娜的发电机"->没电了 制造描述:"要确保电力供应充足"
            OFF = '电用完了吗？去哪找电呢？', -- 物品名:"薇诺娜的发电机"->关闭 制造描述:"要确保电力供应充足"
            BURNING = '我也许应该警告她会这样。', -- 物品名:"薇诺娜的发电机"->正在燃烧 制造描述:"要确保电力供应充足"
            BURNT = '我想知道她能以多快的速度建造一个新的……' -- 物品名:"薇诺娜的发电机"->烧焦的 制造描述:"要确保电力供应充足"
        },
        WINONA_BATTERY_HIGH = {
            GENERIC = '看来她也在将宝石融入她的设计中。', -- 物品名:"薇诺娜的宝石发电机"->默认 制造描述:"这玩意烧宝石，所以肯定不会差。"
            LOWPOWER = '一块新鲜的宝石应该能让它再持续一段时间。', -- 物品名:"薇诺娜的宝石发电机"->没电了 制造描述:"这玩意烧宝石，所以肯定不会差。"
            OFF = '它耗尽了魔法能量。', -- 物品名:"薇诺娜的宝石发电机"->关闭 制造描述:"这玩意烧宝石，所以肯定不会差。"
            BURNING = '我也许应该警告她会这样。', -- 物品名:"薇诺娜的宝石发电机"->正在燃烧 制造描述:"这玩意烧宝石，所以肯定不会差。"
            BURNT = '我想知道她能以多快的速度建造一个新的……' -- 物品名:"薇诺娜的宝石发电机"->烧焦的 制造描述:"这玩意烧宝石，所以肯定不会差。"
        },
        COMPOSTWRAP = '萝卜青菜各有所爱。', -- 物品名:"肥料包" 制造描述:"“草本”的疗法。"
        ARMOR_BRAMBLE = '有时，拥有一个带刺的外壳是有价值的。', -- 物品名:"荆棘外壳" 制造描述:"让大自然告诉你什么叫“滚开”。"
        TRAP_BRAMBLE = '如果有任何入侵者经过，他们将得到一个棘手的惊喜。', -- 物品名:"荆棘陷阱" 制造描述:"中招机会平等的扰人陷阱。"
        BOATFRAGMENT03 = '呜呜呜……在海上会发生很多可怕的事情。', -- 物品名:"船碎片"
        BOATFRAGMENT04 = '呜呜呜……在海上会发生很多可怕的事情。', -- 物品名:"船碎片"
        BOATFRAGMENT05 = '有人的船遇到了不测。', -- 物品名:"船碎片"
        BOAT_LEAK = '我必须马上堵住漏洞！', -- 物品名:"漏洞"
        MAST = '那个部分的作用是固定风帆。', -- 物品名:"桅杆" 制造描述:"乘风破浪会有时。"
        SEASTACK = '你敢打我的船！', -- 物品名:"海蚀柱"
        FISHINGNET = '就是一张网。', --unimplemented		-- 物品名:"渔网" 制造描述:"就是一张网。"
        ANTCHOVIES = '啊,我能丢回去吗？', --unimplemented		-- 物品名:"蚁头凤尾鱼"
        STEERINGWHEEL = '我可怜的双手会因为航海而长出茧子。', -- 物品名:"方向舵" 制造描述:"航海必备道具。"
        ANCHOR = '我更适合做调校，而不是干重活。', -- 物品名:"锚" 制造描述:"船用刹车"
        BOATPATCH = '我希望我用不到它们……', -- 物品名:"船补丁" 制造描述:"打补丁永远不晚。"
        DRIFTWOOD_TREE = {
            BURNING = '世事难料啊。', -- 物品名:"浮木"->正在燃烧
            BURNT = '它现在没什么用了。', -- 物品名:"浮木"->烧焦的
            CHOPPED = '我应该检查一下有没有树根。', -- 物品名:"浮木"->被砍了
            GENERIC = '那棵树早已经死了。' -- 物品名:"浮木"->默认
        },
        DRIFTWOOD_LOG = '谁知道它在海洋中漂浮了多久？', -- 物品名:"浮木桩"
        MOON_TREE = {
            BURNING = '有时事情就是这样的。', -- 物品名:"月树"->正在燃烧
            BURNT = '这就是这棵树的结局。', -- 物品名:"月树"->烧焦的
            CHOPPED = '没必要干等它重新长回来。', -- 物品名:"月树"->被砍了
            GENERIC = '已经灰掉了。' -- 物品名:"月树"->默认
        },
        MOON_TREE_BLOSSOM = '全白了。', -- 物品名:"月树花"
        MOONBUTTERFLY = {
            GENERIC = '它们的生命如此短暂，太不公平了。', -- 物品名:"月蛾"->默认
            HELD = '我的口袋里有点杂乱，请尽量不要被压坏！' -- 物品名:"月蛾"->拿在手里
        },
        MOONBUTTERFLYWINGS = '反正飞蛾的寿命也不长。', -- 物品名:"月蛾翅膀"
        MOONBUTTERFLY_SAPLING = '飞蛾变成一棵树，几乎不觉得有什么不正常。', -- 物品名:"月树苗"
        ROCK_AVOCADO_FRUIT = '那个一下就会把牙崩下来。', -- 物品名:"石果"
        ROCK_AVOCADO_FRUIT_RIPE = '等了这么久，总算能吃了。', -- 物品名:"成熟石果"
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = '花时间烹饪它也不知道是不是值得。', -- 物品名:"熟石果"
        ROCK_AVOCADO_FRUIT_SPROUT = '有一个新的小生命正在形成。', -- 物品名:"发芽的石果"
        ROCK_AVOCADO_BUSH = {
            BARREN = '它早已经过了全盛时期。', -- 物品名:"石果灌木丛"
            WITHERED = '这么热的天气肯定结不出果。', -- 物品名:"石果灌木丛"->枯萎了
            GENERIC = '我这辈子见过很多奇怪的事情。这就是其中之一。', -- 物品名:"石果灌木丛"->默认
            PICKED = '等有水果能摘了我再回来。', -- 物品名:"石果灌木丛"->被采完了
            DISEASED = '它看上去很不舒服。', --unimplemented		-- 物品名:"石果灌木丛"->生病了
            DISEASING = '呃...有些地方不对劲。', --unimplemented		-- 物品名:"石果灌木丛"->正在生病？？
            BURNING = '嗷，麻烦呐。我本来需要那个的！' -- 物品名:"石果灌木丛"->正在燃烧
        },
        DEAD_SEA_BONES = '这不是我在海滩漫步时希望看到的。', -- 物品名:"海骨"
        HOTSPRING = {
            GENERIC = '它看起来如此温暖和诱人。', -- 物品名:"温泉"->默认
            BOMBED = '质疑这些事情是没有意义的。', -- 物品名:"温泉"
            GLASS = '一个巨大的水花，冻结在了时光中。', -- 物品名:"温泉"
            EMPTY = '站在一个空洞旁边没有任何意义。' -- 物品名:"温泉"
        },
        MOONGLASS = '我要全吃完，不给那些冒险者留。', -- 物品名:"月亮碎片"
        MOONGLASS_CHARGED = '很快就没能量了。', -- 物品名:"注能月亮碎片"
        MOONGLASS_ROCK = '你就不能多给一些免费的玻璃吗。', -- 物品名:"月光玻璃"
        BATHBOMB = '泡个热水澡，放松一两下，也许会很好。', -- 物品名:"沐浴球" 制造描述:"春天里来百花香？这点子把地都炸碎了"
        TRAP_STARFISH = {
            GENERIC = '我不会再着你的道了。', -- 物品名:"海星"->默认
            CLOSED = '哦，你真的是充满了恶意！' -- 物品名:"海星"
        },
        DUG_TRAP_STARFISH = '这是它应得的。', -- 物品名:"海星陷阱"
        SPIDER_MOON = {
            GENERIC = '那个蜘蛛没组装对。', -- 物品名:"破碎蜘蛛"->默认
            SLEEPING = '暂时消停了。', -- 物品名:"破碎蜘蛛"->睡着了
            DEAD = '它走到了尽头。' -- 物品名:"破碎蜘蛛"->死了
        },
        MOONSPIDERDEN = '它们不是很擅长装潢，对吧？', -- 物品名:"破碎蜘蛛洞"
        FRUITDRAGON = {
            GENERIC = '多么有趣的小生物。', -- 物品名:"沙拉蝾螈"->默认
            RIPE = '真可惜，它们是如此美味。', -- 物品名:"沙拉蝾螈"
            SLEEPING = '我想它没有什么更好的事情可做。' -- 物品名:"沙拉蝾螈"->睡着了
        },
        PUFFIN = {
            GENERIC = '多么欢乐的鸟儿啊。', -- 物品名:"海鹦鹉"->默认
            HELD = '带着这么大的一只鸟到处走有点怪……', -- 物品名:"海鹦鹉"->拿在手里
            SLEEPING = '它很快就睡着了。' -- 物品名:"海鹦鹉"->睡着了
        },
        MOONGLASSAXE = '锋利的工具能提高劈砍效率！', -- 物品名:"月光玻璃斧" 制造描述:"脆弱而有效。"
        GLASSCUTTER = '你就不应该告诉冒险者可以做这个。', -- 物品名:"玻璃刀" 制造描述:"尖端武器。"
        ICEBERG = {
            GENERIC = '一定要避开那东西。', --unimplemented		-- 物品名:"迷你冰山"->默认
            MELTED = '完全融化了。' --unimplemented		-- 物品名:"迷你冰山"->融化了
        },
        ICEBERG_MELTED = '完全融化了。', --unimplemented		-- 物品名:"融化的迷你冰山"
        MINIFLARE = '它会让大家看到我在哪里，我什么时候在那就是另一回事了。', -- 物品名:"信号弹" 制造描述:"为你信任的朋友照亮前路。"
        MEGAFLARE = '我可不想引来不必要的关注。', -- 物品名:"敌对信号弹" 制造描述:"为你的敌人点亮一束光。"
        MOON_FISSURE = {
            GENERIC = '想在这里小歇一会。', -- 物品名:"天体裂隙"->默认
            NOLIGHT = '小心点。' -- 物品名:"天体裂隙"
        },
        MOON_ALTAR = {
            MOON_ALTAR_WIP = '还缺点什么。', -- 物品名:"组装一半的祭坛"
            GENERIC = '完成了。' -- 物品名:"天体祭坛"->默认
        },
        MOON_ALTAR_IDOL = '你就不能把它们排在一起吗。', -- 物品名:"天体祭坛雕像"
        MOON_ALTAR_GLASS = '你就不能把它们排在一起吗。', -- 物品名:"天体祭坛底座"
        MOON_ALTAR_SEED = '你就不能把它们排在一起吗。', -- 物品名:"天体祭坛宝球"
        MOON_ALTAR_ROCK_IDOL = '还得开采出来。', -- 物品名:"吸引人的结构"
        MOON_ALTAR_ROCK_GLASS = '还得开采出来。', -- 物品名:"吸引人的结构"
        MOON_ALTAR_ROCK_SEED = '还得开采出来。', -- 物品名:"吸引人的结构"
        MOON_ALTAR_CROWN = '怎么落到这里了。', -- 物品名:"未激活天体贡品"
        MOON_ALTAR_COSMIC = '终于对了。', -- 物品名:"天体贡品"
        MOON_ALTAR_ASTRAL = '快点。', -- 物品名:"天体圣殿"
        MOON_ALTAR_ICON = '真麻烦。', -- 物品名:"天体圣殿象征"
        MOON_ALTAR_WARD = '你就不嫌麻烦吗……', -- 物品名:"天体圣殿卫戍"
        SEAFARING_PROTOTYPER = {
            GENERIC = '海洋比时间流要难驾驭得多。', -- 物品名:"智囊团"->默认 制造描述:"海上科学。"
            BURNT = '嗷，麻烦呐。这下我又要做一个！' -- 物品名:"智囊团"->烧焦的 制造描述:"海上科学。"
        },
        BOAT_ITEM = '哦，我讨厌大海，时间流在它周围变得摇摆不定。', -- 物品名:"船套装" 制造描述:"让大海成为你的领地。"
        BOAT_GRASS_ITEM = '那东西经不起时间的考验。', -- 物品名:"草筏套装" 制造描述:"享受周末出游的乐趣吧。"
        STEERINGWHEEL_ITEM = '千万别忘了把它安到船上。', -- 物品名:"方向舵套装" 制造描述:"航海必备道具。"
        ANCHOR_ITEM = '我想这可能有用……但我不愿在一个地方呆得太久。', -- 物品名:"锚套装" 制造描述:"船用刹车"
        MAST_ITEM = '那个将会是……固定风帆的组件。', -- 物品名:"桅杆套装" 制造描述:"乘风破浪会有时。"
        MUTATEDHOUND = {
            DEAD = '我肯定不会想它的。', -- 物品名:"恐怖猎犬"->死了
            GENERIC = '丑!', -- 物品名:"恐怖猎犬"->默认
            SLEEPING = '有点太丑了！' -- 物品名:"恐怖猎犬"->睡着了
        },
        MUTATED_PENGUIN = {
            DEAD = '也许这就是最好的结果了。', -- 物品名:"月岩企鸥"->死了
            GENERIC = '那个生物真的是活的吗？！', -- 物品名:"月岩企鸥"->默认
            SLEEPING = '它是在睡觉，还是……？' -- 物品名:"月岩企鸥"->睡着了
        },
        CARRAT = {
            DEAD = '我想它已经走了。', -- 物品名:"胡萝卜鼠"->死了 制造描述:"灵巧机敏，富含胡萝卜素。"
            GENERIC = '这是我见过的最有活力的胡萝卜。', -- 物品名:"胡萝卜鼠"->默认 制造描述:"灵巧机敏，富含胡萝卜素。"
            HELD = '不要再扭动了！', -- 物品名:"胡萝卜鼠"->拿在手里 制造描述:"灵巧机敏，富含胡萝卜素。"
            SLEEPING = '它正在快速地小憩。' -- 物品名:"胡萝卜鼠"->睡着了 制造描述:"灵巧机敏，富含胡萝卜素。"
        },
        BULLKELP_PLANT = {
            GENERIC = '海带只比草稍微有趣一些。', -- 物品名:"公牛海带"->默认
            PICKED = '它迟早会长回来。' -- 物品名:"公牛海带"->被采完了
        },
        BULLKELP_ROOT = '我可以把它种在更方便的地方。', -- 物品名:"公牛海带茎"
        KELPHAT = '这不是我穿过的最疯狂的东西。', -- 物品名:"海花环" 制造描述:"让人神经焦虑的东西。"
        KELP = '看着美，吃着香。', -- 物品名:"海带叶"
        KELP_COOKED = '我不知道为什么要浪费时间来烹饪它。', -- 物品名:"熟海带叶"
        KELP_DRIED = '我不知道这是否值得等待。', -- 物品名:"干海带叶"
        GESTALT = '与另一个神秘体做交易会不会是玩过头了？', -- 物品名:"虚影"
        GESTALT_GUARD = '他们对谈话没有太大兴趣。', -- 物品名:"大虚影"
        COOKIECUTTER = '哦，这些东西让我不寒而栗。', -- 物品名:"饼干切割机"
        COOKIECUTTERSHELL = '小心那些刺。', -- 物品名:"饼干切割机壳"
        COOKIECUTTERHAT = '如果你退后一步，眯起眼睛，它几乎看起来很时尚。', -- 物品名:"饼干切割机帽子" 制造描述:"穿着必须犀利。"
        SALTSTACK = {
            GENERIC = '这只是盐！没有什么好纠结的。', -- 物品名:"盐堆"->默认
            MINED_OUT = '我现在感觉好一点了。', -- 物品名:"盐堆"
            GROWING = '哦，太好了，它又长出来了。' -- 物品名:"盐堆"->正在生长
        },
        SALTROCK = '在我的饭菜上加点盐可能会很好。', -- 物品名:"盐晶"
        SALTBOX = '老式的食品储存方式。', -- 物品名:"盐盒" 制造描述:"用盐来储存食物。"
        TACKLESTATION = '钓鱼太麻烦了，不仅耗时，还要准备！', -- 物品名:"钓具容器" 制造描述:"传统的用饵钓鱼。"
        TACKLESKETCH = '我以前好像没见过这种钓具。也有可能是我忘记了……', -- 物品名:"{item}广告"
        MALBATROSS = '这当然不会是一次安静、愉快的乘船旅行……', -- 物品名:"邪天翁"
        MALBATROSS_FEATHER = '至少我在那场灾难中得到了一根漂亮的羽毛。', -- 物品名:"邪天翁羽毛"
        MALBATROSS_BEAK = '它的主人应该不会想它。', -- 物品名:"邪天翁喙"
        MAST_MALBATROSS_ITEM = '我越早把它放在我的船上，我就能越快起航。', -- 物品名:"飞翼风帆套装" 制造描述:"像海鸟一样航向深蓝。"
        MAST_MALBATROSS = '我终于可以让这艘老船提速了!', -- 物品名:"飞翼风帆" 制造描述:"像海鸟一样航向深蓝。"
        MALBATROSS_FEATHERED_WEAVE = '羽毛制成的织物，他们还会想到什么？', -- 物品名:"羽毛帆布" 制造描述:"精美的羽毛布料。"
        GNARWAIL = {
            GENERIC = '又一个胡编乱造的生物。', -- 物品名:"一角鲸"->默认
            BROKENHORN = '我敢打赌，你现在觉得自己很傻吧？', -- 物品名:"一角鲸"
            FOLLOWER = '好吧，你可以一起去，不过不要拖累我啊。', -- 物品名:"一角鲸"->追随者
            BROKENHORN_FOLLOWER = '我开始觉得取走它的角有点不好了。' -- 物品名:"一角鲸"
        },
        GNARWAIL_HORN = '谁曾听说过还有长角的鲸鱼？', -- 物品名:"一角鲸的角"
        WALKINGPLANK = '此乃不祥之兆。', -- 物品名:"木板"
        WALKINGPLANK_GRASS = '此乃不祥之兆。', -- 物品名:"木板"
        OAR = '用风帆会不会快一些？', -- 物品名:"桨" 制造描述:"划，划，划小船。"
        OAR_DRIFTWOOD = '用风帆会不会快一些？', -- 物品名:"浮木桨" 制造描述:"小桨要用浮木造？"
        OCEANFISHINGROD = '我真的不喜欢钓鱼。', -- 物品名:"海钓竿" 制造描述:"像职业选手一样钓鱼吧。"
        OCEANFISHINGBOBBER_NONE = '我弄丢浮标了！也可能是我还没连上……', -- 物品名:"鱼钩"
        OCEANFISHINGBOBBER_BALL = '我看就是一个标准的浮标。', -- 物品名:"木球浮标" 制造描述:"经典设计，初学者和职业钓手两相宜。"
        OCEANFISHINGBOBBER_OVAL = '稍微加上了的浮标。', -- 物品名:"硬物浮标" 制造描述:"在经典浮标的基础上融入了时尚设计。"
        OCEANFISHINGBOBBER_CROW = '我知道我终会为那根羽毛找到用途!', -- 物品名:"黑羽浮标" 制造描述:"深受职业钓手的喜爱。"
        OCEANFISHINGBOBBER_ROBIN = '我知道我终会为那根羽毛找到用途!', -- 物品名:"红羽浮标" 制造描述:"深受职业钓手的喜爱。"
        OCEANFISHINGBOBBER_ROBIN_WINTER = '我知道我终会为那根羽毛找到用途!', -- 物品名:"蔚蓝羽浮标" 制造描述:"深受职业钓手的喜爱。"
        OCEANFISHINGBOBBER_CANARY = '我知道我终会为那根羽毛找到用途!', -- 物品名:"黄羽浮标" 制造描述:"深受职业钓手的喜爱。"
        OCEANFISHINGBOBBER_GOOSE = '我确实很喜欢钓鱼的这一部分，摆弄鱼饵和浮标什么的！', -- 物品名:"鹅羽浮标" 制造描述:"高级羽绒浮标。"
        OCEANFISHINGBOBBER_MALBATROSS = '我确实很喜欢钓鱼的这一部分，摆弄鱼饵和浮标什么的！', -- 物品名:"邪天翁羽浮标" 制造描述:"高级巨鸟浮标。"
        OCEANFISHINGLURE_SPINNER_RED = '如果能帮我更快抓到鱼，那我愿意试。', -- 物品名:"日出旋转亮片" 制造描述:"早起的鱼儿有虫吃。"
        OCEANFISHINGLURE_SPINNER_GREEN = '如果能帮我更快抓到鱼，那我愿意试。', -- 物品名:"黄昏旋转亮片" 制造描述:"低光照环境里效果最好。"
        OCEANFISHINGLURE_SPINNER_BLUE = '如果能帮我更快抓到鱼，那我愿意试。', -- 物品名:"夜间旋转亮片" 制造描述:"适用于夜间垂钓。"
        OCEANFISHINGLURE_SPOON_RED = '如果能帮我更快抓到鱼，那我愿意试。', -- 物品名:"日出匙型假饵" 制造描述:"早起的鱼儿有虫吃。"
        OCEANFISHINGLURE_SPOON_GREEN = '如果能帮我更快抓到鱼，那我愿意试。', -- 物品名:"黄昏匙型假饵" 制造描述:"在夕阳中继续垂钓。"
        OCEANFISHINGLURE_SPOON_BLUE = '如果能帮我更快抓到鱼，那我愿意试。', -- 物品名:"夜间匙型假饵" 制造描述:"适用于夜间垂钓。"
        OCEANFISHINGLURE_HERMIT_RAIN = '我还不如把它留着以备不时之需。', -- 物品名:"雨天鱼饵" 制造描述:"留着雨天用。"
        OCEANFISHINGLURE_HERMIT_SNOW = '我可不想为了一条鱼活活冻死。', -- 物品名:"雪天鱼饵" 制造描述:"雪天适合用它钓鱼。"
        OCEANFISHINGLURE_HERMIT_DROWSY = '它是有毒的吗？我真要为自己的晚餐下毒吗？', -- 物品名:"麻醉鱼饵" 制造描述:"把鱼闷住就抓住了一半。"
        OCEANFISHINGLURE_HERMIT_HEAVY = '快速捕获大鱼的方法？那我就恭敬不如从命了！', -- 物品名:"重量级鱼饵" 制造描述:"钓一条大鱼！"
        OCEANFISH_SMALL_1 = '花了那么多时间就是为了抓这条小鱼？', -- 物品名:"小孔雀鱼"
        OCEANFISH_SMALL_2 = '如此多的努力，却没有什么成果可言。', -- 物品名:"针鼻喷墨鱼"
        OCEANFISH_SMALL_3 = '上面几乎没什么肉，不值得我花时间。', -- 物品名:"小饵鱼"
        OCEANFISH_SMALL_4 = '至少它不是太难抓。', -- 物品名:"三文鱼苗"
        OCEANFISH_SMALL_5 = '已经是烹饪过的？很完美！', -- 物品名:"爆米花鱼"
        OCEANFISH_SMALL_6 = '不是很让人有胃口吧？', -- 物品名:"落叶比目鱼"
        OCEANFISH_SMALL_7 = '稀松平常的鱼。', -- 物品名:"花朵金枪鱼"
        OCEANFISH_SMALL_8 = '我要注意别烫伤手。', -- 物品名:"炽热太阳鱼"
        OCEANFISH_SMALL_9 = '这家伙精神抖擞。', -- 物品名:"口水鱼"
        OCEANFISH_MEDIUM_1 = '我好像钓起了一坨泥巴。', -- 物品名:"泥鱼"
        OCEANFISH_MEDIUM_2 = '晚饭总算有着落了！', -- 物品名:"斑鱼"
        OCEANFISH_MEDIUM_3 = '不枉我那通瞎折腾！', -- 物品名:"浮夸狮子鱼"
        OCEANFISH_MEDIUM_4 = '要不我把它扔回去得了……', -- 物品名:"黑鲶鱼"
        OCEANFISH_MEDIUM_5 = '你只要别想，就不会觉得它古怪。', -- 物品名:"玉米鳕鱼"
        OCEANFISH_MEDIUM_6 = '它有一种可爱的接近金属的光泽。', -- 物品名:"花锦鲤"
        OCEANFISH_MEDIUM_7 = '它有一种可爱的接近金属的光泽。', -- 物品名:"金锦鲤"
        OCEANFISH_MEDIUM_8 = '嗷，麻烦呐！解冻可能需要很久。', -- 物品名:"冰鲷鱼"
        OCEANFISH_MEDIUM_9 = '我希望它的形状不要那么像鳗鱼。', -- 物品名:"甜味鱼"
        PONDFISH = '我可以管它叫海鲜吗？它更像是池鲜，真的。', -- 物品名:"淡水鱼"
        PONDEEL = '我有点想把它丢回去……', -- 物品名:"活鳗鱼"
        FISHMEAT = '曾经是鱼，现在是食物。', -- 物品名:"生鱼肉"
        FISHMEAT_COOKED = '它已经被彻底煮熟了。', -- 物品名:"鱼排"
        FISHMEAT_SMALL = '就是个鱼肉小吃。', -- 物品名:"小鱼块"
        FISHMEAT_SMALL_COOKED = '我不知道我为什么要花时间去做这么小的东西。', -- 物品名:"熟小鱼块"
        SPOILED_FISH = '哦，那个腐烂了！', -- 物品名:"变质的鱼"
        FISH_BOX = '我想保持鱼的新鲜的最好办法是让它们活着。', -- 物品名:"锡鱼罐" 制造描述:"保持鱼与网捕之日一样新鲜。"
        POCKET_SCALE = '在我看来，所有东西都应该有一个口袋版。', -- 物品名:"弹簧秤" 制造描述:"随时称鱼的重量！"
        TACKLECONTAINER = '我终于不用在口袋里装鱼钩和鱼饵了。', -- 物品名:"钓具箱" 制造描述:"整齐收纳你的钓具。"
        SUPERTACKLECONTAINER = '我可以在里面装下一个鱼饵店。', -- 物品名:"超级钓具箱" 制造描述:"更多收纳钓具的空间？我上钩了！"
        TROPHYSCALE_FISH = {
            GENERIC = '相当奢侈的鱼缸啊。', -- 物品名:"鱼类计重器"->默认 制造描述:"炫耀你的斩获。"
            HAS_ITEM = '重量: {weight}\n捕获人: {owner}', -- 物品名:"鱼类计重器" 制造描述:"炫耀你的斩获。"
            HAS_ITEM_HEAVY = '重量：{weight}\n捕获人：{owner}\n我真没想到它能放进去！', -- 物品名:"鱼类计重器" 制造描述:"炫耀你的斩获。"
            BURNING = '我本来以为鱼缸里的水会浇灭火焰……', -- 物品名:"鱼类计重器"->正在燃烧 制造描述:"炫耀你的斩获。"
            BURNT = '我没来得及拯救它。', -- 物品名:"鱼类计重器"->烧焦的 制造描述:"炫耀你的斩获。"
            OWNER = '确实很有成就感。\n重量：{weight}\n捕获人：{owner}', -- 物品名:"鱼类计重器" 制造描述:"炫耀你的斩获。"
            OWNER_HEAVY = '重量：{weight}\n捕获人：{owner}\n看到没？我有时候也是很有耐心的！' -- 物品名:"鱼类计重器" 制造描述:"炫耀你的斩获。"
        },
        OCEANFISHABLEFLOTSAM = '那些泥巴里可能藏着有趣的东西。', -- 物品名:"海洋残骸"
        CALIFORNIAROLL = '那么，这就是加州的地方菜吗？', -- 物品名:"加州卷"
        SEAFOODGUMBO = '再说一遍……真得有必要在里面留下骨头么？', -- 物品名:"海鲜浓汤"
        SURFNTURF = '非常适合那些决定困难户。', -- 物品名:"海鲜牛排"
        WOBSTER_SHELLER = '我预感到你的未来有一锅沸腾的水。', -- 物品名:"龙虾"
        WOBSTER_DEN = '有东西从里面探出头来……', -- 物品名:"龙虾窝"
        WOBSTER_SHELLER_DEAD = '要是已经死了，那就不应该浪费。', -- 物品名:"死龙虾"
        WOBSTER_SHELLER_DEAD_COOKED = '晚餐时间到！', -- 物品名:"美味的龙虾"
        LOBSTERBISQUE = '穿越回过去一遍一遍的吃它会不会有点过？', -- 物品名:"龙虾汤"
        LOBSTERDINNER = '嗯，热的黄油龙虾！', -- 物品名:"龙虾正餐"
        WOBSTER_MOONGLASS = '相比之下，普通龙虾友好多了。', -- 物品名:"月光龙虾"
        MOONGLASS_WOBSTER_DEN = '玻璃尖刺也许就是在警告我远离。', -- 物品名:"月光玻璃窝"
        TRIDENT = '噪音真大！', -- 物品名:"刺耳三叉戟" 制造描述:"在汹涌波涛中引领潮流吧！"
        WINCH = {
            GENERIC = '太好了，这下我不用亲自潜下去了。', -- 物品名:"夹夹绞盘"->默认 制造描述:"让它帮你捞起重的东西吧。"
            RETRIEVING_ITEM = '快一点，我想看看是什么东西！', -- 物品名:"夹夹绞盘" 制造描述:"让它帮你捞起重的东西吧。"
            HOLDING_ITEM = '哈！有了！' -- 物品名:"夹夹绞盘" 制造描述:"让它帮你捞起重的东西吧。"
        },
        HERMITHOUSE = {
            GENERIC = '这座曾经精美的房子现如今已经年久失修。', -- 物品名:"隐士之家"->默认
            BUILTUP = '时间花得很值。' -- 物品名:"隐士之家"
        },
        SHELL_CLUSTER = '这是什么呢？', -- 物品名:"贝壳堆"
        SINGINGSHELL_OCTAVE3 = {
            GENERIC = '我喜欢好的小饰品，特别是音乐性的小饰品！' -- 物品名:"低音贝壳钟"->默认
        },
        SINGINGSHELL_OCTAVE4 = {
            GENERIC = '那个应该很适合放在我的口袋里。' -- 物品名:"中音贝壳钟"->默认
        },
        SINGINGSHELL_OCTAVE5 = {
            GENERIC = '多么漂亮的小贝壳啊！我希望我有地方可以展示它。' -- 物品名:"高音贝壳钟"->默认
        },
        CHUM = '在鱼喂我之前，我先喂鱼才是公平的。', -- 物品名:"鱼食" 制造描述:"鱼儿的美食。"
        SUNKENCHEST = {
            GENERIC = '这么大的一个贝壳，里面一定有很有趣的东西。', -- 物品名:"沉底宝箱"->默认
            LOCKED = '嗷，麻烦呐！你快自己打开吧！' -- 物品名:"沉底宝箱"->锁住了
        },
        HERMIT_BUNDLE = '哦，我想知道里面有什么有趣的小玩意！', -- 物品名:"一包谢意"
        HERMIT_BUNDLE_SHELLS = '这些漂亮的贝壳可以添加到我的收藏中。', -- 物品名:"贝壳钟包" 制造描述:"她卖的贝壳。"
        RESKIN_TOOL = '它揭示了跨时间线的各种可能性。', -- 物品名:"清洁扫把" 制造描述:"把装潢的东西清扫的干干净净。"
        MOON_FISSURE_PLUGGED = '它不时地发出令人愉快的小嘟嘟声。', -- 物品名:"堵住的裂隙"
        WOBYBIG = {
            '我很惊讶那个年轻人能把她控制住。', -- 物品名:"沃比" 制造描述:未找到
            '我很惊讶那个年轻人能把她控制住。' -- 物品名:"沃比" 制造描述:未找到
        },
        WOBYSMALL = {
            '求你别把口水流到我身上……', -- 物品名:"沃比" 制造描述:未找到
            '求你别把口水流到我身上……' -- 物品名:"沃比" 制造描述:未找到
        },
        WALTERHAT = '多么有趣的小帽子啊！真遗憾，它应该不太适合我。', -- 物品名:"松树先锋队帽子" 制造描述:"形式和功能高于时尚。"
        SLINGSHOT = '那个年轻人长相虽然老实，但可能很调皮。', -- 物品名:"可靠的弹弓" 制造描述:"不带它千万别去冒险！"
        SLINGSHOTAMMO_ROCK = '这些在制作的时候显然没有考虑到精准度。', -- 物品名:"鹅卵石" 制造描述:"简单，低效。"
        SLINGSHOTAMMO_MARBLE = '这些在制作的时候显然没有考虑到精准度。', -- 物品名:"大理石弹" 制造描述:"可别把它们弄丢了！"
        SLINGSHOTAMMO_THULECITE = '这些在制作的时候显然没有考虑到精准度。', -- 物品名:"诅咒弹药" 制造描述:"会出什么问题？"
        SLINGSHOTAMMO_GOLD = '这些在制作的时候显然没有考虑到精准度。', -- 物品名:"黄金弹药" 制造描述:"因为高级，所以有效。"
        SLINGSHOTAMMO_SLOW = '篡改时间流吗？好小子。', -- 物品名:"减速弹药" 制造描述:"什么是“物理定律”？"
        SLINGSHOTAMMO_FREEZE = '这些在制作的时候显然没有考虑到精准度。', -- 物品名:"冰冻弹药" 制造描述:"把敌人冰冻在原地。"
        SLINGSHOTAMMO_POOP = '虽然有些令人不悦，但也能说得通。', -- 物品名:"便便弹" 制造描述:"恶心，但是能让敌人分心。"
        PORTABLETENT = '有个安全的地方过夜也算是个积极的变化了。', -- 物品名:"宿营帐篷" 制造描述:"便捷的保护设备，让你免受风吹雨打。"
        PORTABLETENT_ITEM = '谁闲谁来弄它吧。', -- 物品名:"帐篷卷" 制造描述:"便捷的保护设备，让你免受风吹雨打。"
        BATTLESONG_DURABILITY = '哦，你不会是想听我唱歌吧？', -- 物品名:"武器化的颤音" 制造描述:"让武器有更多的时间成为焦点。"
        BATTLESONG_HEALTHGAIN = '哦，你不会是想听我唱歌吧？', -- 物品名:"心碎歌谣" 制造描述:"一首偷心的颂歌。"
        BATTLESONG_SANITYGAIN = '哦，你不会是想听我唱歌吧？', -- 物品名:"醍醐灌顶华彩" 制造描述:"用歌声慰藉你的心灵。"
        BATTLESONG_SANITYAURA = '哦，你不会是想听我唱歌吧？', -- 物品名:"英勇美声颂" 制造描述:"无所畏惧！"
        BATTLESONG_FIRERESISTANCE = '哦，你不会是想听我唱歌吧？', -- 物品名:"防火假声" 制造描述:"抵御火辣的戏评人。"
        BATTLESONG_INSTANT_TAUNT = '侮辱在押韵的情况下会更加尖锐。', -- 物品名:"粗鲁插曲" 制造描述:"用言语扔一个番茄。"
        BATTLESONG_INSTANT_PANIC = '她唱歌真是要命啊。', -- 物品名:"惊心独白" 制造描述:"如此出色的表演，就问你怕不怕。"
        MUTATOR_WARRIOR = '这些绝对不是饼干。', -- 物品名:"战士变身涂鸦" 制造描述:"做最可爱的小保镖。"
        MUTATOR_DROPPER = '这可怜的孩子在烘焙方面应该不会有大发展。', -- 物品名:"悬蛛变身涂鸦" 制造描述:"味道也许会让你惊喜。"
        MUTATOR_HIDER = '这些绝对不是饼干。', -- 物品名:"洞穴变身涂鸦" 制造描述:"外酥里嫩。"
        MUTATOR_SPITTER = '这可怜的孩子在烘焙方面应该不会有大发展。', -- 物品名:"喷吐变身涂鸦" 制造描述:"喷薄而出的蜘蛛形象。"
        MUTATOR_MOON = '这些绝对不是饼干。', -- 物品名:"破碎变身涂鸦" 制造描述:"吃到它的人会快乐到月球去！"
        MUTATOR_HEALER = '这可怜的孩子在烘焙方面应该不会有大发展。', -- 物品名:"护士变身涂鸦" 制造描述:"特别多的谷物，所以必须是健康的！"
        SPIDER_WHISTLE = '哦，他在举办一个小蜘蛛聚会吗？', -- 物品名:"韦伯口哨" 制造描述:"呼叫可怕的爬行动物朋友吧。"
        SPIDERDEN_BEDAZZLER = '他确实很有创造力，对吧？', -- 物品名:"蛛巢装饰套装" 制造描述:"一个好的家能培育出好的性格。"
        SPIDER_HEALER = '它们的床边礼仪很糟糕。', -- 物品名:"护士蜘蛛"
        SPIDER_REPELLENT = '要是他用的更频繁些就好了。', -- 物品名:"驱赶盒子" 制造描述:"让你的朋友知道你需要一些空间。"
        SPIDER_HEALER_ITEM = '我担心这对我没有任何好处。', -- 物品名:"治疗黏团" 制造描述:"恶心，黏糊糊的，但对你有好处！"
        GHOSTLYELIXIR_SLOWREGEN = '一点点玄学上的干预不会伤害任何人。', -- 物品名:"亡者补药" 制造描述:"时间会抚平所有伤口。"
        GHOSTLYELIXIR_FASTREGEN = '一点点玄学上的干预不会伤害任何人。', -- 物品名:"灵魂万灵药" 制造描述:"治疗重伤的强力药剂。"
        GHOSTLYELIXIR_SHIELD = '一点点玄学上的干预不会伤害任何人。', -- 物品名:"不屈药剂" 制造描述:"保护你的姐妹不受伤害。"
        GHOSTLYELIXIR_ATTACK = '一点点玄学上的干预不会伤害任何人。', -- 物品名:"夜影万金油" 制造描述:"召唤黑暗的力量。"
        GHOSTLYELIXIR_SPEED = '一点点玄学上的干预不会伤害任何人。', -- 物品名:"强健精油" 制造描述:"给你的灵魂来一剂强心针。"
        GHOSTLYELIXIR_RETALIATION = '一点点玄学上的干预不会伤害任何人。', -- 物品名:"蒸馏复仇" 制造描述:"对敌人以牙还牙。"
        SISTURN = {
            GENERIC = '死亡应该是孩子心目中最遥远的事情……', -- 物品名:"姐妹骨灰罐"->默认 制造描述:"让你疲倦的灵魂休息的地方。"
            SOME_FLOWERS = '嗯……摘几朵花应该不会很久。', -- 物品名:"姐妹骨灰罐" 制造描述:"让你疲倦的灵魂休息的地方。"
            LOTS_OF_FLOWERS = '我希望她能从中找到一些安慰。' -- 物品名:"姐妹骨灰罐" 制造描述:"让你疲倦的灵魂休息的地方。"
        },
        PORTABLECOOKPOT_ITEM = {
            GENERIC = '我不喜欢在高级料理上浪费时间。', -- 物品名:"便携烹饪锅"->默认 制造描述:"随时随地为美食家服务。"
            DONE = '终于有了食物！', -- 物品名:"便携烹饪锅"->完成了 制造描述:"随时随地为美食家服务。"
            COOKING_LONG = '哦，我希望它能快点！', -- 物品名:"便携烹饪锅"->饭还需要很久 制造描述:"随时随地为美食家服务。"
            COOKING_SHORT = '要不了多久了吧？', -- 物品名:"便携烹饪锅"->饭快做好了 制造描述:"随时随地为美食家服务。"
            EMPTY = '我没有闻到做菜的味道。' -- 物品名:"便携烹饪锅" 制造描述:"随时随地为美食家服务。"
        },
        PORTABLEBLENDER_ITEM = '它能活泼地舞动。', -- 物品名:"便携研磨器" 制造描述:"把原料研磨成粉状调味品。"
        PORTABLESPICER_ITEM = {
            GENERIC = '值得为了多点风味花这么多时间吗？', -- 物品名:"便携香料站"->默认 制造描述:"调味让饭菜更可口。"
            DONE = '我承认，看起来更好吃了。' -- 物品名:"便携香料站"->完成了 制造描述:"调味让饭菜更可口。"
        },
        SPICEPACK = '我想知道它是否会使时间变慢，还是说只是密封的比较好。', -- 物品名:"厨师袋" 制造描述:"使你的食物保持新鲜。"
        SPICE_GARLIC = '哦，这气味把我带回了过去。', -- 物品名:"蒜粉" 制造描述:"用口臭防守是最好的进攻。"
        SPICE_SUGAR = '令人愉快的甜。', -- 物品名:"蜂蜜水晶" 制造描述:"令人心平气和的甜美。"
        SPICE_CHILI = '最佳使用量为微量。', -- 物品名:"辣椒面" 制造描述:"刺激十足的粉末。"
        SPICE_SALT = '我在肩膀上撒上一撮，以求好运。', -- 物品名:"调味盐" 制造描述:"为你的饭菜加点咸味。"
        MONSTERTARTARE = '仅仅是闻到它的味道，就使我的生命缩短了几年。', -- 物品名:"怪物鞑靼"
        FRESHFRUITCREPES = '现在的孩子们，居然吃那些花哨的无糖浆薄烤饼……', -- 物品名:"鲜果可丽饼"
        FROGFISHBOWL = '它的味道比它看起来更好。', -- 物品名:"蓝带鱼排"
        POTATOTORNADO = '时间其实就像一个旋转的土豆。', -- 物品名:"花式回旋块茎"
        DRAGONCHILISALAD = '沃利总是能找到如此独特的组合。', -- 物品名:"辣龙椒沙拉"
        GLOWBERRYMOUSSE = '多么有用的甜点啊，真令人愉悦！', -- 物品名:"发光浆果慕斯"
        VOLTGOATJELLY = '哎呀，太时尚了！', -- 物品名:"伏特羊肉冻"
        NIGHTMAREPIE = '沃利的菜肴基本都信得过，但这道菜似乎很可疑。', -- 物品名:"恐怖国王饼"
        BONESOUP = '真的有必要在里面留下一大块骨头吗？', -- 物品名:"骨头汤"
        MASHEDPOTATOES = '“土豆泥”听起来比“土豆糊”有趣多了。', -- 物品名:"奶油土豆泥"
        POTATOSOUFFLE = '轻盈松软。', -- 物品名:"蓬松土豆蛋奶酥"
        MOQUECA = '我很高兴这里有人知道如何做饭。', -- 物品名:"海鲜杂烩"
        GAZPACHO = '它也许会帮助我抵御这可怕的高温。', -- 物品名:"芦笋冷汤"
        ASPARAGUSSOUP = '一碗温暖的汤。', -- 物品名:"芦笋汤"
        VEGSTINGER = '啜饮的小东西。', -- 物品名:"蔬菜鸡尾酒"
        BANANAPOP = '没有什么比棍子上的水果更快、更简单了。', -- 物品名:"香蕉冻"
        CEVICHE = '奇怪，但令人耳目一新！', -- 物品名:"酸橘汁腌鱼"
        SALSA = '我可以抽点时间出来快速地吃点小吃……', -- 物品名:"生鲜萨尔萨酱"
        PEPPERPOPPER = '做这个太花时间了……不过味道真是一绝啊。', -- 物品名:"爆炒填馅辣椒"
        TURNIP = '就一根萝卜。', -- 物品名:"大萝卜"
        TURNIP_COOKED = '萝卜已经烤好了。', -- 物品名:"烤大萝卜"
        TURNIP_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"圆形种子"
        GARLIC = '把它塞进嘴里吧，它对你有好处！', -- 物品名:"大蒜"
        GARLIC_COOKED = '嗯，太香了！', -- 物品名:"烤大蒜"
        GARLIC_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"种子荚"
        ONION = '我都能闻到香味了！', -- 物品名:"洋葱"
        ONION_COOKED = '我喜欢熟洋葱的气味。', -- 物品名:"烤洋葱"
        ONION_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"尖形种子"
        POTATO = '比较可靠的蔬菜之一。', -- 物品名:"土豆"
        POTATO_COOKED = '我承认，土豆做熟会好吃很多。', -- 物品名:"烤土豆"
        POTATO_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"毛茸茸的种子"
        TOMATO = '丰满多汁的西红柿，真令人愉快。', -- 物品名:"番茄"
        TOMATO_COOKED = '哦，它已经变软了。', -- 物品名:"烤番茄"
        TOMATO_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"带刺的种子"
        ASPARAGUS = '要想活到成熟，活到老，就必须保持健康。', -- 物品名:"芦笋"
        ASPARAGUS_COOKED = '不再那么脆了。', -- 物品名:"烤芦笋"
        ASPARAGUS_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"筒状种子"
        PEPPER = '一点点的香料可能会让我的脚步更轻盈。', -- 物品名:"辣椒"
        PEPPER_COOKED = '这玩意太辣了。', -- 物品名:"烤辣椒"
        PEPPER_SEEDS = '既然现在就能吃，为什么还要浪费时间种呢？', -- 物品名:"块状种子"
        WEREITEM_BEAVER = '哦，多么有趣的小饰品啊！', -- 物品名:"俗气海狸像" 制造描述:"唤醒海狸人的诅咒"
        WEREITEM_GOOSE = '那伐木工人是只怪鸭子，不是吗？', -- 物品名:"俗气鹅像" 制造描述:"唤醒鹅人的诅咒"
        WEREITEM_MOOSE = '我喜欢有魔法的小玩意。', -- 物品名:"俗气鹿像" 制造描述:"唤醒鹿人的诅咒"
        MERMHAT = '骗过那些有鳞片的生物并不难。', -- 物品名:"聪明的伪装" 制造描述:"鱼人化你的朋友。"
        MERMTHRONE = {
            GENERIC = '我见过比它……好看的地毯。', -- 物品名:"皇家地毯"->默认
            BURNT = '看起来君主制戛然而止了。' -- 物品名:"皇家地毯"->烧焦的
        },
        MERMTHRONE_CONSTRUCTION = {
            GENERIC = '这可能需要一段时间才能组装好……', -- 物品名:"皇家手工套装"->默认 制造描述:"建立一个新的鱼人王朝。"
            BURNT = '简直是浪费时间，浪费精力！' -- 物品名:"皇家手工套装"->烧焦的 制造描述:"建立一个新的鱼人王朝。"
        },
        MERMHOUSE_CRAFTED = {
            GENERIC = '虽说有点破烂，但比之前好了。', -- 物品名:"鱼人工艺屋"->默认 制造描述:"适合鱼人的家。"
            BURNT = '命运对它不公。' -- 物品名:"鱼人工艺屋"->烧焦的 制造描述:"适合鱼人的家。"
        },
        MERMWATCHTOWER_REGULAR = '那只小鱼人真的让这个地方发生了变化。', -- 物品名:"鱼人工艺屋" 制造描述:"适合鱼人的家。"
        MERMWATCHTOWER_NOKING = '这些可怜的有鳞生物少了国王似乎很迷茫。', -- 物品名:"鱼人工艺屋" 制造描述:"适合鱼人的家。"
        MERMKING = '讨好他也许是明智之举。', -- 物品名:"鱼人之王"
        MERMGUARD = '我当然希望他们是为我们一方而战。', -- 物品名:"忠诚鱼人守卫"
        MERM_PRINCE = '这种选国王的方式真是既古怪，又极具娱乐性啊！', -- 物品名:"过程中的皇室"
        SQUID = '你能不能在不妨碍他人的情况下照亮道路？！', -- 物品名:"鱿鱼"
        GHOSTFLOWER = '这只不过是一种回忆。', -- 物品名:"哀悼荣耀"
        SMALLGHOST = '可怜的小东西。我想帮忙，但已经太晚了。', -- 物品名:"小惊吓"
        CRABKING = {
            GENERIC = '啊！你在这里，你这个老顽固！', -- 物品名:"帝王蟹"->默认
            INERT = '嗯，这上面不是应该有宝石吗？还是后来才有的……' -- 物品名:"帝王蟹"
        },
        CRABKING_CLAW = '你那些大钳子离我远点！', -- 物品名:"巨钳"
        MESSAGEBOTTLE = '啊！里面还有张纸条！', -- 物品名:"瓶中信"
        MESSAGEBOTTLEEMPTY = '你永远不知道你什么时候需要一个空瓶子。', -- 物品名:"空瓶子"
        MEATRACK_HERMIT = {
            DONE = '完成了！ 终于完成了！！', -- 物品名:"晾肉架"->完成了
            DRYING = '等它做好了，我头发都要白了……', -- 物品名:"晾肉架"->正在风干
            DRYINGINRAIN = '天气不配合。', -- 物品名:"晾肉架"->雨天风干
            GENERIC = '如果我有一两分钟的空闲的话，也许我可以帮助这个可怜的老家伙……', -- 物品名:"晾肉架"->默认
            BURNT = '嗷，麻烦呐！', -- 物品名:"晾肉架"->烧焦的
            DONE_NOTMEAT = '我觉得它陈化的时间已经够长了。', -- 物品名:"晾肉架"
            DRYING_NOTMEAT = '这就像看着油漆变干。', -- 物品名:"晾肉架"
            DRYINGINRAIN_NOTMEAT = '这并没有帮助。' -- 物品名:"晾肉架"
        },
        BEEBOX_HERMIT = {
            READY = '终于好了！', -- 物品名:"蜂箱"->准备好的 满的
            FULLHONEY = '终于好了！', -- 物品名:"蜂箱"->蜂蜜满了
            GENERIC = '她用有限的材料上发挥出了十足的创意。', -- 物品名:"蜂箱"->默认
            NOHONEY = '里面连一滴蜂蜜都没有。', -- 物品名:"蜂箱"->没有蜂蜜
            SOMEHONEY = '为什么酿蜜要这么久？', -- 物品名:"蜂箱"->有一些蜂蜜
            BURNT = '看起来它制造蜂蜜的日子已经过去。' -- 物品名:"蜂箱"->烧焦的
        },
        HERMITCRAB = '哈! 她还是和以前一样暴躁。', -- 物品名:"寄居蟹隐士"
        HERMIT_PEARL = '我会……尽我所能。', -- 物品名:"珍珠的珍珠"
        HERMIT_CRACKED_PEARL = '我一直希望这次会不一样。', -- 物品名:"开裂珍珠"
        WATERPLANT = '我似乎想起了什么……好像跟藤壶有关……', -- 物品名:"海草"
        WATERPLANT_BOMB = '嗷，麻烦呐。我现在都要跟愤怒的植物唾液斗争了？', -- 物品名:"种壳"
        WATERPLANT_BABY = '假以时日，它也一样能长大。', -- 物品名:"海芽"
        WATERPLANT_PLANTER = '我要是碰到好的石头就会放进里面的。', -- 物品名:"海芽插穗"
        SHARK = '啊，我差点忘了。又一个远离海洋的理由！', -- 物品名:"岩石大白鲨"
        MASTUPGRADE_LAMP_ITEM = '我现在感觉好一点了。', -- 物品名:"甲板照明灯" 制造描述:"桅杆照明附件。"
        MASTUPGRADE_LIGHTNINGROD_ITEM = '那似乎是明智之举。', -- 物品名:"避雷导线" 制造描述:"为你的桅杆带来过电般的刺激。"
        WATERPUMP = '我相信我很快就会需要它了。', -- 物品名:"消防泵" 制造描述:"水水水，到处都是水！"
        BARNACLE = '我费了很大劲才把它们撬开。', -- 物品名:"藤壶"
        BARNACLE_COOKED = '只比生藤壶好了一点。', -- 物品名:"熟藤壶"
        BARNACLEPITA = '藤壶很适合夹在里面。', -- 物品名:"藤壶皮塔饼"
        BARNACLESUSHI = '用一个小蝴蝶结扎了起来。', -- 物品名:"藤壶握寿司"
        BARNACLINGUINE = '这应该能让我吃上好一阵子。', -- 物品名:"藤壶中细面"
        BARNACLESTUFFEDFISHHEAD = '我开始为鱼感到难过……', -- 物品名:"酿鱼头"
        LEAFLOAF = '面包被非常时尚地镶嵌在果冻中。', -- 物品名:"叶肉糕"
        LEAFYMEATBURGER = '口感十分有趣。', -- 物品名:"素食堡"
        LEAFYMEATSOUFFLE = '这东西味道有点怪。', -- 物品名:"果冻沙拉"
        MEATYSALAD = '我找到一根签子……我希望那是签子。', -- 物品名:"牛肉绿叶菜"
        MOLEBAT = '哼哼，人们还说我疯！', -- 物品名:"裸鼹蝠"
        MOLEBATHILL = '家安在这种地方多么可怕。', -- 物品名:"裸鼹蝠丘"
        BATNOSE = '这应该教会它不要把它的鼻子伸到不属于它的地方！', -- 物品名:"裸露鼻孔"
        BATNOSE_COOKED = '生的还是熟的，几乎没有什么区别。', -- 物品名:"炭烤鼻孔"
        BATNOSEHAT = '多么美妙、省时的设计啊！', -- 物品名:"牛奶帽"
        MUSHGNOME = '这颗蘑菇比大多数蘑菇都更糟。', -- 物品名:"蘑菇地精"
        SPORE_MOON = '小心点……', -- 物品名:"月亮孢子"
        MOON_CAP = '一颗变异的蘑菇，能出什么问题呢？', -- 物品名:"月亮蘑菇"
        MOON_CAP_COOKED = '为什么是陈年奶酪的味道？', -- 物品名:"熟月亮蘑菇"
        MUSHTREE_MOON = '越来越多的蘑菇。好吧。', -- 物品名:"月亮蘑菇树"
        LIGHTFLIER = '知道它在附近，我就放心了。', -- 物品名:"球状光虫"
        GROTTO_POOL_BIG = '我不愿意泡在这池子里。', -- 物品名:"玻璃绿洲"
        GROTTO_POOL_SMALL = '我不愿意泡在这池子里。', -- 物品名:"小玻璃绿洲"
        DUSTMOTH = '可爱捏。', -- 物品名:"尘蛾"
        DUSTMOTHDEN = '一个舒适的小垃圾桶。', -- 物品名:"整洁洞穴"
        ARCHIVE_LOCKBOX = '还有用？', -- 物品名:"蒸馏的知识"
        ARCHIVE_CENTIPEDE = '你这个机械威胁！', -- 物品名:"远古哨兵蜈蚣"
        ARCHIVE_CENTIPEDE_HUSK = '没有找到一个可用的发条。', -- 物品名:"哨兵蜈蚣壳"
        ARCHIVE_COOKPOT = {
            COOKING_LONG = '这就是为什么我讨厌烹饪。烹饪要花很长时间！', -- 物品名:"远古窑"->饭还需要很久
            COOKING_SHORT = '现在应该差不多完成了，对吗？', -- 物品名:"远古窑"->饭快做好了
            DONE = '终于有了食物！', -- 物品名:"远古窑"->完成了
            EMPTY = '这玩意已经几个世纪没人用过了。', -- 物品名:"远古窑"
            BURNT = '哎，这是一个挫折。' -- 物品名:"远古窑"->烧焦的
        },
        ARCHIVE_MOON_STATUE = '还挺好看。', -- 物品名:"远古月亮雕像"
        ARCHIVE_RUNE_STATUE = {
            LINE_1 = '有人在希望我可以看懂，那么答案是：科雷你什么时候可以填坑。', -- 物品名:"远古月亮符文石"->第一行
            LINE_2 = '有人在希望我可以看懂，那么答案是：科雷你什么时候可以填坑。', -- 物品名:"远古月亮符文石"->第二行
            LINE_3 = '有人在希望我可以看懂，那么答案是：科雷你什么时候可以填坑。', -- 物品名:"远古月亮符文石"->第三行
            LINE_4 = '有人在希望我可以看懂，那么答案是：科雷你什么时候可以填坑。', -- 物品名:"远古月亮符文石"->第四行
            LINE_5 = '有人在希望我可以看懂，那么答案是：科雷你什么时候可以填坑。' -- 物品名:"远古月亮符文石"->第五行
        },
        ARCHIVE_RESONATOR = {
            GENERIC = '终于给我指出正确方向了！', -- 物品名:"星象探测仪"->默认
            IDLE = '它终于发现了一些东西！' -- 物品名:"星象探测仪"
        },
        ARCHIVE_RESONATOR_ITEM = '我之前应该把它带到了地表过，也有可能是我很快就会这么做。', -- 物品名:"星象探测仪" 制造描述:"它会出土什么秘密呢？"
        ARCHIVE_LOCKBOX_DISPENCER = {
            POWEROFF = '看起来它需要好好上一下发条。', -- 物品名:"知识饮水机"
            GENERIC = '古怪而令人愉快！' -- 物品名:"知识饮水机"->默认
        },
        ARCHIVE_SECURITY_DESK = {
            POWEROFF = '多么奇特的遗物。', -- 物品名:"远古哨所"
            GENERIC = '嗷，麻烦呐。我刚刚想起个事……' -- 物品名:"远古哨所"->默认
        },
        ARCHIVE_SECURITY_PULSE = '快抓住它，免得——！', -- 物品名:"远古哨所"
        ARCHIVE_SWITCH = {
            VALID = '哦，太好了，我们把灯弄好了。', -- 物品名:"华丽基座"->有效
            GEMS = '这里缺了点东西。' -- 物品名:"华丽基座"->需要宝石
        },
        ARCHIVE_PORTAL = {
            POWEROFF = '嗯，也许这回……', -- 物品名:"封印的传送门"
            GENERIC = '嗯，这值得一试。' -- 物品名:"封印的传送门"->默认
        },
        WALL_STONE_2 = '一个很久以前的设计。', -- 物品名:"档案馆石墙"
        WALL_RUINS_2 = '太奢侈了！', -- 物品名:"档案馆铥墙"
        REFINED_DUST = '它随时都有可能崩成粉。', -- 物品名:"尘土块" 制造描述:"远古甜品的关键原料。"
        DUSTMERINGUE = '好吧，灰尘是一个糟糕的原料选择。这就是我不做饭的原因！', -- 物品名:"琥珀美食"
        SHROOMCAKE = '无论如何，是蛋糕就不会太差……对吧？', -- 物品名:"蘑菇蛋糕"
        NIGHTMAREGROWTH = '他们来了！我要离开这，快！', -- 物品名:"梦魇城墙"
        TURFCRAFTINGSTATION = '时间我都能篡改，土地我应该也行。', -- 物品名:"土地夯实器" 制造描述:"一点点的改变世界。"
        MOON_ALTAR_LINK = '喂，别太过分？', -- 物品名:"神秘能量"
        COMPOSTINGBIN = {
            GENERIC = '这需要多长时间？', -- 物品名:"堆肥桶"->默认 制造描述:"能让土壤变得臭烘烘和肥沃。"
            WET = '嗷，麻烦呐。它变成了一坨湿泥巴!', -- 物品名:"堆肥桶" 制造描述:"能让土壤变得臭烘烘和肥沃。"
            DRY = '哦。这比我想象的要干燥得多。', -- 物品名:"堆肥桶" 制造描述:"能让土壤变得臭烘烘和肥沃。"
            BALANCED = '完美！真希望我能记住我是怎么做到的……', -- 物品名:"堆肥桶" 制造描述:"能让土壤变得臭烘烘和肥沃。"
            BURNT = '这下糟糕了……' -- 物品名:"堆肥桶"->烧焦的 制造描述:"能让土壤变得臭烘烘和肥沃。"
        },
        COMPOST = '至少我不用去碰它。', -- 物品名:"堆肥"
        SOIL_AMENDER = {
            GENERIC = '希望这不会花太长时间。', -- 物品名:"催长剂起子"->默认 制造描述:"海里来的瓶装养分。"
            STALE = '这也太久了吧！', -- 物品名:"催长剂起子"->过期了 制造描述:"海里来的瓶装养分。"
            SPOILED = '应该也可以，对吧？' -- 物品名:"催长剂起子"->腐烂了 制造描述:"海里来的瓶装养分。"
        },
        SOIL_AMENDER_FERMENTED = '应该总算弄好了。', -- 物品名:"超级催长剂"
        WATERINGCAN = {
            GENERIC = '种地太费精力了。', -- 物品名:"空浇水壶"->默认 制造描述:"让植物保持快乐和水分。"
            EMPTY = '啥？怎么就干了？' -- 物品名:"空浇水壶" 制造描述:"让植物保持快乐和水分。"
        },
        PREMIUMWATERINGCAN = {
            GENERIC = '我知道那只喙会派上用场。', -- 物品名:"空鸟嘴壶"->默认 制造描述:"灌溉方面的创新!"
            EMPTY = '对了，我应该先去拿水。' -- 物品名:"空鸟嘴壶" 制造描述:"灌溉方面的创新!"
        },
        FARM_PLOW = '这比用手挖出所有东西要快得多！', -- 物品名:"耕地机"
        FARM_PLOW_ITEM = '不妨就开始吧。', -- 物品名:"耕地机" 制造描述:"为你的植物犁一块地。"
        FARM_HOE = '耕地是如此乏味。', -- 物品名:"园艺锄" 制造描述:"翻耕，为撒播农作物做准备。"
        GOLDEN_FARM_HOE = '为什么泥土不能自己移动呢？', -- 物品名:"黄金园艺锄" 制造描述:"优雅地耕地。"
        NUTRIENTSGOGGLESHAT = '它给了我一个看待园艺的新视角。全新的视角。', -- 物品名:"高级耕作先驱帽" 制造描述:"让你看到一个成功的花园。"
        PLANTREGISTRYHAT = '多么有趣的小帽子。让我试试！', -- 物品名:"耕作先驱帽" 制造描述:"让你的园艺专业知识得到增长。"
        FARM_SOIL_DEBRIS = '我不是已经把那个摘出去了吗？', -- 物品名:"农田杂物"
        FIRENETTLES = '我有感觉我不应该碰这个。', -- 物品名:"火荨麻叶"
        FORGETMELOTS = '我以前见过这些东西吗？', -- 物品名:"必忘我"
        SWEETTEA = '嗯……我可以抽点时间出来喝杯茶。', -- 物品名:"舒缓茶"
        TILLWEED = '它看起来并不属于这里……', -- 物品名:"犁地草"
        TILLWEEDSALVE = '这些植物垃圾对我没有什么好处。', -- 物品名:"犁地草膏" 制造描述:"慢慢去处病痛。"
        WEED_IVY = '我一点都不喜欢它的样子。', -- 物品名:"刺针旋花"
        IVY_SNARE = '嗷，麻烦呐。现在得靠我来打扫了！', -- 物品名:"缠绕根须"
        TROPHYSCALE_OVERSIZEDVEGGIES = {
            GENERIC = '我总以为重量会比时间更容易操纵……', -- 物品名:"农产品秤"->默认 制造描述:"称量你珍贵的水果和蔬菜。"
            HAS_ITEM = '重量：{weight}\n收获日：{day}\n有趣啊，有一个时空泡沫包裹着它，使它不会腐烂。', -- 物品名:"农产品秤" 制造描述:"称量你珍贵的水果和蔬菜。"
            HAS_ITEM_HEAVY = '重量：{weight}\n收获日：{day}\n有趣啊，有一个时空泡沫包裹着它，使它不会腐烂。', -- 物品名:"农产品秤" 制造描述:"称量你珍贵的水果和蔬菜。"
            HAS_ITEM_LIGHT = '它甚至不告诉我重量？这真是太无礼了。', -- 物品名:"农产品秤" 制造描述:"称量你珍贵的水果和蔬菜。"
            BURNING = '噢！火是从哪冒出来的？', -- 物品名:"农产品秤"->正在燃烧 制造描述:"称量你珍贵的水果和蔬菜。"
            BURNT = '真是浪费。' -- 物品名:"农产品秤"->烧焦的 制造描述:"称量你珍贵的水果和蔬菜。"
        },
        CARROT_OVERSIZED = '我想知道吃这些胡萝卜是否能改善我的视力。', -- 物品名:"巨型胡萝卜"
        CORN_OVERSIZED = '我从未想过玉米可以如此丰富多彩。', -- 物品名:"巨型玉米"
        PUMPKIN_OVERSIZED = '它一副要滚走的样子。', -- 物品名:"巨型南瓜"
        EGGPLANT_OVERSIZED = '我将连续几个星期吃有茄子的剩饭。', -- 物品名:"巨型茄子"
        DURIAN_OVERSIZED = '在我种植的所有东西中，这个生长最为良好。', -- 物品名:"巨型榴莲"
        POMEGRANATE_OVERSIZED = '希望籽也变大了。', -- 物品名:"巨型石榴"
        DRAGONFRUIT_OVERSIZED = '我承认，这是个令人印象深刻的景象。', -- 物品名:"巨型火龙果"
        WATERMELON_OVERSIZED = '圆润的令人愉悦！', -- 物品名:"巨型西瓜"
        TOMATO_OVERSIZED = '我应该举不起那么大的西红柿！', -- 物品名:"巨型番茄"
        POTATO_OVERSIZED = '这个土豆大的有点荒谬了吧。', -- 物品名:"巨型土豆"
        ASPARAGUS_OVERSIZED = '这么大芦笋，对我来说都太大了。', -- 物品名:"巨型芦笋"
        ONION_OVERSIZED = '这是农夫的荣耀！', -- 物品名:"巨型洋葱"
        GARLIC_OVERSIZED = '仍然很难相信大蒜可以长得这么大。', -- 物品名:"巨型大蒜"
        PEPPER_OVERSIZED = '我有预感这个会辣上加辣。', -- 物品名:"巨型辣椒"
        VEGGIE_OVERSIZED_ROTTEN = '麻烦呐！时间已经把爪子伸进去了！', -- 物品名:"农产品秤" 制造描述:"称量你珍贵的水果和蔬菜。"
        FARM_PLANT = {
            GENERIC = '一株植物。', -- 物品名:未找到
            SEED = '我希望它迅速成长。', -- 物品名:未找到
            GROWING = '请快点！', -- 物品名:未找到
            FULL = '终于啊！！', -- 物品名:未找到
            ROTTEN = '咳！我误判了它在时间线上的位置！', -- 物品名:未找到
            FULL_OVERSIZED = '看来耐心有时确实会得到回报。', -- 物品名:未找到
            ROTTEN_OVERSIZED = '麻烦呐！时间已经把爪子伸进去了！', -- 物品名:未找到
            FULL_WEED = '等一下，我好像不是要种那个！', -- 物品名:未找到
            BURNING = '所有的时间和精力……都浪费了……' -- 物品名:未找到
        },
        FRUITFLY = '哦，嘘！', -- 物品名:"果蝇"
        LORDFRUITFLY = '我对你的纠缠没有耐心！', -- 物品名:"果蝇王"
        FRIENDLYFRUITFLY = '谢天谢地，我不用再去取悦花园了。', -- 物品名:"友好果蝇"
        FRUITFLYFRUIT = '我不想引来苍蝇，但它可能是有用的。', -- 物品名:"友好果蝇果"
        SEEDPOUCH = '额外的口袋空间总是受欢迎的。', -- 物品名:"种子袋" 制造描述:"妥善保管好种子。"
        CARNIVAL_HOST = '你好，良羽。咱们有多长时间没见了？', -- 物品名:"良羽鸦"
        CARNIVAL_CROWKID = '看看他们，充满了青春的活力!', -- 物品名:"小乌鸦"
        CARNIVAL_GAMETOKEN = '它被精心地打磨过。', -- 物品名:"鸦年华代币" 制造描述:"购买代币，玩游戏，赢取奖品！"
        CARNIVAL_PRIZETICKET = {
            GENERIC = '只有一张奖票？', -- 物品名:"奖票"->默认
            GENERIC_SMALLSTACK = '一小堆奖票。', -- 物品名:"奖票"
            GENERIC_LARGESTACK = '一大堆奖票。' -- 物品名:"奖票"
        },
        CARNIVALGAME_FEEDCHICKS_NEST = '它指向了游戏的内部运作。', -- 物品名:"饥饿乌鸦"
        CARNIVALGAME_FEEDCHICKS_STATION = {
            GENERIC = '这套机械没有代币是不会工作的。', -- 物品名:"鸟鸟吃虫虫"->默认
            PLAYING = '好……那我就抽时间来好好玩玩！' -- 物品名:"鸟鸟吃虫虫"
        },
        CARNIVALGAME_FEEDCHICKS_KIT = '至少它们组装起来很快。', -- 物品名:"鸟鸟吃虫虫套装" 制造描述:"小鸟吃虫！"
        CARNIVALGAME_FEEDCHICKS_FOOD = '一把彩色的纸？哦！用来代表虫子，多聪明啊！', -- 物品名:"蛴螬"
        CARNIVALGAME_MEMORY_KIT = '至少它们组装起来很快。', -- 物品名:"篮中蛋套装" 制造描述:"在你的蛋孵化前数清楚数量。"
        CARNIVALGAME_MEMORY_STATION = {
            GENERIC = '这套机械没有代币是不会工作的。', -- 物品名:"篮中蛋"->默认
            PLAYING = '这可能是一个棘手的问题。' -- 物品名:"篮中蛋"
        },
        CARNIVALGAME_MEMORY_CARD = {
            GENERIC = '它指向了游戏的内部运作。', -- 物品名:"蛋篮"->默认
            PLAYING = '嗷，麻烦呐，这个是不是就是……？' -- 物品名:"蛋篮"
        },
        CARNIVALGAME_HERDING_KIT = '至少它们组装起来很快。', -- 物品名:"追蛋套装" 制造描述:"追回失控的蛋。"
        CARNIVALGAME_HERDING_STATION = {
            GENERIC = '这套机械没有代币是不会工作的。', -- 物品名:"追蛋"->默认
            PLAYING = '哦，那个看起来确实很有趣……' -- 物品名:"追蛋"
        },
        CARNIVALGAME_HERDING_CHICK = '走着瞧吧，我比我看起来更有活力！', -- 物品名:"追蛋"
        CARNIVALGAME_SHOOTING_KIT = '至少它们组装起来很快。', -- 物品名:"保卫鸟巢套装" 制造描述:"防止害虫进入巢穴。"
        CARNIVALGAME_SHOOTING_STATION = {
            GENERIC = '这套机械没有代币是不会工作的。', -- 物品名:"保卫鸟巢"->默认
            PLAYING = '我抓时机无可挑剔，只是瞄准需要一些练习……' -- 物品名:"保卫鸟巢"
        },
        CARNIVALGAME_SHOOTING_TARGET = {
            GENERIC = '它指向了游戏的内部运作。', -- 物品名:"射击靶"->默认
            PLAYING = '就不能再大一点？' -- 物品名:"射击靶"
        },
        CARNIVALGAME_SHOOTING_BUTTON = {
            GENERIC = '这套机械没有代币是不会工作的。', -- 物品名:"按钮"->默认
            PLAYING = '按钮就是比拉杆有效。' -- 物品名:"按钮"
        },
        CARNIVALGAME_WHEELSPIN_KIT = '至少它们组装起来很快。', -- 物品名:"布谷鸟转盘套装" 制造描述:"旋转然后胜利。"
        CARNIVALGAME_WHEELSPIN_STATION = {
            GENERIC = '这套机械没有代币是不会工作的。', -- 物品名:"布谷鸟转盘"->默认
            PLAYING = '它是如此奇妙地高效！' -- 物品名:"布谷鸟转盘"
        },
        CARNIVALGAME_PUCKDROP_KIT = '至少它们组装起来很快。', -- 物品名:"鸟房落球套装" 制造描述:"把球安全地弹到它的窝里。"
        CARNIVALGAME_PUCKDROP_STATION = {
            GENERIC = '这套机械没有代币是不会工作的。', -- 物品名:"鸟房落球"->默认
            PLAYING = '这东西一点技术含量都没。' -- 物品名:"鸟房落球"
        },
        CARNIVAL_PRIZEBOOTH_KIT = '至少它们组装起来很快。', -- 物品名:"奖品摊位套装" 制造描述:"看看有什么奖品。"
        CARNIVAL_PRIZEBOOTH = {
            GENERIC = '噢，多么令人愉快的各种小玩意啊！' -- 物品名:"奖品摊位"->默认
        },
        CARNIVALCANNON_KIT = '我想我可以抽出一两分钟时间来设置它。', -- 物品名:"奖品摊位"
        CARNIVALCANNON = {
            GENERIC = '我有这么多事情要做，但是……这种分心方式真令人愉快。', -- 物品名:未找到
            COOLDOWN = '喔，真有趣！' -- 物品名:未找到
        },
        CARNIVAL_PLAZA_KIT = '我希望它不需要太长的时间来生长。', -- 物品名:"鸦年华树苗" 制造描述:"鸦年华不可或缺的中间物件。"
        CARNIVAL_PLAZA = {
            GENERIC = '它还缺点东西。', -- 物品名:"鸦年华树"->默认
            LEVEL_2 = '多放一些小饰品也无妨。', -- 物品名:"鸦年华树"
            LEVEL_3 = '完全可以说是令人印象深刻的景象！' -- 物品名:"鸦年华树"
        },
        CARNIVALDECOR_EGGRIDE_KIT = '我无法拒绝一个修补小机械的机会。', -- 物品名:"鸦年华树"
        CARNIVALDECOR_EGGRIDE = '多么令人愉快的小机械啊！', -- 物品名:"鸦年华树"
        CARNIVALDECOR_LAMP_KIT = '夜灯再多都不算多！', -- 物品名:"盛夏夜灯套装" 制造描述:"夏夜的梦幻之光。"
        CARNIVALDECOR_LAMP = '啊……我已经感觉好多了。', -- 物品名:"盛夏夜灯"
        CARNIVALDECOR_PLANT_KIT = '口袋树吗？吸引住我了。', -- 物品名:"微型树套装" 制造描述:"一小块鸦年华。"
        CARNIVALDECOR_PLANT = '有些树看着还是很有趣的。', -- 物品名:"微型树"
        CARNIVALDECOR_BANNER_KIT = '我倒是可以空出一点时间来。', -- 物品名:"光线捕捉器套装" 制造描述:"枝头挂着闪光的小饰品。"
        CARNIVALDECOR_BANNER = '看着看着就被它催眠了。', -- 物品名:"光线捕捉器"
        CARNIVALDECOR_FIGURE = {
            RARE = '我真的应该找一个漂亮的柜子来展示它。', -- 物品名:未找到
            UNCOMMON = '它在壁炉上会看起来很可爱，比如放在一个精美的壁炉钟旁边。', -- 物品名:未找到
            GENERIC = '我觉得好像我以前看过几次。' -- 物品名:未找到
        },
        CARNIVALDECOR_FIGURE_KIT = '我忍不住了，往前看了一眼，偷看了一下……', -- 物品名:"绿色神秘盒子" 制造描述:"这个神秘的绿盒子里会有什么呢？"
        CARNIVALDECOR_FIGURE_KIT_SEASON2 = '我忍不住了，往前看了一眼，偷看了一下……', -- 物品名:"金色神秘盒子" 制造描述:"这个神秘的金盒子里会有什么呢？"
        CARNIVAL_BALL = '一个色彩斑斓的儿童玩具。', --unimplemented		-- 物品名:"发光红球" 制造描述:"保证你有球必应！"
        CARNIVAL_SEEDPACKET = '放在口袋里的小零食。', -- 物品名:"种子包" 制造描述:"鸦年华最爱的香脆小吃。"
        CARNIVALFOOD_CORNTEA = '味道还可以，但口感……', -- 物品名:"玉米泥" 制造描述:"出乎意料的清爽！"
        CARNIVAL_VEST_A = '戴着围巾来抵御高温？多么令人愉快的矛盾啊！', -- 物品名:"叽啾啾喳围巾" 制造描述:"用捡来的树叶做成的异想天开的围巾。"
        CARNIVAL_VEST_B = '多么奇怪！用斗篷来保持凉爽！', -- 物品名:"叽啾啾喳斗篷" 制造描述:"这东西确实值得称道。"
        CARNIVAL_VEST_C = '相当于午后的披肩！', -- 物品名:"叽啾啾喳小披肩" 制造描述:"鸦年华游客的必备小披肩。"
        YOTB_SEWINGMACHINE = '至少比手缝要快。', -- 物品名:"缝纫机"
        YOTB_SEWINGMACHINE_ITEM = '真倒霉，并没有提前组装好。', -- 物品名:"缝纫机套装" 制造描述:"做出完美的皮弗娄牛礼服吧。"
        YOTB_STAGE = '真是个奇怪的家伙。可惜他不经常出现在这里。', -- 物品名:"裁判席"
        YOTB_POST = '栓皮弗娄牛的好地方。', -- 物品名:"皮弗娄牛舞台"
        YOTB_STAGE_ITEM = '真倒霉，并没有提前组装好。', -- 物品名:"裁判席" 制造描述:"邀请专家出席。"
        YOTB_POST_ITEM = '真倒霉，并没有提前组装好。', -- 物品名:"皮弗娄牛舞台" 制造描述:"让你的皮弗娄牛登上舞台中央。"
        YOTB_PATTERN_FRAGMENT_1 = '如果再有几块，我就可以做成一个新的款式。', -- 物品名:"恐怖款式碎片" 制造描述:"来一点恐怖的灵感。"
        YOTB_PATTERN_FRAGMENT_2 = '如果再有几块，我就可以做成一个新的款式。', -- 物品名:"正式款式碎片" 制造描述:"来一点正式的灵感。"
        YOTB_PATTERN_FRAGMENT_3 = '如果再有几块，我就可以做成一个新的款式。', -- 物品名:"喜庆款式碎片" 制造描述:"来一点喜庆的灵感。"
        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = '我喜欢漂亮的纪念品，能帮助我找到身处何时。', -- 物品名:"战士皮弗娄牛玩偶"->默认
            YOTB = '那个古怪的裁判在哪里？他应该会喜欢这个。' -- 物品名:"战士皮弗娄牛玩偶"
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = '我喜欢漂亮的纪念品，能帮助我找到身处何时。', -- 物品名:"娃娃皮弗娄牛玩偶"->默认
            YOTB = '那个古怪的裁判在哪里？他应该会喜欢这个。' -- 物品名:"娃娃皮弗娄牛玩偶"
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = '我喜欢漂亮的纪念品，能帮助我找到身处何时。', -- 物品名:"喜庆皮弗娄牛玩偶"->默认
            YOTB = '那个古怪的裁判在哪里？他应该会喜欢这个。' -- 物品名:"喜庆皮弗娄牛玩偶"
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = '我喜欢漂亮的纪念品，能帮助我找到身处何时。', -- 物品名:"花朵皮弗娄牛玩偶"->默认
            YOTB = '那个古怪的裁判在哪里？他应该会喜欢这个。' -- 物品名:"花朵皮弗娄牛玩偶"
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = '我喜欢漂亮的纪念品，能帮助我找到身处何时。', -- 物品名:"铁甲皮弗娄牛玩偶"->默认
            YOTB = '那个古怪的裁判在哪里？他应该会喜欢这个。' -- 物品名:"铁甲皮弗娄牛玩偶"
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = '我喜欢漂亮的纪念品，能帮助我找到身处何时。', -- 物品名:"寒霜皮弗娄牛玩偶"->默认
            YOTB = '那个古怪的裁判在哪里？他应该会喜欢这个。' -- 物品名:"寒霜皮弗娄牛玩偶"
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = '我喜欢漂亮的纪念品，能帮助我找到身处何时。', -- 物品名:"正式皮弗娄牛玩偶"->默认
            YOTB = '那个古怪的裁判在哪里？他应该会喜欢这个。' -- 物品名:"正式皮弗娄牛玩偶"
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = '我喜欢漂亮的纪念品，能帮助我找到身处何时。', -- 物品名:"维多利亚皮弗娄牛玩偶"->默认
            YOTB = '那个古怪的裁判在哪里？他应该会喜欢这个。' -- 物品名:"维多利亚皮弗娄牛玩偶"
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = '我喜欢漂亮的纪念品，能帮助我找到身处何时。', -- 物品名:"幸运兽弗娄牛玩偶"->默认
            YOTB = '那个古怪的裁判在哪里？他应该会喜欢这个。' -- 物品名:"幸运兽弗娄牛玩偶"
        },
        WAR_BLUEPRINT = '我不介意有只皮弗娄牛当保镖。', -- 物品名:"战士礼服款式"
        DOLL_BLUEPRINT = '我记得我小时候的娃娃没有这么大，也没这么多毛。', -- 物品名:"娃娃礼服款式"
        FESTIVE_BLUEPRINT = '这套衣服的声音比老爷钟的报时声还大。', -- 物品名:"节日盛装款式"
        ROBOT_BLUEPRINT = '我需要的是一把螺丝刀，而不是一根绣花针。', -- 物品名:"铁甲礼服款式"
        NATURE_BLUEPRINT = '很稀松平常的外衣，对不对？', -- 物品名:"花朵礼服款式"
        FORMAL_BLUEPRINT = '我的皮弗娄牛看起来会像一个完美的绅士。', -- 物品名:"正式礼服款式"
        VICTORIAN_BLUEPRINT = '颇为时尚的设计。', -- 物品名:"维多利亚礼服款式"
        ICE_BLUEPRINT = '可怜的皮弗娄牛带着那个会感冒的！', -- 物品名:"寒霜礼服款式"
        BEAST_BLUEPRINT = '如果这么幸运，那自己留着好了。', -- 物品名:"幸运兽礼服款式"
        BEEF_BELL = '它使驯服皮弗娄牛的速度大大加快!', -- 物品名:"皮弗娄牛铃" 制造描述:"与皮弗娄牛交朋友。"
        KITCOONDEN = {
            GENERIC = '多么有魅力的小房子啊。', -- 物品名:"小浣猫托儿所"->默认
            BURNT = '好吧，该熄的总是会熄。', -- 物品名:"小浣猫托儿所"->烧焦的
            PLAYING_HIDEANDSEEK = '我把它们都找到了吗？应该有一些还藏着呢。', -- 物品名:"小浣猫托儿所"
            PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = '呃，他们在哪里？我快没时间了！' -- 物品名:"小浣猫托儿所"
        },
        KITCOONDEN_KIT = '我不是已经设置好了吗？', -- 物品名:"小浣猫托儿所套装" 制造描述:"各种条纹浣猫的家园。"
        TICOON = {
            GENERIC = '啊哈！我就记得看到过橙色的！', -- 物品名:"大虎"->默认
            ABANDONED = '哦，不要这样看我，我不是针对你个人！', -- 物品名:"大虎"
            SUCCESS = '你发现了什么，是吗？', -- 物品名:"大虎"
            LOST_TRACK = '他这就跟丢了？呃，真是浪费时间！', -- 物品名:"大虎"
            NEARBY = '他似乎对这个领域特别感兴趣。', -- 物品名:"大虎"
            TRACKING = '有专家在应该可以加快进程。', -- 物品名:"大虎"
            TRACKING_NOT_MINE = '他似乎只顾着帮助别人。', -- 物品名:"大虎"
            NOTHING_TO_TRACK = '嗯，我想周围没有什么可以追踪的。', -- 物品名:"大虎"
            TARGET_TOO_FAR_AWAY = '也许它们在别的地方。' -- 物品名:"大虎"
        },
        YOT_CATCOONSHRINE = {
            GENERIC = '好，我就抽出点时间做两件装饰品吧。', -- 物品名:"浣猫神龛"->默认 制造描述:"供奉无踪之浣猫。"
            EMPTY = '又到了十二年一次的轨道循环了。', -- 物品名:"浣猫神龛" 制造描述:"供奉无踪之浣猫。"
            BURNT = '得，这下啥也干不了。' -- 物品名:"浣猫神龛"->烧焦的 制造描述:"供奉无踪之浣猫。"
        },
        KITCOON_FOREST = '哦，多么可爱，而且还是便携的口袋款！', -- 物品名:"小浣猫"
        KITCOON_SAVANNA = '哦，多么可爱，而且还是便携的口袋款！', -- 物品名:"小浣猫"
        KITCOON_MARSH = '哦，多么可爱，而且还是便携的口袋款！', -- 物品名:"小浣猫"
        KITCOON_DECIDUOUS = '哦，多么可爱，而且还是便携的口袋款！', -- 物品名:"小浣猫"
        KITCOON_GRASS = '烦死了，他们的可爱真让人分心！', -- 物品名:"小浣猫"
        KITCOON_ROCKY = '烦死了，他们的可爱真让人分心！', -- 物品名:"小浣猫"
        KITCOON_DESERT = '烦死了，他们的可爱真让人分心！', -- 物品名:"小浣猫"
        KITCOON_MOON = '烦死了，他们的可爱真让人分心！', -- 物品名:"小浣猫"
        KITCOON_YOT = '烦死了，他们的可爱真让人分心！', -- 物品名:"小浣猫"
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = '你说你怎么就这么自信呢……', -- 物品名:"天体英雄"->默认
            DEAD = '一阶段结束了。' -- 物品名:"天体英雄"->死了
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = '你应该让它的旋转技能少些CD。', -- 物品名:"天体英雄"->默认
            DEAD = '给我点时间喘口气……' -- 物品名:"天体英雄"->死了
        },
        ALTERGUARDIAN_PHASE2SPIKE = '没旋转技能强。', -- 物品名:"月光玻璃尖刺"
        ALTERGUARDIAN_PHASE3 = '我很抱歉，但是宿命如此。', -- 物品名:"天体英雄"
        ALTERGUARDIAN_PHASE3TRAP = '我不能让自己在这种时候睡着!', -- 物品名:"启迪陷阱"
        ALTERGUARDIAN_PHASE3DEADORB = '反正也会被冒险者击败的。不如拿走启迪之冠就下线吧。', -- 物品名:"天体英雄"
        ALTERGUARDIAN_PHASE3DEAD = '你真的低估了冒险者，下次必须用别的办法了。', -- 物品名:"被击败的天体英雄"
        ALTERGUARDIANHAT = '我不会把这个送给冒险者的。', -- 物品名:"启迪之冠"
        ALTERGUARDIANHATSHARD = '我想知道我还可以用这个来做什么。', -- 物品名:"启迪碎片"
        MOONSTORM_GLASS = {
            GENERIC = '看看，这么尖的东西，万一绊倒了可就完蛋了。', -- 物品名:"充能玻璃石"->默认
            INFUSED = '得赶紧，这是免费的！' -- 物品名:"充能玻璃石"
        },
        MOONSTORM_STATIC = '肆无忌惮的能量。', -- 物品名:"能量静电"
        MOONSTORM_STATIC_ITEM = '有点被束缚的能量。', -- 物品名:"约束静电"
        MOONSTORM_SPARK = '具有强大可能性的一颗斑点。', -- 物品名:"月熠"
        BIRD_MUTANT = '多么可怕的景象啊！', -- 物品名:"月盲乌鸦"
        BIRD_MUTANT_SPITTER = '你为什么不跑到别的地方去吐口水呢？', -- 物品名:"奇形鸟"
        WAGSTAFF_NPC = '滚……', -- 物品名:"颗粒状传输"
        WAGSTAFF_NPC_MUTATIONS = '我真是服了你了。', -- 物品名:"颗粒状传输"
        WAGSTAFF_NPC_WAGPUNK = '行吧。', -- 物品名:"充能玻璃石"
        ALTERGUARDIAN_CONTAINED = '老登你怎么还没爆金币啊。', -- 物品名:"月亮精华提取器"
        WAGSTAFF_TOOL_1 = '网状缓冲器。', -- 物品名:"网状缓冲器"
        WAGSTAFF_TOOL_2 = '装置除垢器。', -- 物品名:"装置除垢器"
        WAGSTAFF_TOOL_3 = '垫圈开槽器。', -- 物品名:"垫圈开槽器"
        WAGSTAFF_TOOL_4 = '概念刷洗器。', -- 物品名:"概念刷洗器"
        WAGSTAFF_TOOL_5 = '校准观察机。', -- 物品名:"校准观察机"
        MOONSTORM_GOGGLESHAT = '不知道啥。', -- 物品名:"星象护目镜" 制造描述:"利用土豆之眼来看清风暴。"
        MOON_DEVICE = {
            GENERIC = '我就知道玩家会检查这个，那我顺便科普一下，饥荒世界观的月亮叫ALTER。', -- 物品名:"月亮虹吸器"->默认
            CONSTRUCTION1 = '很好玩家还在检查，那么希望玩家可以支持我们伟大的月神ALTER喵~', -- 物品名:"月亮虹吸器"
            CONSTRUCTION2 = '瓦格斯塔夫我恨你。' -- 物品名:"月亮虹吸器"
        },
        POCKETWATCH_HEAL = {
            GENERIC = '我只需要更多的时间!', -- 物品名:"不老表"->默认 制造描述:"你觉得自己是几岁，你就是几岁。"
            RECHARGING = '快点，快点……' -- 物品名:"不老表" 制造描述:"你觉得自己是几岁，你就是几岁。"
        },
        POCKETWATCH_REVIVE = {
            GENERIC = '我喜欢为各种终极状况做好准备。', -- 物品名:"第二次机会表"->默认 制造描述:"挽回一个朋友的不幸结局。"
            RECHARGING = '这可能需要一些时间。在此期间，不要做任何危险的事情！' -- 物品名:"第二次机会表" 制造描述:"挽回一个朋友的不幸结局。"
        },
        POCKETWATCH_WARP = {
            GENERIC = '这个十分适合短途旅行，轻松加愉快。', -- 物品名:"倒走表"->默认 制造描述:"重走你的最后几步。"
            RECHARGING = '它需要一点时间来松发条。' -- 物品名:"倒走表" 制造描述:"重走你的最后几步。"
        },
        POCKETWATCH_RECALL = {
            GENERIC = '啊，让我回去了好远一段。', -- 物品名:"溯源表"->默认 制造描述:"返回到一个遥远的时间点。"
            RECHARGING = '快点啊，时间在滴答滴答流走！', -- 物品名:"溯源表" 制造描述:"返回到一个遥远的时间点。"
            UNMARKED = '啊，让我回去了好远一段。', -- 物品名:"溯源表" 制造描述:"返回到一个遥远的时间点。"
            MARKED_SAMESHARD = '是时候跳进时间流了吗？', -- 物品名:"溯源表" 制造描述:"返回到一个遥远的时间点。"
            MARKED_DIFFERENTSHARD = '这将是一个很大的跳跃，但我可以做到！' -- 物品名:"溯源表" 制造描述:"返回到一个遥远的时间点。"
        },
        POCKETWATCH_PORTAL = {
            GENERIC = '一起回到过去走一走如何？会很有意思的！', -- 物品名:"裂缝表"->默认 制造描述:"和朋友一起穿越时间会更好。"
            RECHARGING = '还没好？麻烦呐，时间正常流逝起来是如此的缓慢！', -- 物品名:"裂缝表" 制造描述:"和朋友一起穿越时间会更好。"
            UNMARKED = '一起回到过去走一走如何？会很有意思的！', -- 物品名:"裂缝表" 制造描述:"和朋友一起穿越时间会更好。"
            MARKED_SAMESHARD = '是时候跳进时间流了吗？', -- 物品名:"裂缝表" 制造描述:"和朋友一起穿越时间会更好。"
            MARKED_DIFFERENTSHARD = '这将是一次飞跃，但我可以做到！应该可以……' -- 物品名:"裂缝表" 制造描述:"和朋友一起穿越时间会更好。"
        },
        POCKETWATCH_WEAPON = {
            GENERIC = '如果有什么东西威胁到我，我就会毫不犹豫地把它们打成碎片！', -- 物品名:"警钟"->默认 制造描述:"这只钟敲的就是你。"
            DEPLETED = '我需要得到更多的黑暗燃料……' -- 物品名:"警钟" 制造描述:"这只钟敲的就是你。"
        },
        POCKETWATCH_PARTS = '在荒野中重建小型精确的机械结构可不是一件小事。', -- 物品名:"时间碎片" 制造描述:"计时必备零件。"
        POCKETWATCH_DISMANTLER = '有这个我就可以建造和拆解我可爱的钟表了。', -- 物品名:"钟表匠工具" 制造描述:"修补计时装置。"
        POCKETWATCH_PORTAL_ENTRANCE = {
            GENERIC = '它不会一直开着。大伙快过来吧，争分夺秒啊！', -- 物品名:"时间裂缝"->默认
            DIFFERENTSHARD = '它不会一直开着。大伙快过来吧，争分夺秒啊！' -- 物品名:"时间裂缝"
        },
        POCKETWATCH_PORTAL_EXIT = '又一次无懈可击的短途时空之旅。', -- 物品名:"时间裂缝"
        WATERTREE_PILLAR = '多么宏伟的古树啊！', -- 物品名:"大树干"
        OCEANTREE = '它在这里一定生长得很艰难。', -- 物品名:"疙瘩树"
        OCEANTREENUT = '它已经开始长大了！', -- 物品名:"疙瘩树果"
        WATERTREE_ROOT = '我不想葬身大海，所以还是远离那些东西吧。', -- 物品名:"大树根"
        OCEANTREE_PILLAR = '它提供了一个很好的阴凉之处。', -- 物品名:"高出平均值的树干"
        OCEANVINE = '一根藤蔓。不太值得一提。', -- 物品名:"苔藓藤条"
        FIG = '一个丰满、甜美的无花果。', -- 物品名:"无花果"
        FIG_COOKED = '我承认，烹饪它确实有助于把甜味带出来。', -- 物品名:"熟无花果"
        SPIDER_WATER = '嘘！为什么你就不能呆在你的树上？', -- 物品名:"海黾"
        MUTATOR_WATER = '这些绝对不是饼干。', -- 物品名:"海黾变身涂鸦" 制造描述:"光是看就让人流口水！"
        OCEANVINE_COCOON = '只要我别靠得太近应该就没事……', -- 物品名:"海黾巢穴"
        OCEANVINE_COCOON_BURNT = '幸好火势没有蔓延到树上。', -- 物品名:"海黾巢穴"
        GRASSGATOR = '它似乎不想与我们有任何关系，这对我来说是好事。', -- 物品名:"草鳄鱼"
        TREEGROWTHSOLUTION = '我终于可以为那些慢得可怕的树提速了！', -- 物品名:"树果酱" 制造描述:"鼓励树木到达新的高度。"
        FIGATONI = '谁曾想意大利面还能是甜的？', -- 物品名:"无花果意面"
        FIGKABAB = '没有盘子，没有餐具，没有那些繁文缛节！', -- 物品名:"无花果烤串"
        KOALEFIG_TRUNK = '它看起来非常填肚子。', -- 物品名:"无花果酿象鼻"
        FROGNEWTON = '别有风味啊。', -- 物品名:"无花果蛙腿三明治"
        TERRARIUM = {
            GENERIC = '你们其他人感觉到空气中那种跨维度的颤抖了吗？', -- 物品名:"盒中泰拉"->默认
            CRIMSON = '哦，它对影子魔法不感冒吗？', -- 物品名:"盒中泰拉"
            ENABLED = '保持永远正确这种想法已经过时了。', -- 物品名:"盒中泰拉"
            WAITING_FOR_DARK = '我有一种十分不祥的感觉……', -- 物品名:"盒中泰拉"
            COOLDOWN = '它处于休眠期，至少目前是这样。', -- 物品名:"盒中泰拉"->冷却中
            SPAWN_DISABLED = '它似乎待机了，也许现在我可以鼓捣一下它……' -- 物品名:"盒中泰拉"
        },
        MIGHTY_GYM = {
            GENERIC = '我不知道他从哪抽出时间做这些事情。', -- 物品名:"强大健身房"->默认 制造描述:"拿出力量来吧！"
            BURNT = '好了，就这样。是时候翻篇了。' -- 物品名:"强大健身房"->烧焦的 制造描述:"拿出力量来吧！"
        },
        DUMBBELL = '反复做同一件事来打发时间简直可怕。', -- 物品名:"哑铃" 制造描述:"练肌肉离不开棍棒和石头。"
        DUMBBELL_GOLDEN = '反复做同一件事来打发时间简直可怕。', -- 物品名:"黄金哑铃" 制造描述:"举重的黄金标准。"
        DUMBBELL_MARBLE = '反复做同一件事来打发时间简直可怕。', -- 物品名:"大理石哑铃" 制造描述:"获得有棱有角体格的捷径。"
        DUMBBELL_GEM = '反复做同一件事来打发时间简直可怕。', -- 物品名:"宝石哑铃" 制造描述:"让你锻炼的方方面面都得到打磨。"
        POTATOSACK = '谁想拖着这么重的东西到处走呢？', -- 物品名:"土豆袋" 制造描述:"马铃薯的天然栖息地。"
        DUMBBELL_HEAT = '好吧，起码很有效率。', -- 物品名:"热铃" 制造描述:"进行终极热身。"
        DUMBBELL_REDGEM = '不是最常规的武器，但是各有千秋。', -- 物品名:"火铃" 制造描述:"感受燃烧！"
        DUMBBELL_BLUEGEM = '不是最常规的武器，但是各有千秋。', -- 物品名:"冰铃" 制造描述:"冰封妨碍锻炼的东西。"
        TERRARIUMCHEST = {
            GENERIC = '撇开维度交叉污染不谈，这是个相当可爱的箱子。', -- 物品名:"显眼箱子"->默认
            BURNT = '从时间轴上抹去了。', -- 物品名:"显眼箱子"->烧焦的
            SHIMMER = '那个……似乎很可疑。' -- 物品名:"显眼箱子"
        },
        EYEMASKHAT = '多么诡异……我一定要试戴一下！', -- 物品名:"眼面具"
        EYEOFTERROR = '那东西不应在这出现……', -- 物品名:"恐怖之眼"
        EYEOFTERROR_MINI = '我的眼睛虽然一般，但是我近期也没打算换！', -- 物品名:"可疑窥视者"
        EYEOFTERROR_MINI_GROUNDED = '它想孵化出来！我要盯着点。', -- 物品名:"恐怖之蛋"
        FROZENBANANADAIQUIRI = '我用不了多久就给它消灭了。', -- 物品名:"冰香蕉冻唇蜜"
        BUNNYSTEW = '兔子呀，太晚了。', -- 物品名:"炖兔子"
        MILKYWHITES = '它富含胶原蛋白，抗衰老。不过，还是魔法表更好。', -- 物品名:"乳白物"
        CRITTER_EYEOFTERROR = '有全视之眼当伙伴会非常有用。', -- 物品名:"友好窥视者"
        SHIELDOFTERROR = '大家提高警惕……这口牙有些年头了。', -- 物品名:"恐怖盾牌"
        TWINOFTERROR1 = '我还从来没见过这样的发条结构。', -- 物品名:"激光眼"
        TWINOFTERROR2 = '我还从来没见过这样的发条结构。', -- 物品名:"魔焰眼"
        COTL_TRINKET = '你有点迷失了是吗？', -- 物品名:"红眼冠"
        TURF_COTL_GOLD = '我敢肯定这些黄金肯定有更好的用途？！', -- 物品名:"黄金地板" 制造描述:"为新的黄金时代奠定基础。"
        TURF_COTL_BRICK = '当你看到了一块砖，你也就看到了所有的砖块。', -- 物品名:"砖地板" 制造描述:"单独的砖块聚集在一起用于更大的目的。"
        COTL_TABERNACLE_LEVEL1 = {
            LIT = '我想，它确实能生起一小堆火。', -- 物品名:"低微咩咩雕像" 制造描述:"劣质的咩咩雕刻品。"
            GENERIC = '似乎有点不太合适，不是吗？' -- 物品名:"低微咩咩雕像"->默认 制造描述:"劣质的咩咩雕刻品。"
        },
        COTL_TABERNACLE_LEVEL2 = {
            LIT = '这确实是一个可爱的小雕像。', -- 物品名:"有所改进咩咩雕像" 制造描述:"一座用来歌颂咩咩的精致雕像。"
            GENERIC = '似乎有点不太合适，不是吗？' -- 物品名:"有所改进咩咩雕像"->默认 制造描述:"一座用来歌颂咩咩的精致雕像。"
        },
        COTL_TABERNACLE_LEVEL3 = {
            LIT = '我觉得我可以留下来看看，就一两分钟。', -- 物品名:"完美无瑕咩咩雕像" 制造描述:"一座纪念咩咩荣耀的耀眼纪念碑。"
            GENERIC = '似乎有点不太合适，不是吗？' -- 物品名:"完美无瑕咩咩雕像"->默认 制造描述:"一座纪念咩咩荣耀的耀眼纪念碑。"
        },
        CATTOY_MOUSE = '多么小巧的发条装置啊！', -- 物品名:"发条鼠玩具" 制造描述:"开始一场猫鼠游戏。"
        KITCOON_NAMETAG = '这至少会使我们更容易记住谁是谁。', -- 物品名:"小浣猫项圈" 制造描述:"给可爱的小脸蛋起个名字。"
        KITCOONDECOR1 = {
            GENERIC = '我没有时间整天看小猫玩。', -- 物品名:"火鸡不倒翁"->默认
            BURNT = '游戏时间已经结束。' -- 物品名:"火鸡不倒翁"->烧焦的
        },
        KITCOONDECOR2 = {
            GENERIC = '我不能老是被那些可爱的玩物干扰！', -- 物品名:"逗猫小鱼"->默认
            BURNT = '暂时先别玩了。' -- 物品名:"逗猫小鱼"->烧焦的
        },
        KITCOONDECOR1_KIT = '我真的有时间浪费在这上面？', -- 物品名:"火鸡不倒翁套装" 制造描述:"属于猫科朋友的羽毛乐趣。"
        KITCOONDECOR2_KIT = '谁闲谁来装好它吧。', -- 物品名:"逗猫小鱼套装" 制造描述:"一场愉快的无用功。"
        WX78MODULE_MAXHEALTH = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"强化电路" 制造描述:"让你的机械身躯更加健壮。"
        WX78MODULE_MAXSANITY1 = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"处理器电路" 制造描述:"一点额外的处理能力有助于缓解机械思维。"
        WX78MODULE_MAXSANITY = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"超级处理器电路" 制造描述:"处理能力的大幅提升将让齿轮高速转动。"
        WX78MODULE_MOVESPEED = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"加速电路" 制造描述:"匆忙设计的加速器。亟待改进。"
        WX78MODULE_MOVESPEED2 = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"超级加速电路" 制造描述:"一个完美的加速器，将你的引擎提到最高档。"
        WX78MODULE_HEAT = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"热能电路" 制造描述:"要热起来了。"
        WX78MODULE_NIGHTVISION = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"光电电路" 制造描述:"将你的光学传感器调校为夜视效果。"
        WX78MODULE_COLD = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"制冷电路" 制造描述:"把你的底盘变成一个便携式冰柜。"
        WX78MODULE_TASER = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"电气化电路" 制造描述:"谁敢惹你就等着被电击吧。"
        WX78MODULE_LIGHT = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"照明电路" 制造描述:"用你的存在照亮一个房间。"
        WX78MODULE_MAXHUNGER1 = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"胃增益电路" 制造描述:"增加一点燃料箱的容量。"
        WX78MODULE_MAXHUNGER = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"超级胃增益电路" 制造描述:"能满足哪怕是最贪食的机器人的胃口。"
        WX78MODULE_MUSIC = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"合唱盒电路" 制造描述:"每台机器都需要时不时地进行校准。"
        WX78MODULE_BEE = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"豆增压电路" 制造描述:"让你的大脑和身体都充满嗡嗡作响的潜能！"
        WX78MODULE_MAXHEALTH2 = '啊哈！我就琢磨着应该有人做这种东西了。', -- 物品名:"超级强化电路" 制造描述:"让你的机械身躯无比健壮。"
        WX78_SCANNER = {
            GENERIC = '请你去别的地方嗡嗡响，你让我很分神！', -- 物品名:"生物扫描分析仪"->默认
            HUNTING = '请你去别的地方嗡嗡响，你让我很分神！', -- 物品名:"生物扫描分析仪"
            SCANNING = '请你去别的地方嗡嗡响，你让我很分神！' -- 物品名:"生物扫描分析仪"
        },
        WX78_SCANNER_ITEM = '它在等待时机。', -- 物品名:"生物扫描分析仪" 制造描述:"备份扫描永远不会有坏处。"
        WX78_SCANNER_SUCCEEDED = '你除了干等着就没事可做了？', -- 物品名:"生物扫描分析仪"
        WX78_MODULEREMOVER = '那个机器人是不是偷了我的工具？', -- 物品名:"电路提取器" 制造描述:"成功的钳（前）提是努力。"
        SCANDATA = '对我一点用都没用，我才不要浪费时间读它。', -- 物品名:"生物数据"
        JUSTEGGS = '鸡蛋的话，我喜欢快速而简单的做法。', -- 物品名:"普通煎蛋"
        VEGGIEOMLET = '既然能从锅里吃东西，为什么还要把时间浪费在洗碗上呢？', -- 物品名:"早餐锅"
        TALLEGGS = '鸡蛋和早餐香肠有效地卷为一体。', -- 物品名:"苏格兰高鸟蛋"
        BEEFALOFEED = '我今天喂过我的皮弗娄牛了吗？', -- 物品名:"蒸树枝"
        BEEFALOTREAT = '这可能比我口袋里的糖果对他们更好……', -- 物品名:"皮弗娄牛零食"
        BOAT_ROTATOR = '要顺时针还是逆时针？', -- 物品名:"转向舵"
        BOAT_ROTATOR_KIT = '真不敢相信我竟然没早点想到。', -- 物品名:"转向舵套装" 制造描述:"划，划，转动你的船。"
        BOAT_BUMPER_KELP = '只要能延长小船的寿命我都愿意用。', -- 物品名:"海带保险杠"
        BOAT_BUMPER_KELP_KIT = '这将使我在海上多一点安全感。只是一点。', -- 物品名:"海带保险杠套装" 制造描述:"用海带保护你的船！"
        BOAT_BUMPER_SHELL = '只要能延长小船的寿命我都愿意用。', -- 物品名:"贝壳保险杠"
        BOAT_BUMPER_SHELL_KIT = '这将使我在海上多一点安全感。只是一点。', -- 物品名:"贝壳保险杠套装" 制造描述:"用贝壳保护你的船！"
        BOAT_CANNON = {
            GENERIC = '我可以发誓我给那门大炮装填好了炮弹……也许只是还不到时间。', -- 物品名:"大炮"->默认
            AMMOLOADED = '有备无患。', -- 物品名:"大炮"
            NOAMMO = '下次我会记得带炮弹。' -- 物品名:"大炮"
        },
        BOAT_CANNON_KIT = '我要尽早把它装上我的船。', -- 物品名:"大炮套装" 制造描述:"它能把你的竞争对手从水面轰走。"
        CANNONBALL_ROCK_ITEM = '这个东西谁都知道是干什么的。', -- 物品名:"炮弹" 制造描述:"它肯定会引起轰动。"
        OCEAN_TRAWLER = {
            GENERIC = '谢天谢地，这下不用浪费时间钓鱼了！', -- 物品名:"海洋拖网捕鱼器"->默认
            LOWERED = '它可以在我处理更紧急的事务的同时进行捕鱼。', -- 物品名:"海洋拖网捕鱼器"
            CAUGHT = '那个很奏效！', -- 物品名:"海洋拖网捕鱼器"
            ESCAPED = '嗷，麻烦呐。我没及时收回来。', -- 物品名:"海洋拖网捕鱼器"
            FIXED = '真麻烦。好歹修好了。' -- 物品名:"海洋拖网捕鱼器"
        },
        OCEAN_TRAWLER_KIT = '只好现在多花点时间才能为将来省出时间。', -- 物品名:"海洋拖网捕鱼器套装" 制造描述:"海里有的是鱼。"
        BOAT_MAGNET = {
            GENERIC = '这个好像有点过了。', -- 物品名:"自动航行仪"->默认
            ACTIVATED = '它居然能用，真是个惊喜！' -- 物品名:"自动航行仪"
        },
        BOAT_MAGNET_KIT = '那个年轻人想法真是怪。', -- 物品名:"自动航行仪套装" 制造描述:"你的个性并不是唯一具有磁性的东西。"
        BOAT_MAGNET_BEACON = {
            GENERIC = '我擅长组装发条……而不是这种东西。', -- 物品名:"自动航行灯塔"->默认 制造描述:"能把附近可能存在的任何滑稽的超大磁铁吸过来。"
            ACTIVATED = '我想这意味着它在工作。' -- 物品名:"自动航行灯塔" 制造描述:"能把附近可能存在的任何滑稽的超大磁铁吸过来。"
        },
        DOCK_KIT = '就不能找个更有时间的人把它装好吗？', -- 物品名:"码头套装" 制造描述:"准备好你的码头审查。"
        DOCK_WOODPOSTS_ITEM = '支撑的柱子是要先放还是后放？哎呀。', -- 物品名:"码头桩" 制造描述:"没有什么能比事后添加一些柱子更能说明“结构稳定”了。"
        MONKEYHUT = {
            GENERIC = '我还是喜欢脚踏实地地生活在地上，谢谢你。', -- 物品名:"猴子小屋"->默认
            BURNT = '真是太可惜了。无论如何……' -- 物品名:"猴子小屋"->烧焦的
        },
        POWDER_MONKEY = '你是来捣乱的吧？', -- 物品名:"火药猴"
        PRIME_MATE = '他似乎认为自己说了算。', -- 物品名:"大副"
        LIGHTCRAB = '我对这里的任何一丝光亮都心存感激。', -- 物品名:"发光蟹"
        CUTLESS = '我想被木头砸到还是会很疼的。', -- 物品名:"木头短剑"
        CURSED_MONKEY_TOKEN = '这个小饰品我就不装在口袋里了。', -- 物品名:"诅咒饰品"
        OAR_MONKEY = '我欣赏它的多任务处理能力。', -- 物品名:"战桨"
        BANANABUSH = '它们这样长容易采摘一些。', -- 物品名:"香蕉丛"
        DUG_BANANABUSH = '它们这样长容易采摘一些。', -- 物品名:"香蕉丛"
        PALMCONETREE = '我在哪见过它吧？有点想不起来了。', -- 物品名:"棕榈松果树"
        PALMCONE_SEED = '未来会变成一棵树的。', -- 物品名:"棕榈松果树芽"
        PALMCONE_SAPLING = '它的生命周期大约过了一半。', -- 物品名:"棕榈松果树苗"
        PALMCONE_SCALE = '不如把它放进口袋，可能会派上用场。', -- 物品名:"棕榈松果树鳞片"
        MONKEYTAIL = '希望没有猴子藏在里面。', -- 物品名:"猴尾草"
        DUG_MONKEYTAIL = '希望没有猴子藏在里面。', -- 物品名:"猴尾草"
        MONKEY_MEDIUMHAT = '既然我非要出海，那就得有航海的服装。', -- 物品名:"船长的三角帽"
        MONKEY_SMALLHAT = '嗷，戴上以后好像确实有些恶作剧的冲动了……', -- 物品名:"海盗头巾"
        POLLY_ROGERSHAT = '多么古怪的设计……我必须拥有它。', -- 物品名:"波莉·罗杰的帽子" 制造描述:"随帽子附送一只长羽毛的朋友。"
        POLLY_ROGERS = '口袋大小的帮手，还有什么比这更好的呢？', -- 物品名:"波莉·罗杰"
        MONKEYISLAND_PORTAL = '啥玩意？', -- 物品名:"非自然传送门"
        MONKEYISLAND_PORTAL_DEBRIS = '我应该早点想起来的。现在太晚了，我想。', -- 物品名:"损坏的机器"
        MONKEYQUEEN = '你对那一系列的偷盗活动作何解释？', -- 物品名:"月亮码头女王"
        MONKEYPILLAR = '这种柱子搁在其他柱子里基本不会引起任何注意。', -- 物品名:"猴子柱"
        PIRATE_FLAG_POLE = '怎么，还嫌海上航行不够危险？把海盗加进来是几个意思？', -- 物品名:"月亮码头海盗旗" 制造描述:"挂起你自己的海盗旗来模仿猴子掠夺者吧。"
        BLACKFLAG = '如此不祥的颜色……', -- 物品名:"黑旗"
        PIRATE_STASH = '反正我是没指望地上真有一个“X”的标识。', -- 物品名:"X"
        STASH_MAP = '看来我不是唯一一个丢三落四的人。', -- 物品名:"海盗地图"
        BANANAJUICE = '我想我可以抽出一点时间来享受一两口。', -- 物品名:"香蕉奶昔"
        FENCE_ROTATOR = '我信赖专用工具。尤其是能用来戳戳打打的那种。', -- 物品名:"栅栏击剑" 制造描述:"一把用于栅栏和击剑的剑"
        CHARLIE_STAGE_POST = '老实说，谁有时间看这些戏剧的东西？', -- 物品名:"舞台"
        CHARLIE_LECTURN = '喂，真有心情看这个啊。', -- 物品名:"剧本"
        CHARLIE_HECKLER = '我不记得问过它们的意见。', -- 物品名:"嘲鸫"
        PLAYBILL_THE_DOLL = '多么奇怪的一出小戏。', -- 物品名:"附魔玩偶\n舞台剧"
        STATUEHARP_HEDGESPAWNER = '它就是有点……', -- 物品名:"荆棘密布的雕像"
        HEDGEHOUND = '骗我一次，是你的问题；骗我两次，还是你的问题！', -- 物品名:"蔷薇狼"
        HEDGEHOUND_BUSH = '玫瑰花丛一秒钟前就在那吗？', -- 物品名:"蔷薇"
        MASK_DOLLHAT = '它的某些东西让我皮肤发痒……', -- 物品名:"玩偶面具"
        MASK_DOLLBROKENHAT = '它的某些东西让我皮肤发痒……', -- 物品名:"开裂玩偶面具"
        MASK_DOLLREPAIREDHAT = '它的某些东西让我皮肤发痒……', -- 物品名:"破碎玩偶面具"
        MASK_BLACKSMITHHAT = '它的某些东西让我皮肤发痒……', -- 物品名:"铁匠面具"
        MASK_MIRRORHAT = '它的某些东西让我皮肤发痒……', -- 物品名:"镜子面具"
        MASK_QUEENHAT = '它的某些东西让我皮肤发痒……', -- 物品名:"女王面具"
        MASK_KINGHAT = '它的某些东西让我皮肤发痒……', -- 物品名:"国王面具"
        MASK_TREEHAT = '它的某些东西让我皮肤发痒……', -- 物品名:"树木面具"
        MASK_FOOLHAT = '它的某些东西让我皮肤发痒……', -- 物品名:"小丑面具"
        COSTUME_DOLL_BODY = '这是什么？大号玩偶的连衣裙吗？', -- 物品名:"玩偶服"
        COSTUME_QUEEN_BODY = '看上去是女王的服装。', -- 物品名:"女王服"
        COSTUME_KING_BODY = '看上去是国王的服装。', -- 物品名:"国王服"
        COSTUME_BLACKSMITH_BODY = '看上去是铁匠的服装。', -- 物品名:"铁匠服"
        COSTUME_MIRROR_BODY = '那套服装有些地方让我觉得不对劲。', -- 物品名:"镜子服"
        COSTUME_TREE_BODY = '看上去是……树的服装？', -- 物品名:"树木服"
        COSTUME_FOOL_BODY = '看上去是小丑的服装。', -- 物品名:"小丑服"
        STAGEUSHER = {
            STANDING = '离我远点！', -- 物品名:"多刺舞台之手"
            SITTING = '我知道你藏在里面。' -- 物品名:"多刺舞台之手"
        },
        SEWING_MANNEQUIN = {
            GENERIC = '时间不等假人。', -- 物品名:"假人"->默认 制造描述:"测试所有最新可装备外观的模特。"
            BURNT = '时间不等假人。' -- 物品名:"假人"->烧焦的 制造描述:"测试所有最新可装备外观的模特。"
        },
        MAGICIAN_CHEST = '这个口袋维度太方便了！', -- 物品名:"魔术师箱子" 制造描述:"将你的物品囚禁在一个暗影漩涡中。"
        TOPHAT_MAGICIAN = '就我的口味而言，有些单调了。', -- 物品名:"魔术师高礼帽" 制造描述:"百搭的黑魔法。"
        YOTR_FIGHTRING_KIT = '还有比这更糟糕的方式来打发时间。', -- 物品名:"枕头大战坑套装" 制造描述:"兔子的战斗擂台。"
        YOTR_FIGHTRING_BELL = {
            GENERIC = '现在没人在用。', -- 物品名:"枕头大战钟"->默认
            PLAYING = '完全没危险，太令人激动了！' -- 物品名:"枕头大战钟"
        },
        YOTR_DECOR_1 = {
            GENERAL = '多点光总是好的。', -- 物品名:"矮兔灯"
            OUT = '噢，麻烦呐，火灭了！' -- 物品名:"矮兔灯"->出去？外面？
        },
        YOTR_DECOR_2 = {
            GENERAL = '多点光总是好的。', -- 物品名:"高兔灯"
            OUT = '噢，麻烦呐，火灭了！' -- 物品名:"高兔灯"->出去？外面？
        },
        HAREBALL = '真恶心！', -- 物品名:"兔毛球"
        YOTR_DECOR_1_ITEM = '我还是可以抽出一会儿把它装好的。', -- 物品名:"矮兔灯" 制造描述:"这盏可爱的灯能使任何洞穴变得舒适起来。"
        YOTR_DECOR_2_ITEM = '我还是可以抽出一会儿把它装好的。', -- 物品名:"高兔灯" 制造描述:"一尊肚子里真正有火的兔子雕像！"
        DREADSTONE = '为什么要我来拿这个。', -- 物品名:"绝望石"
        HORRORFUEL = '真恶心。', -- 物品名:"纯粹恐惧"
        DAYWALKER = {
            GENERIC = '我早就知道不该参与进来的！', -- 物品名:"噩梦猪人"->默认
            IMPRISONED = '我可不能参与到那些事情里去。' -- 物品名:"噩梦猪人"
        },
        DAYWALKER_PILLAR = {
            GENERIC = '似乎能被破坏……但我认为那么做不明智。', -- 物品名:"开裂的柱子"->默认
            EXPOSED = '嗷，麻烦呐。我好像突然想起来了……' -- 物品名:"开裂的柱子"
        },
        ARMORDREADSTONE = '滚。', -- 物品名:"绝望石盔甲" 制造描述:"不要怕，黑暗会保护你。"
        DREADSTONEHAT = '滚。', -- 物品名:"绝望石头盔" 制造描述:"由至黑的石头做成的结实头盔。"
        LUNARRIFT_PORTAL = '真邋遢！瞧瞧这些粗糙的毛边！', -- 物品名:"裂隙"
        LUNARRIFT_CRYSTAL = '也许是某种时空残留物？', -- 物品名:"开裂的柱子"
        LUNARTHRALL_PLANT = '自己人别打。', -- 物品名:"致命亮茄"
        LUNARTHRALL_PLANT_VINE_END = '自己人别打。', -- 物品名:"钻地藤蔓"
        LUNAR_GRAZER = '唉可爱捏。', -- 物品名:"牧者"
        PUREBRILLIANCE = '最好吃的点心。', -- 物品名:"纯粹辉煌"
        LUNARPLANT_HUSK = '惨惨的。', -- 物品名:"亮茄外壳"
        LUNAR_FORGE = '怎么又给这些冒险者知道的？', -- 物品名:"辉煌铁匠铺"
        LUNAR_FORGE_KIT = '得了，它不会自己建造的。', -- 物品名:"辉煌铁匠铺套装" 制造描述:"锻造异世界的物品。"
        LUNARPLANT_KIT = '修复它比造一个新的更快。', -- 物品名:"亮茄修补套件" 制造描述:"修复损坏的设备。"
        ARMOR_LUNARPLANT = '我对额外的防护来者不拒。', -- 物品名:"亮茄盔甲" 制造描述:"将自己包围在令人生畏的月叶中。"
        LUNARPLANTHAT = '非常好的设计。', -- 物品名:"亮茄头盔" 制造描述:"用发着光的护具保护您宝贵的颅骨。"
        BOMB_LUNARPLANT = '这东西应该能迅速结束战斗。', -- 物品名:"亮茄炸弹" 制造描述:"用不稳定的月能取得爆炸性结果。"
        STAFF_LUNARPLANT = '我就是偏爱距离感。', -- 物品名:"亮茄魔杖" 制造描述:"扎根原地，从远处发起攻击。"
        SWORD_LUNARPLANT = '喔，我很喜欢那个。', -- 物品名:"亮茄剑" 制造描述:"月光宝剑。"
        PICKAXE_LUNARPLANT = '难以置信，它相当好用。', -- 物品名:"亮茄粉碎者" 制造描述:"随心所欲地挖掘和拆除吧。"
        SHOVEL_LUNARPLANT = '古怪但却十分高效的设计。', -- 物品名:"亮茄锄铲" 制造描述:"铲子和园艺锄之间交叉授粉的突破性成果。"
        BROKEN_FORGEDITEM = '它看起来已经过了鼎盛时期。', -- 物品名:"开裂的柱子"
        PUNCHINGBAG = '我可以腾出时间来测试我的武器……顺带也发泄一下。', -- 物品名:"拳击袋" 制造描述:"测试武器的强度。并从中获得乐趣！"
        SHADOWRIFT_PORTAL = '这下不妙了……', -- 物品名:"裂隙"
        SHADOW_FORGE = '这都行。', -- 物品名:"暗影术基座"
        SHADOW_FORGE_KIT = '用不了几秒我就能把它装好。', -- 物品名:"暗影术基座套装" 制造描述:"让恐惧为你所用。"
        FUSED_SHADELING = '你离我远点！', -- 物品名:"熔合暗影"
        FUSED_SHADELING_BOMB = '多么讨厌的小东西啊！', -- 物品名:"绝望螨"
        VOIDCLOTH = '时空的碎布。', -- 物品名:"暗影碎布"
        VOIDCLOTH_KIT = '修复它比造一个新的更快。', -- 物品名:"虚空修补套件" 制造描述:"修复损坏的设备。"
        VOIDCLOTHHAT = '滚。', -- 物品名:"虚空风帽" 制造描述:"没有光可以刺穿这个罩子里的黑暗。"
        ARMOR_VOIDCLOTH = '滚。', -- 物品名:"虚空长袍" 制造描述:"一件阻隔光线的噩梦斗篷。"
        VOIDCLOTH_UMBRELLA = '好歹能让我不被淋湿。', -- 物品名:"暗影伞" 制造描述:"暗影提供的保护，不惧最严峻的降雨。"
        VOIDCLOTH_SCYTHE = '我知道你会说话，可惜我吃不到瓜。', -- 物品名:"暗影收割者" 制造描述:"从容地剔除植物群落。"
        SHADOWTHRALL_HANDS = '你尽管试，不可能抓住我的！', -- 物品名:"墨荒"
        SHADOWTHRALL_HORNS = '别指望拿我当晚餐！', -- 物品名:"墨荒"
        SHADOWTHRALL_WINGS = '起开！起开！！', -- 物品名:"墨荒"
        CHARLIE_NPC = '我真想现在就找你算账，可惜还是先得等科雷填坑。', -- 物品名:"查理"
        CHARLIE_HAND = '我不给也会是别的冒险者去给。', -- 物品名:"召唤之手"
        NITRE_FORMATION = '真是让人兴奋，更多的石头！', -- 物品名:"硝石堆"
        DREADSTONE_STACK = '它来自地底深处。', -- 物品名:"绝望石矿苗"
        SCRAPBOOK_PAGE = '是我留在这的吗？', -- 物品名:"丢失的图鉴页面"
        LEIF_IDOL = '多么有趣的小饰品啊！', -- 物品名:"树精守卫雕像" 制造描述:"召唤树木的力量。"
        WOODCARVEDHAT = '多么粗糙啊！', -- 物品名:"硬木帽" 制造描述:"你的脑袋会被保护得很好（敲敲木头防止乌鸦嘴）。"
        WALKING_STICK = '没有什么比手杖更能给人的步伐增添活力了。', -- 物品名:"木手杖" 制造描述:"轻松穿越您最喜欢的自然小径。"
        IPECACSYRUP = '我不会被愚骗去品尝它，我谢谢你！', -- 物品名:"泻根糖浆" 制造描述:"让你保持正常。"
        BOMB_LUNARPLANT_WORMWOOD = '等等……他们一直都长这样吗？', -- Unused		-- 物品名:"开裂的柱子"
        WORMWOOD_MUTANTPROXY_CARRAT = {
            DEAD = '我想它已经走了。', -- 物品名:未找到
            GENERIC = '这是我见过的最有活力的胡萝卜。', -- 物品名:未找到
            HELD = '不要再扭动了！', -- 物品名:未找到
            SLEEPING = '它正在快速地小憩。' -- 物品名:未找到
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = '知道它在附近，我就放心了。', -- 物品名:未找到
        WORMWOOD_MUTANTPROXY_FRUITDRAGON = {
            GENERIC = '多么有趣的小生物。', -- 物品名:未找到
            RIPE = '真可惜，它们是如此美味。', -- 物品名:未找到
            SLEEPING = '我想它没有什么更好的事情可做。' -- 物品名:未找到
        },
        SUPPORT_PILLAR_SCAFFOLD = '哦！我以为已经完成了。', -- 物品名:"支柱脚手架" 制造描述:"我们都需要一些支持。"
        SUPPORT_PILLAR = '世间万物都会随着时间的前进而崩塌。好吧，起码大多数事情是这样的。', -- 物品名:"支柱"
        SUPPORT_PILLAR_COMPLETE = '我想知道这次能维持多久。', -- 物品名:"加固支柱"
        SUPPORT_PILLAR_BROKEN = '时间并不仁慈。', -- 物品名:"支柱瓦砾"
        SUPPORT_PILLAR_DREADSTONE_SCAFFOLD = '哦！我以为已经完成了。', -- 物品名:"绝望石支柱脚手架" 制造描述:"黑暗的力量在压力下仍能保持良好的状态。"
        SUPPORT_PILLAR_DREADSTONE = '世间万物都会随着时间的前进而崩塌。好吧，起码大多数事情是这样的。', -- 物品名:"绝望石支柱"
        SUPPORT_PILLAR_DREADSTONE_COMPLETE = '嗯，时间会证明一切。', -- 物品名:"强化绝望石支柱"
        SUPPORT_PILLAR_DREADSTONE_BROKEN = '有什么是持久的吗？', -- 物品名:"绝望石支柱瓦砾"
        WOLFGANG_WHISTLE = '我猜挤出点时间来锻炼也可以。', -- 物品名:"训练哨" 制造描述:"释放你心底潜在的教练！"
        MUTATEDDEERCLOPS = '或许我也会变成这样，或许我已经是这样，但我的演技很好。', -- 物品名:"晶体独眼巨鹿"
        MUTATEDWARG = '或许我也会变成这样，或许我已经是这样，但我的演技很好。', -- 物品名:"附身座狼"
        MUTATEDBEARGER = '或许我也会变成这样，或许我已经是这样，但我的演技很好。', -- 物品名:"装甲熊獾"
        LUNARFROG = '走开。', -- 物品名:"明眼青蛙"
        DEERCLOPSCORPSE = {
            GENERIC = '老实躺着！', -- 物品名:未找到
            BURNING = '采取预防措施并没有什么坏处。', -- 物品名:未找到
            REVIVING = '或许我也会变成这样，或许我已经是这样，但我的演技很好。' -- 物品名:未找到
        },
        WARGCORPSE = {
            GENERIC = '居然花了这么久！', -- 物品名:未找到
            BURNING = '我们不会再见面了。', -- 物品名:未找到
            REVIVING = '或许我也会变成这样，或许我已经是这样，但我的演技很好。' -- 物品名:未找到
        },
        BEARGERCORPSE = {
            GENERIC = '总算结束了。', -- 物品名:未找到
            BURNING = '你这次回不来了。', -- 物品名:未找到
            REVIVING = '或许我也会变成这样，或许我已经是这样，但我的演技很好。' -- 物品名:未找到
        },
        BEARGERFUR_SACK = '它能随时随地冷藏我的易腐品。', -- 物品名:"极地熊獾桶" 制造描述:"便携式冰箱。酷。"
        HOUNDSTOOTH_BLOWPIPE = '对经典款的一次有齿改造。', -- 物品名:"嚎弹炮" 制造描述:"那感觉就像远距离被咬一样。"
        DEERCLOPSEYEBALL_SENTRYWARD = {
            GENERIC = '感觉我们回到了冰河时代。', -- Enabled.		-- 物品名:"冰眼结晶器"->默认
            NOEYEBALL = '缺少运转的关键部分。太典型了。' -- Disabled.		-- 物品名:"冰眼结晶器"
        },
        DEERCLOPSEYEBALL_SENTRYWARD_KIT = '我想我过会儿就造完它了。', -- 物品名:"冰眼结晶器套装" 制造描述:"用冻伤来治疗一下晒伤。"
        SECURITY_PULSE_CAGE = '它是空的。', -- 物品名:"火花柜"
        SECURITY_PULSE_CAGE_FULL = '好吧，它抓住了一些东西。现在怎么办？', -- 物品名:"火花柜"
        CARPENTRY_STATION = {
            GENERIC = '我喜欢简单和有功能性的家具。', -- 物品名:"锯马"->默认 制造描述:"别瞎蹦跶了，做点家具吧。"
            BURNT = '好吧，这一准发挥不了功能了。' -- 物品名:"锯马"->烧焦的 制造描述:"别瞎蹦跶了，做点家具吧。"
        },
        {
            GENERIC = '我喜欢简单和有功能性的家具。', -- 物品名:"锯马"->默认 制造描述:"别瞎蹦跶了，做点家具吧。"
            HAS_ITEM = '未找到', -- 物品名:"锯马" 制造描述:"别瞎蹦跶了，做点家具吧。"
            BURNT = '好吧，这一准发挥不了功能了。' -- 物品名:"锯马"->烧焦的 制造描述:"别瞎蹦跶了，做点家具吧。"
        },
        WOOD_CHAIR = {
            GENERIC = '我们那会儿管那东西\n叫椅子。', -- 物品名:"木椅"->默认 制造描述:"一把可以坐的木椅。"
            OCCUPIED = '它被占用了。', -- 物品名:"木椅"->被占领 制造描述:"一把可以坐的木椅。"
            BURNT = '椅子的生命结束了。' -- 物品名:"木椅"->烧焦的 制造描述:"一把可以坐的木椅。"
        },
        DECOR_CENTERPIECE = '我确信有人会喜欢它。', -- 物品名:"艺术？" 制造描述:"彰显您卓越品味的餐桌摆件。"
        DECOR_LAMP = '这地方光线跑得有多快？', -- 物品名:"餐桌灯" 制造描述:"一盏舒适的小灯。"
        DECOR_FLOWERVASE = {
            GENERIC = '漂亮。', -- 物品名:"餐桌花瓶"->默认 制造描述:"这是一个放置鲜切花的好地方。"
            EMPTY = '我明明刚刚换过这些的。还是说我过会儿才会换？', -- 物品名:"餐桌花瓶" 制造描述:"这是一个放置鲜切花的好地方。"
            WILTED = '转瞬即逝。', -- 物品名:"餐桌花瓶"->枯萎的 制造描述:"这是一个放置鲜切花的好地方。"
            FRESHLIGHT = '焕然一新。', -- 物品名:"餐桌花瓶"->茶几-新的发光的 制造描述:"这是一个放置鲜切花的好地方。"
            OLDLIGHT = '我发誓我刚刚换过的。' -- 物品名:"餐桌花瓶"->茶几-旧的发光的 制造描述:"这是一个放置鲜切花的好地方。"
        },
        DECOR_PICTUREFRAME = {
            GENERIC = '看起来它完成得很快。', -- 物品名:"空画框"->默认 制造描述:"将你最爱的物品图装裱起来。 "
            UNDRAWN = '空白的画布，蕴藏着无限的可能。' -- 物品名:"空画框"->没有画画 制造描述:"将你最爱的物品图装裱起来。 "
        },
        DECOR_PORTRAITFRAME = '及时捕捉到的瞬间。', -- 物品名:"愉快画像" 制造描述:"把你的朋友们放进框里，这很有趣！ "
        PHONOGRAPH = '播点新歌还是老歌好呢？', -- 物品名:"留声机" 制造描述:"坐下来，放松一下，听一听你噩梦中的音乐。"
        RECORD = '这是年轻一辈赞不绝口的最新潮的拉格泰姆音乐吗？', -- 物品名:"唱片" 制造描述:"黑胶上的永恒经典。"
        RECORD_CREEPYFOREST = '我看起来有时间坐下来听唱片吗？', -- 物品名:"惊悚森林"
        RECORD_DANGER = '我更喜欢他们早期的作品。', -- 物品名:"空画框" 制造描述:"将你最爱的物品图装裱起来。 "
        RECORD_DAWN = '我更喜欢他们后来的作品。', -- 物品名:"空画框" 制造描述:"将你最爱的物品图装裱起来。 "
        RECORD_DRSTYLE = '我更喜欢他们早期的作品。', -- 物品名:"D.R.风格"
        RECORD_DUSK = '我更喜欢他们早期的作品。', -- 物品名:"空画框" 制造描述:"将你最爱的物品图装裱起来。 "
        RECORD_EFS = '我更喜欢他们后来的作品。', -- 物品名:"E.F.S."
        RECORD_END = '我看起来有时间坐下来听唱片吗？', -- 物品名:"空画框" 制造描述:"将你最爱的物品图装裱起来。 "
        RECORD_MAIN = '我更喜欢他们早期的作品。', -- 物品名:"空画框" 制造描述:"将你最爱的物品图装裱起来。 "
        RECORD_WORKTOBEDONE = '我更喜欢他们后来的作品。', -- 物品名:"空画框" 制造描述:"将你最爱的物品图装裱起来。 "
        ARCHIVE_ORCHESTRINA_MAIN = '多么精巧的设计。', -- 物品名:"远古小合奏机"
        WAGPUNKHAT = '这是那个什么瓦发明的？', -- 物品名:"W.A.R.B.I.S.头戴齿轮" 制造描述:"看起来聪明，打起来也聪明。"
        ARMORWAGPUNK = '这是那个什么瓦发明的？', -- 物品名:"W.A.R.B.I.S.盔甲" 制造描述:"开足马力，全速前进！"
        WAGSTAFF_MACHINERY = '这些一定是有人匆匆丢下的。', -- 物品名:"被丢弃的垃圾"
        WAGPUNK_BITS = '齿轮、电线和链轮，天哪！', -- 物品名:"废铁"
        WAGPUNKBITS_KIT = '他们还能想出些什么来？', -- 物品名:"自动修理机" 制造描述:"你得心应手的W.A.R.B.I.S.维修工具！"
        WAGSTAFF_MUTATIONS_NOTE = '某些人的时间可真多。', -- 物品名:"研究笔记"
        BATTLESONG_INSTANT_REVIVE = '哦，你不会是想听我唱歌吧？', -- 物品名:"战士重奏" 制造描述:"扰动阵亡战友的心房。\n"
        WATHGRITHR_IMPROVEDHAT = '插几只翅膀不算什么，我见过上面有一整只野鸡的帽子。', -- 物品名:"统帅头盔" 制造描述:"适合女武神女王的头盔。"
        SPEAR_WATHGRITHR_LIGHTNING = '希望我没得罪她……', -- 物品名:"奔雷矛" 制造描述:"闪电的力量由你掌控。"
        BATTLESONG_CONTAINER = '很能装的存歌罐。', -- 物品名:"战斗号子罐" 制造描述:"保存你所有的金曲。"
        SADDLE_WATHGRITHR = '确实给我留下了深刻印象。', -- 物品名:"战斗鞍具" 制造描述:"勇士与坐骑，一起战斗吧！"
        WATHGRITHR_SHIELD = '多点保护当然是好事。', -- 物品名:"战斗圆盾" 制造描述:"只要它相信自己，盾牌也可以是武器。"
        BATTLESONG_SHADOWALIGNED = '哦，你不会是想听我唱歌吧？', -- 物品名:"黑暗悲歌" 制造描述:"帮自己和盟友抵御月亮敌人。"
        BATTLESONG_LUNARALIGNED = '哦，你不会是想听我唱歌吧？', -- 物品名:"启迪摇篮曲" 制造描述:"帮自己和盟友抵御暗影敌人。"
        SHARKBOI = '就没见过这么粗暴的家伙！', -- 物品名:"大霜鲨"
        BOOTLEG = '呣。那算不上正规的空间位移装置，充其量就是个廉价的冒牌货！', -- 物品名:"出逃腿靴"
        OCEANWHIRLPORTAL = '如果它能让我迅速离开，那我也没什么好挑的了。', -- 物品名:"漩涡传送门"
        EMBERLIGHT = '省去了我找柴火的麻烦。', -- 物品名:"火球术"
        WILLOW_EMBER = 'only_used_by_willow' -- 物品名:"威尔逊"
    },
    DESCRIBE_GENERIC = '应该算是特别的东西吧。', --检查物品描述的缺省值
    DESCRIBE_TOODARK = '我——我需要一盏灯，快！', --天太黑
    DESCRIBE_SMOLDERING = '它随时都会爆裂出火焰。', --冒烟
    DESCRIBE_PLANTHAPPY = '我最好不要去管它。', --检查植物 植物满足
    DESCRIBE_PLANTVERYSTRESSED = '我能感觉到它所散发出来的压力。', --检查植物 植物压力山大(没戴眼镜时检查)
    DESCRIBE_PLANTSTRESSED = '有什么东西让它不高兴了。', --检查植物 植物有压力(没戴眼镜时检查)
    DESCRIBE_PLANTSTRESSORKILLJOYS = '这里的一些东西正在阻止它发挥全部潜力。', --检查植物 有讨厌的(腐烂的大蔬菜、杂草、土壤杂物碎片)
    DESCRIBE_PLANTSTRESSORFAMILY = '再种上几株来陪伴它也无妨。', --检查植物 同类作物不足
    DESCRIBE_PLANTSTRESSOROVERCROWDING = '嗷，麻烦呐。我可能在一个地方种了太多植物。', --检查植物 过度拥挤
    DESCRIBE_PLANTSTRESSORSEASON = '现在种这个可能不当季。', --检查植物 季节错误
    DESCRIBE_PLANTSTRESSORMOISTURE = '嗷，麻烦呐。我是不是又忘了给它浇水？', --检查植物 缺少水分
    DESCRIBE_PLANTSTRESSORNUTRIENTS = '我确信不久前我给它施了些肥料……或者也许我很快就会施。', --检查植物 缺少养分
    DESCRIBE_PLANTSTRESSORHAPPINESS = '我真的有必要和它说话吗？', --检查植物 没聊天
    EAT_FOOD = {
        TALLBIRDEGG_CRACKED = '哦，有点……令人不安的脆。', --吃孵化的高脚鸟蛋
        WINTERSFEASTFUEL = '我也说不清为什么，但是它让我想起爸爸做的饭。' --吃冬季盛宴食物
    }
}
