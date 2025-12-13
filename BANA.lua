Tabs.Main:AddSection("Generals Quests / Items")
local MobKilled = Tabs.Main:AddParagraph({
    Title = "Cake Princes :",
    Content = ""
})
spawn(function()
  while wait(.2) do
    pcall(function()
  	  local Killed = string.match(replicated.Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"%d+")
      if Killed then
        MobKilled:SetDesc(" Killed : " ..(500 - Killed))
      end
    end)
  end
end)
local CheckingBone = Tabs.Main:AddParagraph({
    Title = " Bones :",
    Content = ""
})
spawn(function()
  while wait(.2) do
    pcall(function()
      CheckingBone:SetDesc(" Bones : " ..GetM("Bones"))          
    end)
  end
end)
local Q = Tabs.Main:AddToggle("Q", {Title = "Auto Cake Prince", Description = "", Default = false})
Q:OnChanged(function(Value)
  _G.Auto_Cake_Prince = Value
end)
spawn(function()
  while wait() do
    if _G.Auto_Cake_Prince then
      pcall(function()
        local player = game.Players.LocalPlayer
        local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        local questUI = player.PlayerGui.Main.Quest
        local enemies = workspace.Enemies
        local bigMirror = workspace.Map.CakeLoaf.BigMirror
        if not root then return end
        if not bigMirror:FindFirstChild("Other") then
          _tp(CFrame.new(-2077, 252, -12373))
        end        
        if bigMirror.Other.Transparency == 0 or enemies:FindFirstChild("Cake Prince") then
          local v = GetConnectionEnemies("Cake Prince")
          if v then
            repeat wait() Attack.Kill2(v, _G.Auto_Cake_Prince)until not _G.Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0
          else
            if bigMirror.Other.Transparency == 0 and (CFrame.new(-1990.67, 4533, -14973.67).Position - root.Position).Magnitude >= 2000 then
              _tp(CFrame.new(-2151.82, 149.32, -12404.91))
            end
          end
        else
          local CakePrince = {"Cookie Crafter","Cake Guard","Baking Staff","Head Baker"}
          local v = GetConnectionEnemies(CakePrince)
          if v then
            if _G.AcceptQuestC and not questUI.Visible then
              local questPos = CFrame.new(-1927.92, 37.8, -12842.54)
              _tp(questPos)
              while (questPos.Position - root.Position).Magnitude > 50 do
                wait(0.2)
              end
              local randomQuest = math.random(1, 4)
              local questData = {
                [1] = {"StartQuest", "CakeQuest2", 2},
                [2] = {"StartQuest", "CakeQuest2", 1},
                [3] = {"StartQuest", "CakeQuest1", 1},
                [4] = {"StartQuest", "CakeQuest1", 2}
              }                    
              local success, response = pcall(function()
                return game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(questData[randomQuest]))
              end)
            end
            repeat wait() Attack.Kill(v, _G.Auto_Cake_Prince) until not _G.Auto_Cake_Prince or v.Humanoid.Health <= 0 or bigMirror.Other.Transparency == 0 or (_G.AcceptQuestC and not questUI.Visible)                
          else
            _tp(CFrame.new(-2077, 252, -12373))
          end
        end
      end)
    end
  end
end)
local Q = Tabs.Main:AddToggle("Q", {Title = "Auto Bones", Description = "", Default = false})
Q:OnChanged(function(Value)
  _G.AutoFarm_Bone = Value
end)
spawn(function()
  while wait(Sec) do 
    if _G.AutoFarm_Bone then
      pcall(function()        
        local player = game.Players.LocalPlayer
        local root = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        local questUI = player.PlayerGui.Main.Quest
        local BonesTable = {"Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy"}
        if not root then return end
        local bone = GetConnectionEnemies(BonesTable)
          if bone then
	        if _G.AcceptQuestC and not questUI.Visible then
              local questPos = CFrame.new(-9516.99316,172.017181,6078.46533,0,0,-1,0,1,0,1,0,0)
              _tp(questPos)
              while (questPos.Position - root.Position).Magnitude > 50 do
                wait(0.2)
              end
              local randomQuest = math.random(1, 4)
              local questData = {
                [1] = {"StartQuest", "HauntedQuest2", 2},
                [2] = {"StartQuest", "HauntedQuest2", 1},
                [3] = {"StartQuest", "HauntedQuest1", 1},
                [4] = {"StartQuest", "HauntedQuest1", 2}
              }                    
              local success, response = pcall(function()
                return game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(questData[randomQuest]))
              end)
            end
		    repeat task.wait() Attack.Kill(bone, _G.AutoFarm_Bone) until not _G.AutoFarm_Bone or bone.Humanoid.Health <= 0 or not bone.Parent or (_G.AcceptQuestC and not questUI.Visible)
          else
            _tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)) 	      
        end
      end)
    end
  end
