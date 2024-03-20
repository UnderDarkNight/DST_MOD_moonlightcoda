--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[



]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----- 界面API
    local Widget = require "widgets/widget"
    local Image = require "widgets/image" -- 引入image控件
    local UIAnim = require "widgets/uianim"


    local Screen = require "widgets/screen"
    local AnimButton = require "widgets/animbutton"
    local ImageButton = require "widgets/imagebutton"
    local Menu = require "widgets/menu"
    local Text = require "widgets/text"
    local TEMPLATES = require "widgets/redux/templates"
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----- 读取 储存数据的API
    
                    local function Get_Data_File_Name()
                        return "MOONLIGHTCODA_DATA.TEXT"
                    end
                    local function Read_All_Json_Data()

                        local function Read_data_p()
                            local file = io.open(Get_Data_File_Name(), "r")
                            local text = file:read('*line')
                            file:close()
                            return text
                        end

                        local flag,ret = pcall(Read_data_p)

                        if flag == true then
                            local retTable = json.decode(ret)
                            return retTable
                        else
                            print("moonlightcoda_data ERROR :read cross archived data error : Read_All_Json_Data got nil")
                            print(ret)
                            return {}
                        end
                    end

                    local function Write_All_Json_Data(json_data)
                        local w_data = json.encode(json_data)
                        local file = io.open(Get_Data_File_Name(), "w")
                        file:write(w_data)
                        file:close()
                    end

                    local function Get_Cross_Archived_Data_By_userid(userid)
                        local crash_flag , all_data_table = pcall(Read_All_Json_Data)
                        if crash_flag then
                            local temp_json_data = all_data_table
                            return temp_json_data[userid] or {}
                        else
                            print("error : Read_All_Json_Data fn crash")
                            return {}
                        end
                    end

                    local function Set_Cross_Archived_Data_By_userid(userid,_table)

                        local temp_json_data = Read_All_Json_Data() or {}
                        -- temp_json_data[userid] = _table
                        temp_json_data[userid] = temp_json_data[userid] or {}
                        for index, value in pairs(_table) do
                            temp_json_data[userid][index] = value
                        end
                        temp_json_data = deepcopy(temp_json_data)
                        -- Write_All_Json_Data(temp_json_data)
                        pcall(Write_All_Json_Data,temp_json_data)
                    end


    local function read_xy_percent()
        local data_table = {}
        local crash_flag,temp_table = pcall(Get_Cross_Archived_Data_By_userid,ThePlayer.userid)
        if crash_flag then
            data_table = temp_table
        end

        local x,y = data_table.x or 0.5,data_table.y or 0.5
        return x,y
    end
    local function save_xy_percent(x,y)
        local data_table = {
            x = x,
            y = y
        }
        pcall(Set_Cross_Archived_Data_By_userid,ThePlayer.userid,data_table)
    end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----- 创建界面
    local function CreateHud(inst,HUD)
        ---------------------------------------------------------------------------------------------
        ----
            local main_scale_num = 0.15
            local root = HUD:AddChild(Widget())
        -------- 设置锚点
            root:SetHAnchor(1) -- 设置原点x坐标位置，0、1、2分别对应屏幕中、左、右
            root:SetVAnchor(2) -- 设置原点y坐标位置，0、1、2分别对应屏幕中、上、下
            root:SetPosition(1000,500)
            root:MoveToBack()
        -------- 设置缩放模式
            root:SetScaleMode(SCALEMODE_FIXEDSCREEN_NONDYNAMIC)   
        ---------------------------------------------------------------------------------------------
        ---- 屏幕缩放
            -- root.x_percent = 0.5
            -- root.y_percent = 0.5
            root.x_percent,root.y_percent = read_xy_percent()
            function root:LocationScaleFix()
                if self.x_percent and not self.__mouse_holding  then
                    local scrnw, scrnh = TheSim:GetScreenSize()
                    if self.____last_scrnh ~= scrnh then
                        local tarX = self.x_percent * scrnw
                        local tarY = self.y_percent * scrnh
                        self:SetPosition(tarX,tarY)
                    end
                    self.____last_scrnh = scrnh
                end
            end
            root:LocationScaleFix()
            inst:DoPeriodicTask(5,function()
                root:LocationScaleFix()                            
            end)
        ---------------------------------------------------------------------------------------------
        --- 添加按钮
            local theButton = root:AddChild(ImageButton(
                "images/widgets/moonlightcoda_level_widget.xml",
                "moonlightcoda_level_widget.tex",
                "moonlightcoda_level_widget.tex",
                "moonlightcoda_level_widget.tex",
                "moonlightcoda_level_widget.tex",
                "moonlightcoda_level_widget.tex"
            ))
            theButton:SetScale(main_scale_num,main_scale_num,main_scale_num)
            theButton:SetOnDown(function()                      --- 鼠标按下去的时候
                if not root.__mouse_holding  then
                    root.__mouse_holding = true      --- 上锁
                        --------- 添加鼠标移动监听任务
                        root.___follow_mouse_event = TheInput:AddMoveHandler(function(x, y)  
                            root:SetPosition(x,y,0)
                        end)
                        --------- 添加鼠标按钮监听
                        root.___mouse_button_up_event = TheInput:AddMouseButtonHandler(function(button, down, x, y) 
                            if button == MOUSEBUTTON_LEFT and down == false then    ---- 左键被抬起来了
                                root.___mouse_button_up_event:Remove()       ---- 清掉监听
                                root.___mouse_button_up_event = nil

                                root.___follow_mouse_event:Remove()          ---- 清掉监听
                                root.___follow_mouse_event = nil

                                root:SetPosition(x,y,0)                      ---- 设置坐标
                                root.__mouse_holding = false                 ---- 解锁

                                local scrnw, scrnh = TheSim:GetScreenSize()
                                root.x_percent = x/scrnw
                                root.y_percent = y/scrnh

                                ------------------------------------------------------------------------
                                ----
                                    save_xy_percent(root.x_percent,root.y_percent)  ---- 储存坐标
                                ------------------------------------------------------------------------


                            end
                        end)
                end
            end)
        ---------------------------------------------------------------------------------------------
        --- 文本
            local font = CODEFONT
            local font_size = 20
            local level_text = root:AddChild(Text(font,font_size,"Level.10",{ 255/255 , 255/255 ,255/255 , 1}))
            level_text:SetString("Level.0")
        ---------------------------------------------------------------------------------------------
        --- 添加监听 event
            local level_num = 0
            inst:ListenForEvent("coda_level_widget_refresh",function(_,num)
                if type(num) == "number" then
                    if num > level_num then
                        level_num = num
                    end
                    level_text:SetString("Level."..tostring(level_num))
                end
            end)
        ---------------------------------------------------------------------------------------------

    end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----- 刷新事件
    local function Level_Widget_Hud_Refresh_Event_Setup(inst)
        inst:ListenForEvent("coda_level_widget_refresh_server_side",function(_,num)
            inst:DoTaskInTime(1,function()
                inst.components.mcoda_com_rpc_event:PushEvent("coda_level_widget_refresh",num)                
            end)
        end)
    end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    inst:DoTaskInTime(0,function()
        if ThePlayer and  inst ~= ThePlayer then
            return
        end
        if inst.HUD == nil then
            return
        end
        ---------------------------------------------------------------------------------------------
        ---
            CreateHud(inst,inst.HUD)
        ---------------------------------------------------------------------------------------------        
    end)

    if TheWorld.ismastersim then
        Level_Widget_Hud_Refresh_Event_Setup(inst)
    end
end