end)
local Q = Tabs.Main:AddToggle("Q", {Title = "Accept Quests", Description = "", Default = false})
Q:OnChanged(function(Value)
  _G.AcceptQuestC = Value
end)          
local Q = Tabs.Main:AddToggle("Q", {Title = "Auto Farm Mirror", Description = "", Default = false})
Q:OnChanged(function(Value)
  _G.AutoMiror = Value
end)
spawn(function()
  while wait(Sec) do
    if _G.AutoMiror then
      pcall(function()
        local v = GetConnectionEnemies("Dough King")
        if v then
          repeat wait() Attack.Kill(v,_G.AutoMiror) until not _G.AutoMiror or not v.Parent or v.Humanoid.Health <= 0
        else
          _tp(CFrame.new(-1943.676513671875, 251.5095672607422, -12337.880859375)) 
        end
      end)
    end
  end
end)
local Q = Tabs.Main:AddToggle("Q", {Title = "Auto Soul Reaper [Fully]", Description = "", Default = false})
Q:OnChanged(function(Value)
  _G.AutoHytHallow = Value
end)
spawn(function()
  while wait(Sec) do
    if _G.AutoHytHallow then
      pcall(function()
        local v = GetConnectionEnemies("Soul Reaper")
	    if v then
          repeat task.wait() Attack.Kill(v,_G.AutoHytHallow) until v.Humanoid.Health <= 0 or _G.AutoHytHallow == false
        else
          if not GetBP("Hallow Essence") then
            repeat task.wait(.1)replicated.Remotes.CommF_:InvokeServer("Bones","Buy",1,1)until _G.AutoHytHallow == false or GetBP("Hallow Essence")
          else
            repeat wait(.1) _tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))until _G.AutoHytHallow == false or (plr.Character.HumanoidRootPart.CFrame == CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
		    EquipWeapon("Hallow Essence")
          end
        end
      end)
    end
  end
end)
local Q = Tabs.Main:AddToggle("Q", {Title = "Auto Random Bones", Description = "", Default = false})
Q:OnChanged(function(Value)
  _G.Auto_Random_Bone = Value
end)
spawn(function()
  while wait(Sec) do
    pcall(function()
      if _G.Auto_Random_Bone then    
  	    repeat task.wait() replicated.Remotes.CommF_:InvokeServer("Bones","Buy",1,1) until not _G.Auto_Random_Bone
      end
    end)
  end
end)
local Q = Tabs.Main:AddToggle("Q", {Title = "Auto Try Luck Gravestone", Description = "", Default = false})
Q:OnChanged(function(Value)
  _G.TryLucky = Value
end)
spawn(function()
  while wait(Sec) do
    if _G.TryLucky then
    local try_bones_luck = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
      if (plr.Character.HumanoidRootPart.CFrame ~= try_bones_luck) then
        _tp(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
	 elseif (plr.Character.HumanoidRootPart.CFrame == try_bones_luck) then
	   replicated.Remotes.CommF_:InvokeServer("gravestoneEvent",1)
      end
    end
  end
end)
local Q = Tabs.Main:AddToggle("Q", {Title = "Auto Pray Gravestone", Description = "", Default = false})
Q:OnChanged(function(Value)
  _G.Praying = Value
end)
spawn(function()
  while wait(Sec) do
    if _G.Praying then
    local try_bones_luck = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
      if (plr.Character.HumanoidRootPart.CFrame ~= try_bones_luck) then
	   _tp(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
      elseif (plr.Character.HumanoidRootPart.CFrame == try_bones_luck) then
	   replicated.Remotes.CommF_:InvokeServer("gravestoneEvent",2)
      end
    end
  end
end)

Tabs.Main:AddSection("Unlocked Dungeon")
local Q = Tabs.Main:AddToggle("Q", {Title = "Auto Unlock Dough dungeon", Description = "", Default = false})
Q:OnChanged(function(Value)
  _G.Doughv2 = Value
end)
spawn(function()
  while wait(Sec) do
    if _G.Doughv2 then
      pcall(function()
	    if not workspace.Map.CakeLoaf:FindFirstChild("RedDoor") then
	      if GetBP("Red Key") then
	        replicated.Remotes.CommF_:InvokeServer("CakeScientist","Check")
	        replicated.Remotes.CommF_:InvokeServer("RaidsNpc","Check")
		  end
	    elseif workspace.Map.CakeLoaf:FindFirstChild("RedDoor") then
          if GetBP("Red Key") then
		    repeat wait() _tp(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)) until not _G.Doughv2 or (plr.Character.HumanoidRootPart.CFrame - CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)).Magnitude <= 5
		    EquipWeapon("Red Key")
		  end
		  elseif GetConnectionEnemies("Dough King") then
		    local v = GetConnectionEnemies("Dough King")
            if v then
              repeat wait() Attack.Kill(v,_G.Doughv2) until not _G.Doughv2 or not v.Parent or v.Humanoid.Health <= 0
            else
              _tp(CFrame.new(-1943.676513671875, 251.5095672607422, -12337.880859375)) 
            end
	      end
		  if GetBP("Sweet Chalice") then
		    replicated.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
		    _G.AutoMiror = true
	      else
	        _G.AutoMiror = false
          end
	      if GetBP("God's Chalice") and GetM("Conjured Cocoa") >= 10 then
		    replicated.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
		  end
	      if not plr.Backpack:FindFirstChild("God's Chalice") or plr.Character:FindFirstChild("God's Chalice") then
	        _G.FarmEliteHunt = true
		  else
		    _G.FarmEliteHunt = false
		  end
	      if GetM("Conjured Cocoa") <= 10 then	        
		  local cocoa3 = {"Cocoa Warrior","Chocolate Bar Battler"}
		  local v = GetConnectionEnemies(cocoa3)
            if v then
            repeat wait() Attack.Kill(v,_G.Doughv2) until _G.Doughv2 == false or not v.Parent or v.Humanoid.Health <= 0
          else
            _tp(CFrame.new(402.7189025878906, 81.06050109863281, -12259.54296875))
          end	      
        end
      end)
    end
  end
