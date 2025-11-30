local b="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" function _D(d)local t={}local n=0;for c in d:gmatch(".")do if c~="=" then local i=b:find(c)-1;n=n*64+i;else break end if #t%4==3 then local a=math.floor(n/65536)%256 local b=math.floor(n/256)%256 local c=n%256 t[#t+1]=string.char(a,b,c) end end return table.concat(t) end;-- Serviços
phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
phUThJKRWbVAQl RqUFftQvfaEeJR = XggXraBDqgnxkm.sFNhEnqNuaqEaG
phUThJKRWbVAQl bvOgQGqKflcGvY = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk="))

-- Criar GUI principal dos cards
phUThJKRWbVAQl IClSTZcAegNXNX = Instance.new(_D("U2NyZWVuR3Vp"))
IClSTZcAegNXNX.Parent = RqUFftQvfaEeJR:WaitForChild(_D("WFVCdk5Qb2tMQ0d5b0Y="))
IClSTZcAegNXNX.ResetOnSpawn = false


--------------------------------------------------------------------
-- FUNÇÃO PARA CRIAR UM CARD DE BOAS-VINDAS
--------------------------------------------------------------------
phUThJKRWbVAQl SvQdlbfnjcMYYN CreateWelcomeCard(mainText, subText, imageId)
 phUThJKRWbVAQl hqiHpaXuFasOKd = Instance.new(_D("RnJhbWU="))
 hqiHpaXuFasOKd.Size = UDim2.new(0, 340, 0, 100)
 hqiHpaXuFasOKd.Position = UDim2.new(0.5, -170, 0, -150)
 hqiHpaXuFasOKd.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
 hqiHpaXuFasOKd.BackgroundTransparency = 0.35
 hqiHpaXuFasOKd.BorderSizePixel = 0
 hqiHpaXuFasOKd.Parent = IClSTZcAegNXNX

 phUThJKRWbVAQl RtrGrTvGlfSlOJ = Instance.new(_D("aEdNWWlmdk5zUERwSWk="))
 RtrGrTvGlfSlOJ.CornerRadius = UDim.new(0, 20)
 RtrGrTvGlfSlOJ.Parent = hqiHpaXuFasOKd

 -- Imagem
 phUThJKRWbVAQl ElivOJFJfBFmao = Instance.new(_D("SW1hZ2VMYWJlbA=="))
 ElivOJFJfBFmao.Parent = hqiHpaXuFasOKd
 ElivOJFJfBFmao.Size = UDim2.new(0, 70, 0, 70)
 ElivOJFJfBFmao.Position = UDim2.new(0.5, -35, 0, -35)
 ElivOJFJfBFmao.BackgroundTransparency = 1
 ElivOJFJfBFmao.Image = imageId

 phUThJKRWbVAQl zqLmeTFtcAHtjB = Instance.new(_D("aEdNWWlmdk5zUERwSWk="))
 zqLmeTFtcAHtjB.CornerRadius = UDim.new(1, 0)
 zqLmeTFtcAHtjB.Parent = ElivOJFJfBFmao

 -- Título
 phUThJKRWbVAQl AFotbYvafQTmWI = Instance.new(_D("ZXpnd015SGtTdWtJc2w="))
 AFotbYvafQTmWI.Parent = hqiHpaXuFasOKd
 AFotbYvafQTmWI.Size = UDim2.new(1, 0, 0, 40)
 AFotbYvafQTmWI.Position = UDim2.new(0, 0, 0, 35)
 AFotbYvafQTmWI.BackgroundTransparency = 1
 AFotbYvafQTmWI.Text = mainText
 AFotbYvafQTmWI.TextColor3 = Color3.fromRGB(255, 255, 255)
 AFotbYvafQTmWI.TextScaled = true
 AFotbYvafQTmWI.Font = Enum.Font.GothamBold

 -- Subtítulo
 phUThJKRWbVAQl PWzhoYnLArTEnQ = Instance.new(_D("ZXpnd015SGtTdWtJc2w="))
 PWzhoYnLArTEnQ.Parent = hqiHpaXuFasOKd
 PWzhoYnLArTEnQ.Size = UDim2.new(1, 0, 0, 25)
 PWzhoYnLArTEnQ.Position = UDim2.new(0, 0, 0, 70)
 PWzhoYnLArTEnQ.BackgroundTransparency = 1
 PWzhoYnLArTEnQ.Text = subText
 PWzhoYnLArTEnQ.TextColor3 = Color3.fromRGB(220, 220, 220)
 PWzhoYnLArTEnQ.TextScaled = true
 PWzhoYnLArTEnQ.Font = Enum.Font.Gotham

 -- Animação de entrada
 bvOgQGqKflcGvY:Create(hqiHpaXuFasOKd, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
 Position = UDim2.new(0.5, -170, 0, 40)
 }):Play()

 -- Espera 3 segundos
 task.wait(3)

 -- Animação de saída
 phUThJKRWbVAQl fuWwzmOueYzADX = bvOgQGqKflcGvY:Create(hqiHpaXuFasOKd, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {
 BackgroundTransparency = 1,
 Position = UDim2.new(0.5, -170, 0, -150)
 })
 fuWwzmOueYzADX:Play()

 fuWwzmOueYzADX.Completed:Connect(SvQdlbfnjcMYYN()
 hqiHpaXuFasOKd:Destroy()
 end)

 task.wait(0.8)
end


--------------------------------------------------------------------
-- CARD 1 — Welcome to Slayer Hub
--------------------------------------------------------------------
CreateWelcomeCard(
 _D("V2VsY29tZSB0byBTbGF5ZXIgSHVi"),
 _D("TG9hZGluZyBJbnRlcmZhY2UuLi4="),
 _D("cmJ4YXNzZXRpZDovLzg3MDEyMDExMjIyMjg0")
)

--------------------------------------------------------------------
-- CARD 2 — Slayer Hub
--------------------------------------------------------------------
CreateWelcomeCard(
 _D("U2xheWVyIEh1Yg=="),
 _D("RXZlcnlvbmUgR29lcyB0byBEaXNjb3JkIHRv"),
 _D("cmJ4YXNzZXRpZDovLzg3MDEyMDExMjIyMjg0")
)


-- ===== Configurações =====
-- ========= CONFIGURAÇÃO =========
phUThJKRWbVAQl kIuHiBQrVPMwuG = _D("aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTM2MTcyMTM5MzExNjYxNDc5OC9NX1ViTzl1eGFNdDg3NGFNbE9BaHI0RTRfeUY2VDhHTnpudVFHZ1pTcHZmNUpHTkxBWlFRNDR5RXNhQlA2cGtmdUhnTg==")

phUThJKRWbVAQl pnuwrbCcjHdtJG = game:GetService(_D("cG51d3JiQ2NqSGR0Skc="))

-- ========= LISTA DE FRUTAS =========
phUThJKRWbVAQl wLkjpISxWoFTEX = {
 -- Lendárias
 _D("UXVha2Ugd2J2a21lVkdIVG1EaXE="),_D("QnVkZGhhIHdidmttZVZHSFRtRGlx"),_D("TG92ZSB3YnZrbWVWR0hUbURpcQ=="),_D("U3BpZGVyIHdidmttZVZHSFRtRGlx"),
 _D("U291bmQgd2J2a21lVkdIVG1EaXE="),_D("UGhvZW5peCB3YnZrbWVWR0hUbURpcQ=="),_D("UG9ydGFsIHdidmttZVZHSFRtRGlx"),_D("UnVtYmxlIHdidmttZVZHSFRtRGlx"),
 _D("UGFpbiB3YnZrbWVWR0hUbURpcQ=="),_D("QmxpenphcmQgd2J2a21lVkdIVG1EaXE="),_D("Q3JlYXRpb24gd2J2a21lVkdIVG1EaXE="),

 -- Míticas
 _D("R3Jhdml0eSB3YnZrbWVWR0hUbURpcQ=="),_D("TWFtbW90aCB3YnZrbWVWR0hUbURpcQ=="),_D("RG91Z2ggd2J2a21lVkdIVG1EaXE="),_D("U2hhZG93IHdidmttZVZHSFRtRGlx"),
 _D("VmVub20gd2J2a21lVkdIVG1EaXE="),_D("Q29udHJvbCB3YnZrbWVWR0hUbURpcQ=="),_D("R2FzIHdidmttZVZHSFRtRGlx"),_D("U3Bpcml0IHdidmttZVZHSFRtRGlx"),
 _D("VGlnZXIgd2J2a21lVkdIVG1EaXE="),_D("WWV0aSB3YnZrbWVWR0hUbURpcQ=="),_D("YmxGRnF2dGtBb01KZEkgd2J2a21lVkdIVG1EaXE="),_D("RHJhZ29uIEVhc3Qgd2J2a21lVkdIVG1EaXE="),
 _D("RHJhZ29uIFdlc3Qgd2J2a21lVkdIVG1EaXE=")
}

-- ========= SEA DETECTOR =========
phUThJKRWbVAQl CldCUQlgELuTwE = (SvQdlbfnjcMYYN()
 phUThJKRWbVAQl ExblqACMmTezVh = game.PlaceId
 if ExblqACMmTezVh == 2753915549 then return 1 end
 if ExblqACMmTezVh == 4442272183 then return 2 end
 if ExblqACMmTezVh == 7449423635 then return 3 end
 return _D("Pw==")
end)()

-- ========= TABELA PARA EVITAR SPAM =========
phUThJKRWbVAQl hYAYphprUjeEDI = {}

-- ========= CHECAR SE É FRUTA PERMITIDA =========
phUThJKRWbVAQl SvQdlbfnjcMYYN IsAllowedFruit(KgRaxVphTHecgJ)
 for _,v in ipairs(wLkjpISxWoFTEX) do
 if v == KgRaxVphTHecgJ then 
 return true 
 end
 end
 return false
end

-- ========= ENVIAR kIuHiBQrVPMwuG =========
phUThJKRWbVAQl SvQdlbfnjcMYYN SendWebhook(syiUDMDseteYAj)
 phUThJKRWbVAQl bjgTKcQdJbUJFx = _D("Z2FtZTpHZXRTZXJ2aWNlKFw=")TeleportService\_D("KTpUZWxlcG9ydFRvUGxhY2VJbnN0YW5jZShnYW1lLlBsYWNlSWQsXA==")_D("Li5nYW1lLkpvYklkLi4=")\_D("LGdhbWUuWGdnWHJhQkRxZ254a20uc0ZOaEVucU51YXFFYUcp")

 phUThJKRWbVAQl bAPNsTNoWsRtuV = {
 embeds = {{
 title = _D("8J+NhyAqKkZydXRhIFJhcmEgU3Bhd25vdSEqKg=="),
 color = 16711680,
 fields = {
 { KgRaxVphTHecgJ = _D("8J+TmyBOb21l"), value = syiUDMDseteYAj, inline = true },
 { KgRaxVphTHecgJ = _D("8J+MiiBDbGRDVVFsZ0VMdVR3RQ=="), value = tostring(CldCUQlgELuTwE), inline = true },
 { KgRaxVphTHecgJ = _D("8J+GlCBKb2IgU0tkdk90UHJKVnFYcEk="), value = "`_D("Li5nYW1lLkpvYklkLi4=")`", inline = false },
 { KgRaxVphTHecgJ = _D("8J+TjCBTY3JpcHQgVGVsZXBvcnRl"), value = _D("YGBgbHVhXG4=")..bjgTKcQdJbUJFx.._D("YGBg"), inline = false }
 },
 }}
 }

 request({
 Url = kIuHiBQrVPMwuG,
 Method = _D("UE9TVA=="),
 Headers = { [_D("Q29udGVudC1UeXBl")] = _D("YXBwbGljYXRpb24vanNvbg==") },
 Body = pnuwrbCcjHdtJG:JSONEncode(bAPNsTNoWsRtuV)
 })
end

-- ========= DETECTOR =========
phUThJKRWbVAQl SvQdlbfnjcMYYN FruitDetector()
 while task.wait(1) do
 for _,v in pairs(wExlmmqTxYIeST:GetChildren()) do
 if v:IsA(_D("VG9vbA==")) and v.Name:find(_D("d2J2a21lVkdIVG1EaXE=")) then
 if IsAllowedFruit(v.Name) and not hYAYphprUjeEDI[v] then
 hYAYphprUjeEDI[v] = true
 print(_D("RnJ1dGEgZW5jb250cmFkYTo="), v.Name)
 SendWebhook(v.Name)
 end
 end
 end
 end
end

task.spawn(FruitDetector)

------mirage---
---------------------------------------------------------
-- 🔥 MIRAGE kIuHiBQrVPMwuG FINAL
---------------------------------------------------------

phUThJKRWbVAQl wXWtmWcLJFgIad = _D("aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTM2MTcyMTQwMzM4NDAwODkzNS9UYngxQmM4T1IzRk5FRHhEUVQ4bHA2MTQ3Wnp0OVkzVExhMHhxNGdMVzZqMm0wQjIyRlUyU3kxbTVUcjFRcU1Sa09jVA==")

SvQdlbfnjcMYYN SendMirageReal()
 phUThJKRWbVAQl DLiGoyFrdpavMI = #game.XggXraBDqgnxkm:GetPlayers().._D("Lw==")..tostring(game.XggXraBDqgnxkm.MaxPlayers)
 phUThJKRWbVAQl bjgTKcQdJbUJFx = 'game:GetService(_D("VGVsZXBvcnRTZXJ2aWNl")):TeleportToPlaceInstance(game.PlaceId,_D("Jy4uZ2FtZS5Kb2JJZC4uJw=="),game.XggXraBDqgnxkm.sFNhEnqNuaqEaG)'

 phUThJKRWbVAQl MEISVYwQrTxkcR = {
 [_D("ZW1iZWRz")] = {{

 [_D("dGl0bGU=")] = _D("8J+PnSBNSVJBR0U="),
 [_D("ZGVzY3JpcHRpb24=")] = _D("QSBpbGhhIE1pcmFnZSBmb2kgZGV0ZWN0YWRhIG5vIHNlcnZpZG9yIQ=="),
 [_D("Y29sb3I=")] = 255,

 [_D("ZmllbGRz")] = {
 { KgRaxVphTHecgJ = _D("8J+PnSBTcGF3biA6"), value = _D("8J+folxuYE1pcmFnZWA="), inline = false },
 { KgRaxVphTHecgJ = _D("8J+RpSBYZ2dYcmFCRHFnbnhrbQ=="), value = _D("YGBg")..DLiGoyFrdpavMI.._D("YGBg"), inline = true },
 { KgRaxVphTHecgJ = _D("8J+GlCBKb2IgU0tkdk90UHJKVnFYcEk="), value = "`_D("Li5nYW1lLkpvYklkLi4=")`", inline = false },
 { KgRaxVphTHecgJ = _D("8J+TjCBTWkh5SmN5aldQRFRoSw=="), value = _D("YGBgbHVhXG4=")..bjgTKcQdJbUJFx.._D("YGBg"), inline = false },
 { KgRaxVphTHecgJ = _D("8J+UlyBEaXNjb3Jk"), value = _D("W0NsaXF1ZSBwYXJhIGVudHJhcl0oaHR0cHM6Ly9kaXNjb3JkLmJ2RFlNUndLbFBiVm5rL05KSjdCWWdXY2Qp"), inline = false },
 },

 [_D("Zm9vdGVy")] = {
 [_D("dGV4dA==")] = _D("U2xheWVyIEh1YiDigKIgZGlzY29yZC5idkRZTVJ3S2xQYlZuay9OSko3QllnV2Nk"),
 [_D("aWNvbl91cmw=")] = _D("aHR0cHM6Ly9tZWRpYS5kaXNjb3JkYXBwLkFHWWR1c2tJR3VBUlJCL2F0dGFjaG1lbnRzLzEzNTU1MTkzNDQ5NTU4ODc3MjcvMTQ0MDQ2NjA0OTUwOTM1OTgwOS8xNzYzNTA0MjQ1NDM3LmpwZw==")
 },

 [_D("dGltZXN0YW1w")] = DateTime.now():ToIsoDate()
 }}
 }

 phUThJKRWbVAQl nxYyqnjnyRzAvI = http_request or request or syn.request
 nxYyqnjnyRzAvI({
 Url = wXWtmWcLJFgIad,
 Method = _D("UE9TVA=="),
 Headers = {[_D("Q29udGVudC1UeXBl")] = _D("YXBwbGljYXRpb24vanNvbg==")},
 Body = game:GetService(_D("cG51d3JiQ2NqSGR0Skc=")):JSONEncode(MEISVYwQrTxkcR)
 })
end



task.spawn(SvQdlbfnjcMYYN()
 while task.wait(5) do
 
 if wExlmmqTxYIeST.Map:FindFirstChild(_D("SHByeG5DVkVXYm5qZng=")) then
 SendMirageReal()
 break
 end
 end
end)

--------Lua-----
---------------------------------------------------------
-- 🌕 FULL MOON kIuHiBQrVPMwuG (REAL)
-- 🔥 Formato igual ao MIRAGE que você pediu
---------------------------------------------------------

phUThJKRWbVAQl rdihauGRkRlplp = _D("aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTM2MTcyMTQwMDE2NzIzOTY5MC9OVGJfdFRpLXlTbEJjZW5Qd2pQYS1xY0k1SFRhMTJJcXhGV2loRExPQlF2SUdXdG05ZmRrc1k0S0FQVE5Kdnoxc2lYVQ==")

SvQdlbfnjcMYYN SendMoonWebhook()
 phUThJKRWbVAQl EhVelheZUOcgNv = CheckMoon() or _D("RGVzY29uaGVjaWRv")
 phUThJKRWbVAQl DLiGoyFrdpavMI = #game.XggXraBDqgnxkm:GetPlayers().._D("Lw==")..game.XggXraBDqgnxkm.MaxPlayers
 phUThJKRWbVAQl bjgTKcQdJbUJFx = 'game:GetService(_D("VGVsZXBvcnRTZXJ2aWNl")):TeleportToPlaceInstance(game.PlaceId,_D("Jy4uZ2FtZS5Kb2JJZC4uJw=="),game.XggXraBDqgnxkm.sFNhEnqNuaqEaG)'

 phUThJKRWbVAQl MEISVYwQrTxkcR = {
 embeds = {{
 [_D("dGl0bGU=")] = _D("8J+MlSBGVUxMIE1PT04gU1RBVFVT"),
 [_D("ZGVzY3JpcHRpb24=")] = _D("RXN0YWRvIGRhIGx1YSBkZXRlY3RhZG8gbm8gc2Vydmlkb3Iu"),
 [_D("Y29sb3I=")] = 255,

 [_D("ZmllbGRz")] = {
 { KgRaxVphTHecgJ = _D("8J+MlSBMdWEgOg=="), value = _D("8J+folxuYA==")..EhVelheZUOcgNv.._D("YA=="), inline = false }, -- bolinha em cima ✔
 { KgRaxVphTHecgJ = _D("8J+RpSBYZ2dYcmFCRHFnbnhrbQ=="), value = _D("YGBg")..DLiGoyFrdpavMI.._D("YGBg"), inline = true },
 { KgRaxVphTHecgJ = _D("8J+GlCBKb2IgU0tkdk90UHJKVnFYcEk="), value = "`_D("Li5nYW1lLkpvYklkLi4=")`", inline = false },
 { KgRaxVphTHecgJ = _D("8J+TjCBTWkh5SmN5aldQRFRoSw=="), value = _D("YGBgbHVhXG4=")..bjgTKcQdJbUJFx.._D("YGBg"), inline = false },
 { KgRaxVphTHecgJ = _D("8J+UlyBEaXNjb3Jk"), value = _D("W0NsaXF1ZSBwYXJhIGVudHJhcl0oaHR0cHM6Ly9kaXNjb3JkLmJ2RFlNUndLbFBiVm5rL05KSjdCWWdXY2Qp"), inline = false }
 },

 [_D("Zm9vdGVy")] = {
 [_D("dGV4dA==")] = _D("U2xheWVyIEh1YiDigKIgZGlzY29yZC5idkRZTVJ3S2xQYlZuay9OSko3QllnV2Nk"),
 [_D("aWNvbl91cmw=")] = _D("aHR0cHM6Ly9tZWRpYS5kaXNjb3JkYXBwLkFHWWR1c2tJR3VBUlJCL2F0dGFjaG1lbnRzLzEzNTU1MTkzNDQ5NTU4ODc3MjcvMTQ0MDQ2NjA0OTUwOTM1OTgwOS8xNzYzNTA0MjQ1NDM3LmpwZw==")
 },

 [_D("dGltZXN0YW1w")] = DateTime.now():ToIsoDate()
 }}
 }

 phUThJKRWbVAQl nxYyqnjnyRzAvI = http_request or request or syn.request
 nxYyqnjnyRzAvI({
 Url = rdihauGRkRlplp,
 Method = _D("UE9TVA=="),
 Headers = {[_D("Q29udGVudC1UeXBl")]=_D("YXBwbGljYXRpb24vanNvbg==")},
 Body = game:GetService(_D("cG51d3JiQ2NqSGR0Skc=")):JSONEncode(MEISVYwQrTxkcR)
 })
end

---------------------------------------------------------
-- 🔎 MONITORANDO A LUA EM LOOP (REAL)
---------------------------------------------------------

task.spawn(SvQdlbfnjcMYYN()
 while task.wait(10) do
 phUThJKRWbVAQl iYEyHQxBglexuM = CheckMoon()
 if iYEyHQxBglexuM == _D("RnVsbCBNb29u") or iYEyHQxBglexuM == _D("TmV4dCBOaWdodA==") then
 SendMoonWebhook()
 task.wait(60) -- anti-spam ✔
 end
 end
end)


--------------------------------------------------------------------
-- FLUENT UI
--------------------------------------------------------------------
phUThJKRWbVAQl KQyEiiaHJvvFUr = loadstring(game:HttpGet(_D("aHR0cHM6Ly9naXRodWIuY29tL2Rhd2lkLXNjcmlwdHMvS1F5RWlpYUhKdnZGVXIvcmVsZWFzZXMvbGF0ZXN0L2Rvd25sb2FkL21haW4ubHVh")))()

phUThJKRWbVAQl ppQRnwKLXqRIGw = KQyEiiaHJvvFUr:CreateWindow({
 AFotbYvafQTmWI = _D("U2xheWVyIEh1YnxCZXRh"),
 SubTitle = _D("YnkgRkpOLExvcmVuem8="),
 TabWidth = 160,
 Size = UDim2.fromOffset(580, 460),
 Acrylic = true,
 Theme = _D("QW1ldGh5c3Q="),
 MinimizeKey = Enum.KeyCode.LeftControl
})

phUThJKRWbVAQl HYAqOrVauuPwRd = {
 St = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("U3RhdHVz"), ElivOJFJfBFmao = _D("dXNlci1jb2c=") }),
 Main = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("TWFpbg=="), ElivOJFJfBFmao = _D("YXJtY2hhaXI=") }),
 PWzhoYnLArTEnQ = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("UFd6aG9ZbkxBclRFblEgRmFybQ=="), ElivOJFJfBFmao = _D("c3dvcmRz") }),
 Quest = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("UXVlc3QveGdxZ2J0V1RNeGZrTWo="), ElivOJFJfBFmao = _D("c2Nyb2xs") }),
 XggXraBDqgnxkm = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("WGdnWHJhQkRxZ254a20vRVNQ"), ElivOJFJfBFmao = _D("dXNlcg==") }),
 SZHyJcyjWPDThK = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEs="), ElivOJFJfBFmao = _D("d2FuZA==") }),
 CldCUQlgELuTwE = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("Q2xkQ1VRbGdFTHVUd0UgRXZlbnQ="), ElivOJFJfBFmao = _D("d2F2ZXM=") }),
 Other = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("WENRa0t3eGVVR0hpZ0U="), ElivOJFJfBFmao = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))) }),
 wbvkmeVGHTmDiq = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("d2J2a21lVkdIVG1EaXEvZVh5aHViZWVsd01CbEs="), ElivOJFJfBFmao = _D("Y2hlcnJ5") }),
 Race = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("UmFjZQ=="), ElivOJFJfBFmao = _D("Y2hldnJvbnMtcmlnaHQ=") }),
 Shop = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("U2hvcA=="), ElivOJFJfBFmao = _D("c2hvcHBpbmctY2FydA==") }),
 Misc = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("TWlzYw=="), ElivOJFJfBFmao = _D("bGlzdC1wbHVz") }),
 Settings = ppQRnwKLXqRIGw:AddTab({ AFotbYvafQTmWI = _D("U2V0dGluZw=="), ElivOJFJfBFmao = _D("c2V0dGluZ3M=") })
}

phUThJKRWbVAQl DIDKqcielyXJJu = KQyEiiaHJvvFUr.DIDKqcielyXJJu

if not game:IsLoaded() then
 game.Loaded:Wait()
end
phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
phUThJKRWbVAQl hSwdFvQbAsALWC = game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M="))
phUThJKRWbVAQl dnDiHgYPQNdTCp = game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A="))
phUThJKRWbVAQl pnuwrbCcjHdtJG = game:GetService(_D("cG51d3JiQ2NqSGR0Skc="))
phUThJKRWbVAQl RqUFftQvfaEeJR = XggXraBDqgnxkm.sFNhEnqNuaqEaG
phUThJKRWbVAQl oWoaZKuHbDCiRB = zqGxghDwQpmuUJ:WaitForChild(_D("b1dvYVpLdUhiRENpUkI="), 5)
phUThJKRWbVAQl LkpBvFUXWgqxLe = oWoaZKuHbDCiRB:WaitForChild(_D("VklkamtpVEd1SnRxQWU="), 5) 
phUThJKRWbVAQl XUBvNPokLCGyoF = RqUFftQvfaEeJR:WaitForChild(_D("WFVCdk5Qb2tMQ0d5b0Y="), 5)
phUThJKRWbVAQl xTImObLCSchdAq = XUBvNPokLCGyoF:WaitForChild(_D("TWFpbg=="), 5)
phUThJKRWbVAQl YrPVnHaYkzwIhn = 0
phUThJKRWbVAQl yaUZuNIOTgCRzj = 10
phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
if vwQmFqKggWtPsY - YrPVnHaYkzwIhn >= yaUZuNIOTgCRzj then
 YrPVnHaYkzwIhn = vwQmFqKggWtPsY
end
phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
phUThJKRWbVAQl diTTfoMEENGVPK = zqGxghDwQpmuUJ:FindFirstChild(_D("RWZmZWN0")) and zqGxghDwQpmuUJ.Effect:FindFirstChild(_D("Q29udGFpbmVy"))
if diTTfoMEENGVPK then
 phUThJKRWbVAQl JKKXyJkclXHdxT = diTTfoMEENGVPK:FindFirstChild(_D("SktLWHlKa2NsWEhkeFQ="))
 if JKKXyJkclXHdxT then
 phUThJKRWbVAQl RXzgrgTZNDtJxy, dNdVwXmfAugeai = pcall(require, JKKXyJkclXHdxT)
 if RXzgrgTZNDtJxy and type(dNdVwXmfAugeai) == _D("U3ZRZGxiZm5qY01ZWU4=") then
 hookfunction(dNdVwXmfAugeai, SvQdlbfnjcMYYN() end)
 end
 end
 phUThJKRWbVAQl KbJMJsYTZIAtNe = diTTfoMEENGVPK:FindFirstChild(_D("S2JKTUpzWVRaSUF0TmU="))
 if KbJMJsYTZIAtNe then
 phUThJKRWbVAQl RXzgrgTZNDtJxy, dNdVwXmfAugeai = pcall(require, KbJMJsYTZIAtNe)
 if RXzgrgTZNDtJxy and type(dNdVwXmfAugeai) == _D("U3ZRZGxiZm5qY01ZWU4=") then
 hookfunction(dNdVwXmfAugeai, SvQdlbfnjcMYYN() end)
 end
 end
end
phUThJKRWbVAQl gAhXEUSlybPJGb = zqGxghDwQpmuUJ:FindFirstChild(_D("Z0FoWEVVU2x5YlBKR2I="))
if gAhXEUSlybPJGb then
 phUThJKRWbVAQl RXzgrgTZNDtJxy, module = pcall(require, gAhXEUSlybPJGb)
 if RXzgrgTZNDtJxy and module and type(module.ChangeDisplayedNPC) == _D("U3ZRZGxiZm5qY01ZWU4=") then
 hookfunction(module.ChangeDisplayedNPC, SvQdlbfnjcMYYN() end)
 end
end
phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
phUThJKRWbVAQl QRZqsVihYEgMhV = zqGxghDwQpmuUJ:WaitForChild(_D("UVJacXNWaWhZRWdNaFY="), 5)
if QRZqsVihYEgMhV then
 phUThJKRWbVAQl olnXCzkmbFAtZP = QRZqsVihYEgMhV:FindFirstChild(_D("b2xuWEN6a21iRkF0WlA="))
 if olnXCzkmbFAtZP then
 require(olnXCzkmbFAtZP):Stop()
 end
end
phUThJKRWbVAQl zpGgOKqVcvDuYZ = game.PlaceId
phUThJKRWbVAQl AveDCxVQywQLig = {
 [2753915549] = true,
 [4442272183] = true,
 [7449423635] = true
}
if AveDCxVQywQLig[zpGgOKqVcvDuYZ] then
 if zpGgOKqVcvDuYZ == 2753915549 then
 iWbwCbFmPsUWAs = true
 elseif zpGgOKqVcvDuYZ == 4442272183 then
 World2 = true
 elseif zpGgOKqVcvDuYZ == 7449423635 then
 World3 = true
 end
else
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG:Kick(_D("VW5zdXBwb3J0ZWQgR2FtZQ=="))
end
repeat
 wait()
until game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw
SvQdlbfnjcMYYN CheckQuest() 
 PoDgFFjRabcuvq = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.Data.Level.Value
 if iWbwCbFmPsUWAs then
 if PoDgFFjRabcuvq >= 1 and PoDgFFjRabcuvq <= 9 then
 Mon = _D("QmFuZGl0")
 LevelQuest = 1
 NameQuest = _D("QmFuZGl0UXVlc3Qx")
 NameMon = _D("QmFuZGl0")
 CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
 CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
 elseif PoDgFFjRabcuvq >= 10 and PoDgFFjRabcuvq <= 14 then
 Mon = _D("TW9ua2V5")
 LevelQuest = 1
 NameQuest = _D("SnVuZ2xlUXVlc3Q=")
 NameMon = _D("TW9ua2V5")
 CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
 CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
 elseif PoDgFFjRabcuvq >= 15 and PoDgFFjRabcuvq <= 29 then
 Mon = _D("R29yaWxsYQ==")
 LevelQuest = 2
 NameQuest = _D("SnVuZ2xlUXVlc3Q=")
 NameMon = _D("R29yaWxsYQ==")
 CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
 CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
 elseif PoDgFFjRabcuvq >= 30 and PoDgFFjRabcuvq <= 39 then
 Mon = _D("UGlyYXRl")
 LevelQuest = 1
 NameQuest = _D("QnVnZ3lRdWVzdDE=")
 NameMon = _D("UGlyYXRl")
 CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
 CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
 elseif PoDgFFjRabcuvq >= 40 and PoDgFFjRabcuvq <= 59 then
 Mon = _D("QnJ1dGU=")
 LevelQuest = 2
 NameQuest = _D("QnVnZ3lRdWVzdDE=")
 NameMon = _D("QnJ1dGU=")
 CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
 CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
 elseif PoDgFFjRabcuvq >= 60 and PoDgFFjRabcuvq <= 74 then
 Mon = _D("RGVzZXJ0IEJhbmRpdA==")
 LevelQuest = 1
 NameQuest = _D("RGVzZXJ0UXVlc3Q=")
 NameMon = _D("RGVzZXJ0IEJhbmRpdA==")
 CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
 CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
 elseif PoDgFFjRabcuvq >= 75 and PoDgFFjRabcuvq <= 89 then
 Mon = _D("RGVzZXJ0IE9mZmljZXI=")
 LevelQuest = 2
 NameQuest = _D("RGVzZXJ0UXVlc3Q=")
 NameMon = _D("RGVzZXJ0IE9mZmljZXI=")
 CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
 CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
 elseif PoDgFFjRabcuvq >= 90 and PoDgFFjRabcuvq <= 99 then
 Mon = _D("U25vdyBCYW5kaXQ=")
 LevelQuest = 1
 NameQuest = _D("U25vd1F1ZXN0")
 NameMon = _D("U25vdyBCYW5kaXQ=")
 CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
 CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
 elseif PoDgFFjRabcuvq >= 100 and PoDgFFjRabcuvq <= 119 then
 Mon = _D("U25vd21hbg==")
 LevelQuest = 2
 NameQuest = _D("U25vd1F1ZXN0")
 NameMon = _D("U25vd21hbg==")
 CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
 CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
 elseif PoDgFFjRabcuvq >= 120 and PoDgFFjRabcuvq <= 149 then
 Mon = _D("Q2hpZWYgUGV0dHkgT2ZmaWNlcg==")
 LevelQuest = 1
 NameQuest = _D("TWFyaW5lUXVlc3Qy")
 NameMon = _D("Q2hpZWYgUGV0dHkgT2ZmaWNlcg==")
 CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
 CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
 elseif PoDgFFjRabcuvq >= 150 and PoDgFFjRabcuvq <= 174 then
 Mon = _D("U2t5IEJhbmRpdA==")
 LevelQuest = 1
 NameQuest = _D("U2t5UXVlc3Q=")
 NameMon = _D("U2t5IEJhbmRpdA==")
 CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
 CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
 elseif PoDgFFjRabcuvq >= 175 and PoDgFFjRabcuvq <= 189 then
 Mon = _D("RGFyayBNYXN0ZXI=")
 LevelQuest = 2
 NameQuest = _D("U2t5UXVlc3Q=")
 NameMon = _D("RGFyayBNYXN0ZXI=")
 CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
 CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
 elseif PoDgFFjRabcuvq >= 190 and PoDgFFjRabcuvq <= 209 then
 Mon = _D("UHJpc29uZXI=")
 LevelQuest = 1
 NameQuest = _D("UHJpc29uZXJRdWVzdA==")
 NameMon = _D("UHJpc29uZXI=")
 CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
 CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
 elseif PoDgFFjRabcuvq >= 210 and PoDgFFjRabcuvq <= 249 then
 Mon = _D("RGFuZ2Vyb3VzIFByaXNvbmVy")
 LevelQuest = 2
 NameQuest = _D("UHJpc29uZXJRdWVzdA==")
 NameMon = _D("RGFuZ2Vyb3VzIFByaXNvbmVy")
 CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
 CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
 elseif PoDgFFjRabcuvq >= 250 and PoDgFFjRabcuvq <= 274 then
 Mon = _D("VG9nYSBXYXJyaW9y")
 LevelQuest = 1
 NameQuest = _D("Q29sb3NzZXVtUXVlc3Q=")
 NameMon = _D("VG9nYSBXYXJyaW9y")
 CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
 CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
 elseif PoDgFFjRabcuvq >= 275 and PoDgFFjRabcuvq <= 299 then
 Mon = _D("R2xhZGlhdG9y")
 LevelQuest = 2
 NameQuest = _D("Q29sb3NzZXVtUXVlc3Q=")
 NameMon = _D("R2xhZGlhdG9y")
 CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
 CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
 elseif PoDgFFjRabcuvq >= 300 and PoDgFFjRabcuvq <= 324 then
 Mon = _D("TWlsaXRhcnkgU29sZGllcg==")
 LevelQuest = 1
 NameQuest = _D("TWFnbWFRdWVzdA==")
 NameMon = _D("TWlsaXRhcnkgU29sZGllcg==")
 CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
 CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
 elseif PoDgFFjRabcuvq >= 325 and PoDgFFjRabcuvq <= 374 then
 Mon = _D("TWlsaXRhcnkgU3B5")
 LevelQuest = 2
 NameQuest = _D("TWFnbWFRdWVzdA==")
 NameMon = _D("TWlsaXRhcnkgU3B5")
 CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
 CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
 elseif PoDgFFjRabcuvq >= 375 and PoDgFFjRabcuvq <= 399 then
 Mon = _D("RmlzaG1hbiBXYXJyaW9y")
 LevelQuest = 1
 NameQuest = _D("RmlzaG1hblF1ZXN0")
 NameMon = _D("RmlzaG1hbiBXYXJyaW9y")
 CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
 CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
 if getgenv().AutoFarm and (CFrameQuest.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 10000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
 end
 elseif PoDgFFjRabcuvq >= 400 and PoDgFFjRabcuvq <= 449 then
 Mon = _D("RmlzaG1hbiBDb21tYW5kbw==")
 LevelQuest = 2
 NameQuest = _D("RmlzaG1hblF1ZXN0")
 NameMon = _D("RmlzaG1hbiBDb21tYW5kbw==")
 CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
 CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
 if getgenv().AutoFarm and (CFrameQuest.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 10000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
 end
 elseif PoDgFFjRabcuvq >= 450 and PoDgFFjRabcuvq <= 474 then
 Mon = _D("R29kJ3MgR3VhcmQ=")
 LevelQuest = 1
 NameQuest = _D("U2t5RXhwMVF1ZXN0")
 NameMon = _D("R29kJ3MgR3VhcmQ=")
 CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
 CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
 if getgenv().AutoFarm and (CFrameQuest.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 10000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(-4607.82275, 872.54248, -1667.55688))
 end
 elseif PoDgFFjRabcuvq >= 475 and PoDgFFjRabcuvq <= 524 then
 Mon = _D("U2hhbmRh")
 LevelQuest = 2
 NameQuest = _D("U2t5RXhwMVF1ZXN0")
 NameMon = _D("U2hhbmRh")
 CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
 CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
 if getgenv().AutoFarm and (CFrameQuest.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 10000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
 end
 elseif PoDgFFjRabcuvq >= 525 and PoDgFFjRabcuvq <= 549 then
 Mon = _D("Um95YWwgU3F1YWQ=")
 LevelQuest = 1
 NameQuest = _D("U2t5RXhwMlF1ZXN0")
 NameMon = _D("Um95YWwgU3F1YWQ=")
 CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
 CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
 elseif PoDgFFjRabcuvq >= 550 and PoDgFFjRabcuvq <= 624 then
 Mon = _D("Um95YWwgU29sZGllcg==")
 LevelQuest = 2
 NameQuest = _D("U2t5RXhwMlF1ZXN0")
 NameMon = _D("Um95YWwgU29sZGllcg==")
 CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
 CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
 elseif PoDgFFjRabcuvq >= 625 and PoDgFFjRabcuvq <= 649 then
 Mon = _D("R2FsbGV5IFBpcmF0ZQ==")
 LevelQuest = 1
 NameQuest = _D("Rm91bnRhaW5RdWVzdA==")
 NameMon = _D("R2FsbGV5IFBpcmF0ZQ==")
 CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
 CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
 elseif PoDgFFjRabcuvq >= 650 then
 Mon = _D("R2FsbGV5IENhcHRhaW4=")
 LevelQuest = 2
 NameQuest = _D("Rm91bnRhaW5RdWVzdA==")
 NameMon = _D("R2FsbGV5IENhcHRhaW4=")
 CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
 CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
 end
 elseif World2 then
 if PoDgFFjRabcuvq >= 700 and PoDgFFjRabcuvq <= 724 then
 Mon = _D("UmFpZGVy")
 LevelQuest = 1
 NameQuest = _D("QXJlYTFRdWVzdA==")
 NameMon = _D("UmFpZGVy")
 CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
 CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
 elseif PoDgFFjRabcuvq >= 725 and PoDgFFjRabcuvq <= 774 then
 Mon = _D("TWVyY2VuYXJ5")
 LevelQuest = 2
 NameQuest = _D("QXJlYTFRdWVzdA==")
 NameMon = _D("TWVyY2VuYXJ5")
 CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
 CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
 elseif PoDgFFjRabcuvq >= 775 and PoDgFFjRabcuvq <= 799 then
 Mon = _D("V3hlTE5JdEFZc2F1V20gUGlyYXRl")
 LevelQuest = 1
 NameQuest = _D("QXJlYTJRdWVzdA==")
 NameMon = _D("V3hlTE5JdEFZc2F1V20gUGlyYXRl")
 CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
 CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
 elseif PoDgFFjRabcuvq >= 800 and PoDgFFjRabcuvq <= 874 then
 Mon = _D("RmFjdG9yeSBTdGFmZg==")
 NameQuest = _D("QXJlYTJRdWVzdA==")
 LevelQuest = 2
 NameMon = _D("RmFjdG9yeSBTdGFmZg==")
 CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
 CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
 elseif PoDgFFjRabcuvq >= 875 and PoDgFFjRabcuvq <= 899 then
 Mon = _D("TWFyaW5lIExpZXV0ZW5hbnQ=")
 LevelQuest = 1
 NameQuest = _D("TWFyaW5lUXVlc3Qz")
 NameMon = _D("TWFyaW5lIExpZXV0ZW5hbnQ=")
 CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
 CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
 elseif PoDgFFjRabcuvq >= 900 and PoDgFFjRabcuvq <= 949 then
 Mon = _D("TWFyaW5lIENhcHRhaW4=")
 LevelQuest = 2
 NameQuest = _D("TWFyaW5lUXVlc3Qz")
 NameMon = _D("TWFyaW5lIENhcHRhaW4=")
 CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
 CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
 elseif PoDgFFjRabcuvq >= 950 and PoDgFFjRabcuvq <= 974 then
 Mon = _D("Wm9tYmll")
 LevelQuest = 1
 NameQuest = _D("Wm9tYmllUXVlc3Q=")
 NameMon = _D("Wm9tYmll")
 CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
 CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
 elseif PoDgFFjRabcuvq >= 975 and PoDgFFjRabcuvq <= 999 then
 Mon = _D("VmFtcGlyZQ==")
 LevelQuest = 2
 NameQuest = _D("Wm9tYmllUXVlc3Q=")
 NameMon = _D("VmFtcGlyZQ==")
 CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
 CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
 elseif PoDgFFjRabcuvq >= 1000 and PoDgFFjRabcuvq <= 1049 then
 Mon = _D("U25vdyBUcm9vcGVy")
 LevelQuest = 1
 NameQuest = _D("U25vd01vdW50YWluUXVlc3Q=")
 NameMon = _D("U25vdyBUcm9vcGVy")
 CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
 CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
 elseif PoDgFFjRabcuvq >= 1050 and PoDgFFjRabcuvq <= 1099 then
 Mon = _D("V2ludGVyIFdhcnJpb3I=")
 LevelQuest = 2
 NameQuest = _D("U25vd01vdW50YWluUXVlc3Q=")
 NameMon = _D("V2ludGVyIFdhcnJpb3I=")
 CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
 CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
 elseif PoDgFFjRabcuvq >= 1100 and PoDgFFjRabcuvq <= 1124 then
 Mon = _D("TGFiIFN1Ym9yZGluYXRl")
 LevelQuest = 1
 NameQuest = _D("SWNlU2lkZVF1ZXN0")
 NameMon = _D("TGFiIFN1Ym9yZGluYXRl")
 CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
 CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
 elseif PoDgFFjRabcuvq >= 1125 and PoDgFFjRabcuvq <= 1174 then
 Mon = _D("SG9ybmVkIFdhcnJpb3I=")
 LevelQuest = 2
 NameQuest = _D("SWNlU2lkZVF1ZXN0")
 NameMon = _D("SG9ybmVkIFdhcnJpb3I=")
 CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
 CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
 elseif PoDgFFjRabcuvq >= 1175 and PoDgFFjRabcuvq <= 1199 then
 Mon = _D("TWFnbWEgTmluamE=")
 LevelQuest = 1
 NameQuest = _D("RmlyZVNpZGVRdWVzdA==")
 NameMon = _D("TWFnbWEgTmluamE=")
 CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
 CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
 elseif PoDgFFjRabcuvq >= 1200 and PoDgFFjRabcuvq <= 1249 then
 Mon = _D("TGF2YSBQaXJhdGU=")
 LevelQuest = 2
 NameQuest = _D("RmlyZVNpZGVRdWVzdA==")
 NameMon = _D("TGF2YSBQaXJhdGU=")
 CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
 CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
 elseif PoDgFFjRabcuvq >= 1250 and PoDgFFjRabcuvq <= 1274 then
 Mon = _D("U2hpcCBEZWNraGFuZA==")
 LevelQuest = 1
 NameQuest = _D("U2hpcFF1ZXN0MQ==")
 NameMon = _D("U2hpcCBEZWNraGFuZA==")
 CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016) 
 CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375) 
 if getgenv().AutoFarm and (CFrameQuest.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 10000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
 end
 elseif PoDgFFjRabcuvq >= 1275 and PoDgFFjRabcuvq <= 1299 then
 Mon = _D("U2hpcCBFbmdpbmVlcg==")
 LevelQuest = 2
 NameQuest = _D("U2hpcFF1ZXN0MQ==")
 NameMon = _D("U2hpcCBFbmdpbmVlcg==")
 CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016) 
 CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875) 
 if getgenv().AutoFarm and (CFrameQuest.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 10000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
 end 
 elseif PoDgFFjRabcuvq >= 1300 and PoDgFFjRabcuvq <= 1324 then
 Mon = _D("U2hpcCBTdGV3YXJk")
 LevelQuest = 1
 NameQuest = _D("U2hpcFF1ZXN0Mg==")
 NameMon = _D("U2hpcCBTdGV3YXJk")
 CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125) 
 CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625) 
 if getgenv().AutoFarm and (CFrameQuest.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 10000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
 end
 elseif PoDgFFjRabcuvq >= 1325 and PoDgFFjRabcuvq <= 1349 then
 Mon = _D("U2hpcCBPZmZpY2Vy")
 LevelQuest = 2
 NameQuest = _D("U2hpcFF1ZXN0Mg==")
 NameMon = _D("U2hpcCBPZmZpY2Vy")
 CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
 CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
 if getgenv().AutoFarm and (CFrameQuest.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 10000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
 end
 elseif PoDgFFjRabcuvq >= 1350 and PoDgFFjRabcuvq <= 1374 then
 Mon = _D("QXJjdGljIFdhcnJpb3I=")
 LevelQuest = 1
 NameQuest = _D("RnJvc3RRdWVzdA==")
 NameMon = _D("QXJjdGljIFdhcnJpb3I=")
 CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
 CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
 if getgenv().AutoFarm and (CFrameQuest.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 10000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
 end
 elseif PoDgFFjRabcuvq >= 1375 and PoDgFFjRabcuvq <= 1424 then
 Mon = _D("U25vdyBMdXJrZXI=")
 LevelQuest = 2
 NameQuest = _D("RnJvc3RRdWVzdA==")
 NameMon = _D("U25vdyBMdXJrZXI=")
 CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
 CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
 elseif PoDgFFjRabcuvq >= 1425 and PoDgFFjRabcuvq <= 1449 then
 Mon = _D("Q2xkQ1VRbGdFTHVUd0UgU29sZGllcg==")
 LevelQuest = 1
 NameQuest = _D("Rm9yZ290dGVuUXVlc3Q=")
 NameMon = _D("Q2xkQ1VRbGdFTHVUd0UgU29sZGllcg==")
 CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
 CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
 elseif PoDgFFjRabcuvq >= 1450 then
 Mon = _D("V2F0ZXIgRmlnaHRlcg==")
 LevelQuest = 2
 NameQuest = _D("Rm9yZ290dGVuUXVlc3Q=")
 NameMon = _D("V2F0ZXIgRmlnaHRlcg==")
 CFrameQuest = CFrame.new(-3054, 240, -10146)
 CFrameMon = CFrame.new(-3291, 252, -10501)
 end
 elseif World3 then
 if PoDgFFjRabcuvq >= 1500 and PoDgFFjRabcuvq <= 1524 then
 Mon = _D("UGlyYXRlIE1pbGxpb25haXJl")
 LevelQuest = 1
 NameQuest = _D("UGlyYXRlUG9ydFF1ZXN0")
 NameMon = _D("UGlyYXRlIE1pbGxpb25haXJl")
 CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
 CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
 elseif PoDgFFjRabcuvq >= 1525 and PoDgFFjRabcuvq <= 1574 then
 Mon = _D("UGlzdG9sIEJpbGxpb25haXJl")
 LevelQuest = 2
 NameQuest = _D("UGlyYXRlUG9ydFF1ZXN0")
 NameMon = _D("UGlzdG9sIEJpbGxpb25haXJl")
 CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
 CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
 elseif PoDgFFjRabcuvq >= 1575 and PoDgFFjRabcuvq <= 1599 then
 Mon = _D("RHJhZ29uIENyZXcgV2Fycmlvcg==")
 LevelQuest = 1
 NameQuest = _D("RHJhZ29uQ3Jld1F1ZXN0")
 NameMon = _D("RHJhZ29uIENyZXcgV2Fycmlvcg==")
 CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
 CFrameMon = CFrame.new(6920.71435546875, 56.15597152709961, -942.5044555664062)
 elseif PoDgFFjRabcuvq >= 1600 and PoDgFFjRabcuvq <= 1624 then 
 Mon = _D("RHJhZ29uIENyZXcgQXJjaGVy")
 NameQuest = _D("RHJhZ29uQ3Jld1F1ZXN0")
 LevelQuest = 2
 NameMon = _D("RHJhZ29uIENyZXcgQXJjaGVy")
 CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
 CFrameMon = CFrame.new(6817.91259765625, 484.804443359375, 513.4141235351562)
 elseif PoDgFFjRabcuvq >= 1625 and PoDgFFjRabcuvq <= 1649 then
 Mon = _D("SHlkcmEgRW5mb3JjZXI=")
 NameQuest = _D("VmVub21DcmV3UXVlc3Q=")
 LevelQuest = 1
 NameMon = _D("SHlkcmEgRW5mb3JjZXI=")
 CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
 CFrameMon = CFrame.new(4584.69287109375, 1002.6435546875, 705.7958984375)
 elseif PoDgFFjRabcuvq >= 1650 and PoDgFFjRabcuvq <= 1699 then 
 Mon = _D("VmVub21vdXMgQXNzYWlsYW50")
 NameQuest = _D("VmVub21DcmV3UXVlc3Q=")
 LevelQuest = 2
 NameMon = _D("VmVub21vdXMgQXNzYWlsYW50")
 CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
 CFrameMon = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938) 
 elseif PoDgFFjRabcuvq >= 1700 and PoDgFFjRabcuvq <= 1724 then
 Mon = _D("TWFyaW5lIENvbW1vZG9yZQ==")
 LevelQuest = 1
 NameQuest = _D("TWFyaW5lVHJlZUlzbGFuZA==")
 NameMon = _D("TWFyaW5lIENvbW1vZG9yZQ==")
 CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
 CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
 elseif PoDgFFjRabcuvq >= 1725 and PoDgFFjRabcuvq <= 1774 then
 Mon = _D("TWFyaW5lIFJlYXIgQWRtaXJhbA==")
 NameMon = _D("TWFyaW5lIFJlYXIgQWRtaXJhbA==")
 NameQuest = _D("TWFyaW5lVHJlZUlzbGFuZA==")
 LevelQuest = 2
 CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
 CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
 elseif PoDgFFjRabcuvq >= 1775 and PoDgFFjRabcuvq <= 1799 then
 Mon = _D("RmlzaG1hbiBSYWlkZXI=")
 LevelQuest = 1
 NameQuest = _D("RGVlcEZvcmVzdElzbGFuZDM=")
 NameMon = _D("RmlzaG1hbiBSYWlkZXI=")
 CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213) 
 CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
 elseif PoDgFFjRabcuvq >= 1800 and PoDgFFjRabcuvq <= 1824 then
 Mon = _D("RmlzaG1hbiBDYXB0YWlu")
 LevelQuest = 2
 NameQuest = _D("RGVlcEZvcmVzdElzbGFuZDM=")
 NameMon = _D("RmlzaG1hbiBDYXB0YWlu")
 CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213) 
 CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
 elseif PoDgFFjRabcuvq >= 1825 and PoDgFFjRabcuvq <= 1849 then
 Mon = _D("Rm9yZXN0IFBpcmF0ZQ==")
 LevelQuest = 1
 NameQuest = _D("RGVlcEZvcmVzdElzbGFuZA==")
 NameMon = _D("Rm9yZXN0IFBpcmF0ZQ==")
 CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
 CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
 elseif PoDgFFjRabcuvq >= 1850 and PoDgFFjRabcuvq <= 1899 then
 Mon = _D("TXl0aG9sb2dpY2FsIFBpcmF0ZQ==")
 LevelQuest = 2
 NameQuest = _D("RGVlcEZvcmVzdElzbGFuZA==")
 NameMon = _D("TXl0aG9sb2dpY2FsIFBpcmF0ZQ==")
 CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247) 
 CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
 elseif PoDgFFjRabcuvq >= 1900 and PoDgFFjRabcuvq <= 1924 then
 Mon = _D("SnVuZ2xlIFBpcmF0ZQ==")
 LevelQuest = 1
 NameQuest = _D("RGVlcEZvcmVzdElzbGFuZDI=")
 NameMon = _D("SnVuZ2xlIFBpcmF0ZQ==")
 CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
 CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
 elseif PoDgFFjRabcuvq >= 1925 and PoDgFFjRabcuvq <= 1974 then
 Mon = _D("TXVza2V0ZWVyIFBpcmF0ZQ==")
 LevelQuest = 2
 NameQuest = _D("RGVlcEZvcmVzdElzbGFuZDI=")
 NameMon = _D("TXVza2V0ZWVyIFBpcmF0ZQ==")
 CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
 CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
 elseif PoDgFFjRabcuvq >= 1975 and PoDgFFjRabcuvq <= 1999 then
 Mon = _D("UmVib3JuIFNrZWxldG9u")
 LevelQuest = 1
 NameQuest = _D("SGF1bnRlZFF1ZXN0MQ==")
 NameMon = _D("UmVib3JuIFNrZWxldG9u")
 CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
 CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
 elseif PoDgFFjRabcuvq >= 2000 and PoDgFFjRabcuvq <= 2024 then
 Mon = _D("TGl2aW5nIFpvbWJpZQ==")
 LevelQuest = 2
 NameQuest = _D("SGF1bnRlZFF1ZXN0MQ==")
 NameMon = _D("TGl2aW5nIFpvbWJpZQ==")
 CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
 CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
 elseif PoDgFFjRabcuvq >= 2025 and PoDgFFjRabcuvq <= 2049 then
 Mon = _D("RGVtb25pYyBTb3Vs")
 LevelQuest = 1
 NameQuest = _D("SGF1bnRlZFF1ZXN0Mg==")
 NameMon = _D("RGVtb25pYyBTb3Vs")
 CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
 CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
 elseif PoDgFFjRabcuvq >= 2050 and PoDgFFjRabcuvq <= 2074 then
 Mon = _D("UG9zZXNzZWQgTXVtbXk=")
 LevelQuest = 2
 NameQuest = _D("SGF1bnRlZFF1ZXN0Mg==")
 NameMon = _D("UG9zZXNzZWQgTXVtbXk=")
 CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
 CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
 elseif PoDgFFjRabcuvq >= 2075 and PoDgFFjRabcuvq <= 2099 then
 Mon = _D("UGVhbnV0IFNjb3V0")
 LevelQuest = 1
 NameQuest = _D("TnV0c0lzbGFuZFF1ZXN0")
 NameMon = _D("UGVhbnV0IFNjb3V0")
 CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
 CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
 elseif PoDgFFjRabcuvq >= 2100 and PoDgFFjRabcuvq <= 2124 then
 Mon = _D("UGVhbnV0IFByZXNpZGVudA==")
 LevelQuest = 2
 NameQuest = _D("TnV0c0lzbGFuZFF1ZXN0")
 NameMon = _D("UGVhbnV0IFByZXNpZGVudA==")
 CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
 CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
 elseif PoDgFFjRabcuvq >= 2125 and PoDgFFjRabcuvq <= 2149 then
 Mon = _D("SWNlIENyZWFtIENoZWY=")
 LevelQuest = 1
 NameQuest = _D("SWNlQ3JlYW1Jc2xhbmRRdWVzdA==")
 NameMon = _D("SWNlIENyZWFtIENoZWY=")
 CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
 CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
 elseif PoDgFFjRabcuvq >= 2150 and PoDgFFjRabcuvq <= 2199 then
 Mon = _D("SWNlIENyZWFtIENvbW1hbmRlcg==")
 LevelQuest = 2
 NameQuest = _D("SWNlQ3JlYW1Jc2xhbmRRdWVzdA==")
 NameMon = _D("SWNlIENyZWFtIENvbW1hbmRlcg==")
 CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
 CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
 elseif PoDgFFjRabcuvq >= 2200 and PoDgFFjRabcuvq <= 2224 then
 Mon = _D("Q29va2llIENyYWZ0ZXI=")
 LevelQuest = 1
 NameQuest = _D("Q2FrZVF1ZXN0MQ==")
 NameMon = _D("Q29va2llIENyYWZ0ZXI=")
 CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
 CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
 elseif PoDgFFjRabcuvq >= 2225 and PoDgFFjRabcuvq <= 2249 then
 Mon = _D("Q2FrZSBHdWFyZA==")
 LevelQuest = 2
 NameQuest = _D("Q2FrZVF1ZXN0MQ==")
 NameMon = _D("Q2FrZSBHdWFyZA==")
 CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
 CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
 elseif PoDgFFjRabcuvq >= 2250 and PoDgFFjRabcuvq <= 2274 then
 Mon = _D("QmFraW5nIFN0YWZm")
 LevelQuest = 1
 NameQuest = _D("Q2FrZVF1ZXN0Mg==")
 NameMon = _D("QmFraW5nIFN0YWZm")
 CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
 CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
 elseif PoDgFFjRabcuvq >= 2275 and PoDgFFjRabcuvq <= 2299 then
 Mon = _D("SGVhZCBCYWtlcg==")
 LevelQuest = 2
 NameQuest = _D("Q2FrZVF1ZXN0Mg==")
 NameMon = _D("SGVhZCBCYWtlcg==")
 CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
 CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
 elseif PoDgFFjRabcuvq >= 2300 and PoDgFFjRabcuvq <= 2324 then
 Mon = _D("Q29jb2EgV2Fycmlvcg==")
 LevelQuest = 1
 NameQuest = _D("Q2hvY1F1ZXN0MQ==")
 NameMon = _D("Q29jb2EgV2Fycmlvcg==")
 CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
 CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
 elseif PoDgFFjRabcuvq >= 2325 and PoDgFFjRabcuvq <= 2349 then
 Mon = _D("Q2hvY29sYXRlIEJhciBCYXR0bGVy")
 LevelQuest = 2
 NameQuest = _D("Q2hvY1F1ZXN0MQ==")
 NameMon = _D("Q2hvY29sYXRlIEJhciBCYXR0bGVy")
 CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
 CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
 elseif PoDgFFjRabcuvq >= 2350 and PoDgFFjRabcuvq <= 2374 then
 Mon = _D("U3dlZXQgVGhpZWY=")
 LevelQuest = 1
 NameQuest = _D("Q2hvY1F1ZXN0Mg==")
 NameMon = _D("U3dlZXQgVGhpZWY=")
 CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
 CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
 elseif PoDgFFjRabcuvq >= 2375 and PoDgFFjRabcuvq <= 2399 then
 Mon = _D("Q2FuZHkgUmViZWw=")
 LevelQuest = 2
 NameQuest = _D("Q2hvY1F1ZXN0Mg==")
 NameMon = _D("Q2FuZHkgUmViZWw=")
 CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
 CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
 elseif PoDgFFjRabcuvq >= 2400 and PoDgFFjRabcuvq <= 2424 then
 Mon = _D("Q2FuZHkgUGlyYXRl")
 LevelQuest = 1
 NameQuest = _D("Q2FuZHlRdWVzdDE=")
 NameMon = _D("Q2FuZHkgUGlyYXRl")
 CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
 CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
 elseif PoDgFFjRabcuvq >= 2425 and PoDgFFjRabcuvq <= 2449 then
 Mon = _D("U25vdyBEZW1vbg==")
 LevelQuest = 2
 NameQuest = _D("Q2FuZHlRdWVzdDE=")
 NameMon = _D("U25vdyBEZW1vbg==")
 CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
 CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375) 
 elseif PoDgFFjRabcuvq >= 2450 and PoDgFFjRabcuvq <= 2474 then
 Mon = _D("SXNsZSBPdXRsYXc=")
 LevelQuest = 1
 NameQuest = _D("VGlraVF1ZXN0MQ==")
 NameMon = _D("SXNsZSBPdXRsYXc=")
 CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
 CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
 elseif PoDgFFjRabcuvq >= 2475 and PoDgFFjRabcuvq <= 2524 then
 Mon = _D("SXNsYW5kIEJveQ==")
 LevelQuest = 2
 NameQuest = _D("VGlraVF1ZXN0MQ==")
 NameMon = _D("SXNsYW5kIEJveQ==")
 CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
 CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
 elseif PoDgFFjRabcuvq >= 2525 and PoDgFFjRabcuvq <= 2550 then
 Mon = _D("SXNsZSBDaGFtcGlvbg==")
 LevelQuest = 2
 NameQuest = _D("VGlraVF1ZXN0Mg==")
 NameMon = _D("SXNsZSBDaGFtcGlvbg==")
 CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
 CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
 elseif PoDgFFjRabcuvq >= 2550 and PoDgFFjRabcuvq <= 2574 then
 Mon = _D("U2VycGVudCBIdW50ZXI=")
 LevelQuest = 1
 NameQuest = _D("VGlraVF1ZXN0Mw==")
 NameMon = _D("U2VycGVudCBIdW50ZXI=")
 CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
 CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044)
 elseif PoDgFFjRabcuvq >= 2575 and PoDgFFjRabcuvq <= 2599 then
 Mon = _D("U2t1bGwgU2xheWVy")
 LevelQuest = 2
 NameQuest = _D("VGlraVF1ZXN0Mw==")
 NameMon = _D("U2t1bGwgU2xheWVy")
 CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
 CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271)
 elseif PoDgFFjRabcuvq >= 2600 and PoDgFFjRabcuvq <= 2624 then
 Mon = _D("UmVlZiBCYW5kaXQ=")
 LevelQuest = 1
 NameQuest = _D("U3VibWVyZ2VkUXVlc3Qx")
 NameMon = _D("UmVlZiBCYW5kaXQ=")
 CFrameQuest = CFrame.new(10882.264, -2086.322, 10034.226)
 CFrameMon = CFrame.new(10736.6191, -2087.8439, 9338.4882)
 elseif PoDgFFjRabcuvq >= 2625 and PoDgFFjRabcuvq <= 2649 then
 Mon = _D("Q29yYWwgUGlyYXRl")
 LevelQuest = 2
 NameQuest = _D("U3VibWVyZ2VkUXVlc3Qx")
 NameMon = _D("Q29yYWwgUGlyYXRl")
 CFrameQuest = CFrame.new(10882.264, -2086.322, 10034.226)
 CFrameMon = CFrame.new(10965.1025, -2158.8842, 9177.2597)
 elseif PoDgFFjRabcuvq >= 2650 and PoDgFFjRabcuvq <= 2674 then
 Mon = _D("Q2xkQ1VRbGdFTHVUd0UgQ2hhbnRlcg==")
 LevelQuest = 1
 NameQuest = _D("U3VibWVyZ2VkUXVlc3Qy")
 NameMon = _D("Q2xkQ1VRbGdFTHVUd0UgQ2hhbnRlcg==")
 CFrameQuest = CFrame.new(10882.264, -2086.322, 10034.226)
 CFrameMon = CFrame.new(10621.0342, -2087.8440, 10102.0332)
 elseif PoDgFFjRabcuvq >= 2675 and PoDgFFjRabcuvq <= 2699 then
 Mon = _D("T2NlYW4gUHJvcGhldA==")
 LevelQuest = 2
 NameQuest = _D("U3VibWVyZ2VkUXVlc3Qy")
 NameMon = _D("T2NlYW4gUHJvcGhldA==")
 CFrameQuest = CFrame.new(10882.264, -2086.322, 10034.226)
 CFrameMon = CFrame.new(11056.1445, -2001.6717, 10117.4493)
 elseif PoDgFFjRabcuvq >= 2700 and PoDgFFjRabcuvq <= 2724 then
 Mon = _D("SGlnaCBEaXNjaXBsZQ==")
 LevelQuest = 1
 NameQuest = _D("U3VibWVyZ2VkUXVlc3Qz")
 NameMon = _D("SGlnaCBEaXNjaXBsZQ==")
 CFrameQuest = CFrame.new(9636.52441, -1992.19507, 9609.52832)
 CFrameMon = CFrame.new(9828.087890625, -1940.908935546875, 9693.0634765625)
 elseif PoDgFFjRabcuvq >= 2725 and PoDgFFjRabcuvq <= 2800 then
 Mon = _D("R3JhbmQgRGV2b3RlZQ==")
 LevelQuest = 2
 NameQuest = _D("U3VibWVyZ2VkUXVlc3Qz")
 NameMon = _D("R3JhbmQgRGV2b3RlZQ==")
 CFrameQuest = CFrame.new(9636.52441, -1992.19507, 9609.52832)
 CFrameMon = CFrame.new(9557.5849609375, -1928.0404052734375, 9859.1826171875)
 end
 end
end

phUThJKRWbVAQl qwaPIJGnXfeUHT = game.PlaceId
if qwaPIJGnXfeUHT == 2753915549 then iWbwCbFmPsUWAs = true; elseif qwaPIJGnXfeUHT == 4442272183 then World2 = true; elseif qwaPIJGnXfeUHT == 7449423635 then World3 = true; else game:Shutdown() end;


First_Sea = false
Second_Sea = false
Third_Sea = false
phUThJKRWbVAQl zpGgOKqVcvDuYZ = game.PlaceId
if zpGgOKqVcvDuYZ == 2753915549 then
First_Sea = true
elseif zpGgOKqVcvDuYZ == 4442272183 then
Second_Sea = true
elseif zpGgOKqVcvDuYZ == 7449423635 then
Third_Sea = true
end

--// Select Island
if First_Sea then
AreaList = {
 'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
} elseif Second_Sea then
AreaList = {
 'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
} elseif Third_Sea then
AreaList = {
 'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
}
end

--// Check gVEyZGGUYUxZzC Quest
SvQdlbfnjcMYYN CheckBossQuest()
if First_Sea then
if SelectBoss == _D("VGhlIEdvcmlsbGEgS2luZw==") then
BossMon = _D("VGhlIEdvcmlsbGEgS2luZw==")
NameBoss = 'The Gorrila King'
NameQuestBoss = _D("SnVuZ2xlUXVlc3Q=")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDIsMDAwXG43LDAwMCBFeHAu")
CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
OuYbkiBAkgCwFy = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
elseif SelectBoss == _D("Qm9iYnk=") then
BossMon = _D("Qm9iYnk=")
NameBoss = 'Bobby'
NameQuestBoss = _D("QnVnZ3lRdWVzdDE=")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDgsMDAwXG4zNSwwMDAgRXhwLg==")
CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
OuYbkiBAkgCwFy = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
elseif SelectBoss == _D("VGhlIFNhdw==") then
BossMon = _D("VGhlIFNhdw==")
NameBoss = 'The Saw'
OuYbkiBAkgCwFy = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
elseif SelectBoss == _D("WWV0aQ==") then
BossMon = _D("WWV0aQ==")
NameBoss = 'Yeti'
NameQuestBoss = _D("U25vd1F1ZXN0")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDEwLDAwMFxuMTgwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
OuYbkiBAkgCwFy = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
elseif SelectBoss == _D("TW9iIExlYWRlcg==") then
BossMon = _D("TW9iIExlYWRlcg==")
NameBoss = 'Mob Leader'
OuYbkiBAkgCwFy = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
elseif SelectBoss == _D("VmljZSBBZG1pcmFs") then
BossMon = _D("VmljZSBBZG1pcmFs")
NameBoss = 'Vice Admiral'
NameQuestBoss = _D("TWFyaW5lUXVlc3Qy")
QuestLvBoss = 2
RewardBoss = _D("UmV3YXJkOlxuJDEwLDAwMFxuMTgwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
OuYbkiBAkgCwFy = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
elseif SelectBoss == _D("U2FiZXIgRXhwZXJ0") then
NameBoss = 'Saber Expert'
BossMon = _D("U2FiZXIgRXhwZXJ0")
OuYbkiBAkgCwFy = CFrame.new(-1458.89502, 29.8870335, -50.633564)
elseif SelectBoss == _D("RFFWQUZwd3JYQWVGUHg=") then
BossMon = _D("RFFWQUZwd3JYQWVGUHg=")
NameBoss = 'DQVAFpwrXAeFPx'
NameQuestBoss = _D("SW1wZWxRdWVzdA==")
QuestLvBoss = 1
RewardBoss = _D("UmV3YXJkOlxuJDYsMDAwXG44NTAsMDAwIEV4cC4=")
OuYbkiBAkgCwFy = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == _D("Q2hpZWYgRFFWQUZwd3JYQWVGUHg=") then
BossMon = _D("Q2hpZWYgRFFWQUZwd3JYQWVGUHg=")
NameBoss = 'Chief DQVAFpwrXAeFPx'
NameQuestBoss = _D("SW1wZWxRdWVzdA==")
QuestLvBoss = 2
RewardBoss = _D("UmV3YXJkOlxuJDEwLDAwMFxuMSwwMDAsMDAwIEV4cC4=")
OuYbkiBAkgCwFy = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == _D("V3hlTE5JdEFZc2F1V20=") then
BossMon = _D("V3hlTE5JdEFZc2F1V20=")
NameBoss = 'WxeLNItAYsauWm'
NameQuestBoss = _D("SW1wZWxRdWVzdA==")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDE1LDAwMFxuMSw2MDAsMDAwIEV4cC4=")
OuYbkiBAkgCwFy = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == _D("TWFnbWEgQWRtaXJhbA==") then
BossMon = _D("TWFnbWEgQWRtaXJhbA==")
NameBoss = 'Magma Admiral'
NameQuestBoss = _D("TWFnbWFRdWVzdA==")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDE1LDAwMFxuMiw4MDAsMDAwIEV4cC4=")
CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
OuYbkiBAkgCwFy = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
elseif SelectBoss == _D("RmlzaG1hbiBMb3Jk") then
BossMon = _D("RmlzaG1hbiBMb3Jk")
NameBoss = 'Fishman Lord'
NameQuestBoss = _D("RmlzaG1hblF1ZXN0")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDE1LDAwMFxuNCwwMDAsMDAwIEV4cC4=")
CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
OuYbkiBAkgCwFy = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
elseif SelectBoss == _D("V3lzcGVy") then
BossMon = _D("V3lzcGVy")
NameBoss = 'Wysper'
NameQuestBoss = _D("U2t5RXhwMVF1ZXN0")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDE1LDAwMFxuNCw4MDAsMDAwIEV4cC4=")
CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
OuYbkiBAkgCwFy = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
elseif SelectBoss == _D("VGh1bmRlciBHb2Q=") then
BossMon = _D("VGh1bmRlciBHb2Q=")
NameBoss = 'Thunder God'
NameQuestBoss = _D("U2t5RXhwMlF1ZXN0")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDIwLDAwMFxuNSw4MDAsMDAwIEV4cC4=")
CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
OuYbkiBAkgCwFy = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
elseif SelectBoss == _D("Q3lib3Jn") then
BossMon = _D("Q3lib3Jn")
NameBoss = 'Cyborg'
NameQuestBoss = _D("Rm91bnRhaW5RdWVzdA==")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDIwLDAwMFxuNyw1MDAsMDAwIEV4cC4=")
CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
OuYbkiBAkgCwFy = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
elseif SelectBoss == _D("SWNlIEFkbWlyYWw=") then
BossMon = _D("SWNlIEFkbWlyYWw=")
NameBoss = 'Ice Admiral'
OuYbkiBAkgCwFy = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
elseif SelectBoss == _D("R3JleWJlYXJk") then
BossMon = _D("R3JleWJlYXJk")
NameBoss = 'Greybeard'
OuYbkiBAkgCwFy = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
end
end
if Second_Sea then
if SelectBoss == _D("RGlhbW9uZA==") then
BossMon = _D("RGlhbW9uZA==")
NameBoss = 'Diamond'
NameQuestBoss = _D("QXJlYTFRdWVzdA==")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDI1LDAwMFxuOSwwMDAsMDAwIEV4cC4=")
CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
OuYbkiBAkgCwFy = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
elseif SelectBoss == _D("SmVyZW15") then
BossMon = _D("SmVyZW15")
NameBoss = 'Jeremy'
NameQuestBoss = _D("QXJlYTJRdWVzdA==")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDI1LDAwMFxuMTEsNTAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
OuYbkiBAkgCwFy = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
elseif SelectBoss == _D("RmFqaXRh") then
BossMon = _D("RmFqaXRh")
NameBoss = 'Fajita'
NameQuestBoss = _D("TWFyaW5lUXVlc3Qz")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDI1LDAwMFxuMTUsMDAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
OuYbkiBAkgCwFy = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
elseif SelectBoss == _D("RG9uIFd4ZUxOSXRBWXNhdVdt") then
BossMon = _D("RG9uIFd4ZUxOSXRBWXNhdVdt")
NameBoss = 'Don WxeLNItAYsauWm'
OuYbkiBAkgCwFy = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
elseif SelectBoss == _D("U21va2UgQWRtaXJhbA==") then
BossMon = _D("U21va2UgQWRtaXJhbA==")
NameBoss = 'Smoke Admiral'
NameQuestBoss = _D("SWNlU2lkZVF1ZXN0")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDIwLDAwMFxuMjUsMDAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
OuYbkiBAkgCwFy = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
elseif SelectBoss == _D("QXdha2VuZWQgSWNlIEFkbWlyYWw=") then
BossMon = _D("QXdha2VuZWQgSWNlIEFkbWlyYWw=")
NameBoss = 'Awakened Ice Admiral'
NameQuestBoss = _D("RnJvc3RRdWVzdA==")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDIwLDAwMFxuMzYsMDAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
OuYbkiBAkgCwFy = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
elseif SelectBoss == _D("VGlkZSBLZWVwZXI=") then
BossMon = _D("VGlkZSBLZWVwZXI=")
NameBoss = 'Tide Keeper'
NameQuestBoss = _D("Rm9yZ290dGVuUXVlc3Q=")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDEyLDUwMFxuMzgsMDAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
OuYbkiBAkgCwFy = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
elseif SelectBoss == _D("RGFya2JlYXJk") then
BossMon = _D("RGFya2JlYXJk")
NameBoss = 'Darkbeard'
CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
elseif SelectBoss == _D("Q3Vyc2VkIENhcHRhaW4=") then
BossMon = _D("Q3Vyc2VkIENhcHRhaW4=")
NameBoss = 'Cursed Captain'
OuYbkiBAkgCwFy = CFrame.new(916.928589, 181.092773, 33422)
elseif SelectBoss == _D("T3JkZXI=") then
BossMon = _D("T3JkZXI=")
NameBoss = 'Order'
OuYbkiBAkgCwFy = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
end
end
if Third_Sea then
if SelectBoss == _D("U3RvbmU=") then
BossMon = _D("U3RvbmU=")
NameBoss = 'Stone'
NameQuestBoss = _D("UGlyYXRlUG9ydFF1ZXN0")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDI1LDAwMFxuNDAsMDAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
OuYbkiBAkgCwFy = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
elseif SelectBoss == _D("SXNsYW5kIEVtcHJlc3M=") then
BossMon = _D("SXNsYW5kIEVtcHJlc3M=")
NameBoss = 'Island Empress'
NameQuestBoss = _D("QW1hem9uUXVlc3Qy")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDMwLDAwMFxuNTIsMDAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
OuYbkiBAkgCwFy = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
elseif SelectBoss == _D("S2lsbyBBZG1pcmFs") then
BossMon = _D("S2lsbyBBZG1pcmFs")
NameBoss = 'Kilo Admiral'
NameQuestBoss = _D("TWFyaW5lVHJlZUlzbGFuZA==")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDM1LDAwMFxuNTYsMDAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
OuYbkiBAkgCwFy = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
elseif SelectBoss == _D("Q2FwdGFpbiBFbGVwaGFudA==") then
BossMon = _D("Q2FwdGFpbiBFbGVwaGFudA==")
NameBoss = 'Captain Elephant'
NameQuestBoss = _D("RGVlcEZvcmVzdElzbGFuZA==")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDQwLDAwMFxuNjcsMDAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
OuYbkiBAkgCwFy = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
elseif SelectBoss == _D("QmVhdXRpZnVsIFBpcmF0ZQ==") then
BossMon = _D("QmVhdXRpZnVsIFBpcmF0ZQ==")
NameBoss = 'Beautiful Pirate'
NameQuestBoss = _D("RGVlcEZvcmVzdElzbGFuZDI=")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDUwLDAwMFxuNzAsMDAwLDAwMCBFeHAu")
CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
OuYbkiBAkgCwFy = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
elseif SelectBoss == _D("Q2FrZSBRdWVlbg==") then
BossMon = _D("Q2FrZSBRdWVlbg==")
NameBoss = 'Cake Queen'
NameQuestBoss = _D("SWNlQ3JlYW1Jc2xhbmRRdWVzdA==")
QuestLvBoss = 3
RewardBoss = _D("UmV3YXJkOlxuJDMwLDAwMFxuMTEyLDUwMCwwMDAgRXhwLg==")
CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
OuYbkiBAkgCwFy = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
elseif SelectBoss == _D("TG9uZ21h") then
BossMon = _D("TG9uZ21h")
NameBoss = 'Longma'
OuYbkiBAkgCwFy = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
elseif SelectBoss == _D("U291bCBSZWFwZXI=") then
BossMon = _D("U291bCBSZWFwZXI=")
NameBoss = 'Soul Reaper'
OuYbkiBAkgCwFy = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
elseif SelectBoss == _D("cmlwX2luZHJhIFRydWUgRm9ybQ==") then
BossMon = _D("cmlwX2luZHJhIFRydWUgRm9ybQ==")
NameBoss = 'rip_indra True Form'
OuYbkiBAkgCwFy = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
end
end
end

--// Check GzertedVoAvlZz
SvQdlbfnjcMYYN MaterialMon()
if SelectMaterial == _D("UmFkaW9hY3RpdmUgR3plcnRlZFZvQXZsWno=") then
MMon = _D("RmFjdG9yeSBTdGFmZg==")
MPos = CFrame.new(295,73,-56)
SP = _D("RGVmYXVsdA==")
elseif SelectMaterial == _D("TXlzdGljIERyb3BsZXQ=") then
MMon = _D("V2F0ZXIgRmlnaHRlcg==")
MPos = CFrame.new(-3385,239,-10542)
SP = _D("RGVmYXVsdA==")
elseif SelectMaterial == _D("TWFnbWEgT3Jl") then
if First_Sea then
MMon = _D("TWlsaXRhcnkgU3B5")
MPos = CFrame.new(-5815,84,8820)
SP = _D("RGVmYXVsdA==")
elseif Second_Sea then
MMon = _D("TWFnbWEgTmluamE=")
MPos = CFrame.new(-5428,78,-5959)
SP = _D("RGVmYXVsdA==")
end
elseif SelectMaterial == _D("QW5nZWwgV2luZ3M=") then
MMon = _D("R29kJ3MgR3VhcmQ=")
MPos = CFrame.new(-4698,845,-1912)
SP = _D("RGVmYXVsdA==")
if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(-7859.09814, 5544.19043, -381.476196))
end
elseif SelectMaterial == _D("TGVhdGhlcg==") then
if First_Sea then
MMon = _D("QnJ1dGU=")
MPos = CFrame.new(-1145,15,4350)
SP = _D("RGVmYXVsdA==")
elseif Second_Sea then
MMon = _D("TWFyaW5lIENhcHRhaW4=")
MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
SP = _D("RGVmYXVsdA==")
elseif Third_Sea then
MMon = _D("SnVuZ2xlIFBpcmF0ZQ==")
MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
SP = _D("RGVmYXVsdA==")
end
elseif SelectMaterial == _D("U2NyYXAgTWV0YWw=") then
if First_Sea then
MMon = _D("QnJ1dGU=")
MPos = CFrame.new(-1145,15,4350)
SP = _D("RGVmYXVsdA==")
elseif Second_Sea then
MMon = _D("V3hlTE5JdEFZc2F1V20gUGlyYXRl")
MPos = CFrame.new(878,122,1235)
SP = _D("RGVmYXVsdA==")
elseif Third_Sea then
MMon = _D("SnVuZ2xlIFBpcmF0ZQ==")
MPos = CFrame.new(-12107,332,-10549)
SP = _D("RGVmYXVsdA==")
end
elseif SelectMaterial == _D("RmlzaCBUYWls") then
if Third_Sea then
MMon = _D("RmlzaG1hbiBSYWlkZXI=")
MPos = CFrame.new(-10993,332,-8940)
SP = _D("RGVmYXVsdA==")
elseif First_Sea then
MMon = _D("RmlzaG1hbiBXYXJyaW9y")
MPos = CFrame.new(61123,19,1569)
SP = _D("RGVmYXVsdA==")
if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
end
end
elseif SelectMaterial == _D("RGVtb25pYyBXaXNw") then
MMon = _D("RGVtb25pYyBTb3Vs")
MPos = CFrame.new(-9507,172,6158)
SP = _D("RGVmYXVsdA==")
elseif SelectMaterial == _D("VmFtcGlyZSBGYW5n") then
MMon = _D("VmFtcGlyZQ==")
MPos = CFrame.new(-6033,7,-1317)
SP = _D("RGVmYXVsdA==")
elseif SelectMaterial == _D("Q29uanVyZWQgQ29jb2E=") then
MMon = _D("Q2hvY29sYXRlIEJhciBCYXR0bGVy")
MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
SP = _D("RGVmYXVsdA==")
elseif SelectMaterial == _D("RHJhZ29uIFNjYWxl") then
MMon = _D("RHJhZ29uIENyZXcgQXJjaGVy")
MPos = CFrame.new(6594,383,139)
SP = _D("RGVmYXVsdA==")
elseif SelectMaterial == _D("R3VucG93ZGVy") then
MMon = _D("UGlzdG9sIEJpbGxpb25haXJl")
MPos = CFrame.new(-469,74,5904)
SP = _D("RGVmYXVsdA==")
elseif SelectMaterial == _D("TWluaSBUdXNr") then
MMon = _D("TXl0aG9sb2dpY2FsIFBpcmF0ZQ==")
MPos = CFrame.new(-13545,470,-6917)
SP = _D("RGVmYXVsdA==")
end
end

--------------------------------------------------------------------------------------------------------------------------------------------
---------Tween

 SvQdlbfnjcMYYN Tween2(P1)
 phUThJKRWbVAQl dpxibMmByOYbSz = (P1.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude
 if dpxibMmByOYbSz >= 1 then
 KfJUxYUMclBaIs = 300
 end
 game:GetService(_D("YnZPZ1FHcUtmbGNHdlk=")):Create(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE,TweenInfo.new(dpxibMmByOYbSz/KfJUxYUMclBaIs, Enum.EasingStyle.Linear), {
 CFrame = P1
 }):Play()
 if _G.CancelTween2 then
 game:GetService(_D("YnZPZ1FHcUtmbGNHdlk=")):Create(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE,TweenInfo.new(dpxibMmByOYbSz/KfJUxYUMclBaIs, Enum.EasingStyle.Linear), {
 CFrame = P1
 }):Cancel()
 end
 _G.Clip2 = true
 wait(dpxibMmByOYbSz/KfJUxYUMclBaIs)
 _G.Clip2 = false
 end
 

--BTP
SvQdlbfnjcMYYN BTP(Position)
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.Head:Destroy()
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = Position
 wait(0.5)
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = Position
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U2V0U3Bhd25Qb2ludA=="))
end
--BTPZ
SvQdlbfnjcMYYN BTPZ(Point)
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = Point
 task.wait()
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = Point
 end
------Bypass TP 2
 SvQdlbfnjcMYYN GetIsLand(...)
 phUThJKRWbVAQl PXzHUKTDMxlHJf = {...}
 phUThJKRWbVAQl GFenAgyQBtoxle = PXzHUKTDMxlHJf[1]
 phUThJKRWbVAQl svGqOxieqiDBzi
 if type(GFenAgyQBtoxle) == _D("dmVjdG9y") then
 svGqOxieqiDBzi = GFenAgyQBtoxle
 elseif type(GFenAgyQBtoxle) == _D("dXNlcmRhdGE=") then
 svGqOxieqiDBzi = GFenAgyQBtoxle.Position
 elseif type(GFenAgyQBtoxle) == _D("bnVtYmVy") then
 svGqOxieqiDBzi = CFrame.new(unpack(PXzHUKTDMxlHJf))
 svGqOxieqiDBzi = svGqOxieqiDBzi.p
 end

 phUThJKRWbVAQl iXLbysqzmwjTHh
 phUThJKRWbVAQl QOrPKFrsrFsEJO = math.huge;
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Team then
 for i,v in pairs(game.xkzLfqrlXOYczM._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Team)):GetChildren()) do 
 phUThJKRWbVAQl WxLlDsXaVhVOzD = (svGqOxieqiDBzi - v:GetModelCFrame().p).Magnitude;
 if WxLlDsXaVhVOzD < QOrPKFrsrFsEJO then
 QOrPKFrsrFsEJO = WxLlDsXaVhVOzD;
 iXLbysqzmwjTHh = v.Name
 end
 end
 if iXLbysqzmwjTHh then
 return iXLbysqzmwjTHh
 end 
 end
end


 SvQdlbfnjcMYYN toTarget(...)
 phUThJKRWbVAQl PXzHUKTDMxlHJf = { ... }
 phUThJKRWbVAQl GFenAgyQBtoxle = PXzHUKTDMxlHJf[1]
 phUThJKRWbVAQl svGqOxieqiDBzi
 if type(GFenAgyQBtoxle) == _D("dmVjdG9y") then
 svGqOxieqiDBzi = CFrame.new(GFenAgyQBtoxle)
 elseif type(GFenAgyQBtoxle) == _D("dXNlcmRhdGE=") then
 svGqOxieqiDBzi = GFenAgyQBtoxle
 elseif type(GFenAgyQBtoxle) == _D("bnVtYmVy") then
 svGqOxieqiDBzi = CFrame.new(unpack(PXzHUKTDMxlHJf))
 end
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Health == 0 then
 if bRyAHquJfRexwp then bRyAHquJfRexwp:Cancel() end
 repeat wait() until game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Health > 0; wait(0.2)
 end
 phUThJKRWbVAQl gEbewOFSbErYlz = {}
 phUThJKRWbVAQl dpxibMmByOYbSz = (svGqOxieqiDBzi.Position - game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU=")).Position)
 .Magnitude
 if dpxibMmByOYbSz < 1000 then
 KfJUxYUMclBaIs = 315
 elseif dpxibMmByOYbSz >= 1000 then
 KfJUxYUMclBaIs = 300
 end
 if BypassTP then
 if dpxibMmByOYbSz > 3000 and not AutoNextIsland and not (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("U3BlY2lhbCBNaWNyb2NoaXA=")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("U3BlY2lhbCBNaWNyb2NoaXA=")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("SGFsbG93IEVzc2VuY2U=")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("SGFsbG93IEVzc2VuY2U=")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("U3dlZXQgQ2hhbGljZQ==")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("U3dlZXQgQ2hhbGljZQ=="))) and not (Name == _D("RmlzaG1hbiBDb21tYW5kbw==") or Name == _D("RmlzaG1hbiBXYXJyaW9y")) then
 pcall(SvQdlbfnjcMYYN()
 bRyAHquJfRexwp:Cancel()
 fkwarp = false
 if game:GetService(_D("WGdnWHJhQkRxZ254a20="))[_D("c0ZOaEVucU51YXFFYUc=")].Data:FindFirstChild(_D("U3Bhd25Qb2ludA==")).Value == tostring(GetIsLand(svGqOxieqiDBzi)) then
 wait(.1)
 Com(_D("Rl8="), _D("VGVsZXBvcnRUb1NwYXdu"))
 elseif game:GetService(_D("WGdnWHJhQkRxZ254a20="))[_D("c0ZOaEVucU51YXFFYUc=")].Data:FindFirstChild(_D("TGFzdFNwYXduUG9pbnQ=")).Value == tostring(GetIsLand(svGqOxieqiDBzi)) then
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")):ChangeState(15)
 wait(0.1)
 repeat wait() until game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Health > 0
 else
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Health > 0 then
 if fkwarp == false then
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = svGqOxieqiDBzi
 end
 fkwarp = true
 end
 wait(.08)
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")):ChangeState(15)
 repeat wait() until game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Health > 0
 wait(.1)
 Com(_D("Rl8="), _D("U2V0U3Bhd25Qb2ludA=="))
 end
 wait(0.2)

 return
 end)
 end
 end

 phUThJKRWbVAQl wGYdvAihNZgxLw = game:service _D("YnZPZ1FHcUtmbGNHdlk=")
 phUThJKRWbVAQl dRscRzUggviOQt = TweenInfo.new(
 (svGqOxieqiDBzi.Position - game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU=")).Position)
 .Magnitude / KfJUxYUMclBaIs, Enum.EasingStyle.Linear)
 phUThJKRWbVAQl ePqJVpbvgfDdbX, err = pcall(SvQdlbfnjcMYYN()
 bRyAHquJfRexwp = wGYdvAihNZgxLw:Create(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw[_D("Z1hadHJSdVpZbHNyZEU=")], dRscRzUggviOQt, { CFrame = svGqOxieqiDBzi })
 bRyAHquJfRexwp:Play()
 end)

 SvQdlbfnjcMYYN gEbewOFSbErYlz:Stop()
 bRyAHquJfRexwp:Cancel()
 end

 SvQdlbfnjcMYYN gEbewOFSbErYlz:Wait()
 bRyAHquJfRexwp.Completed:Wait()
 end

 return gEbewOFSbErYlz
end

------

SvQdlbfnjcMYYN Tween(Pos)
 dpxibMmByOYbSz = (Pos.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.KrlGhKjHesTsTl.Sit == true then game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.KrlGhKjHesTsTl.Sit = false end
 pcall(SvQdlbfnjcMYYN() bRyAHquJfRexwp = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk=")):Create(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE,TweenInfo.new(dpxibMmByOYbSz/300, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
 bRyAHquJfRexwp:Play()
 if dpxibMmByOYbSz <= 300 then
 bRyAHquJfRexwp:Cancel()
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = Pos
 end
 if _G.StopTween == true then
 bRyAHquJfRexwp:Cancel()
 _G.Clip = false
 end
end

---------

SvQdlbfnjcMYYN toTargetP(CFgo)
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Health <= 0 or not game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")) then bRyAHquJfRexwp:Cancel() repeat wait() until game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")) and game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Health > 0 wait(7) return end
 if (game:GetService(_D("WGdnWHJhQkRxZ254a20="))[_D("c0ZOaEVucU51YXFFYUc=")].aBYiproClLDecw.gXZtrRuZYlsrdE.Position - CFgo.Position).Magnitude <= 150 then
 pcall(SvQdlbfnjcMYYN()
 bRyAHquJfRexwp:Cancel()

 game:GetService(_D("WGdnWHJhQkRxZ254a20="))[_D("c0ZOaEVucU51YXFFYUc=")].aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = CFgo

 return
 end)
 end
 phUThJKRWbVAQl wGYdvAihNZgxLw = game:service_D("YnZPZ1FHcUtmbGNHdlk=")
 phUThJKRWbVAQl dRscRzUggviOQt = TweenInfo.new((game:GetService(_D("WGdnWHJhQkRxZ254a20="))[_D("c0ZOaEVucU51YXFFYUc=")].aBYiproClLDecw.gXZtrRuZYlsrdE.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
 bRyAHquJfRexwp = wGYdvAihNZgxLw:Create(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw[_D("Z1hadHJSdVpZbHNyZEU=")], dRscRzUggviOQt, {CFrame = CFgo})
 bRyAHquJfRexwp:Play()

 phUThJKRWbVAQl gEbewOFSbErYlz = {}

 SvQdlbfnjcMYYN gEbewOFSbErYlz:Stop()
 bRyAHquJfRexwp:Cancel()
 end

 return gEbewOFSbErYlz
end

 --SvQdlbfnjcMYYN TP to Boat/Ship
 SvQdlbfnjcMYYN TweenShip(CFgo)
 phUThJKRWbVAQl wGYdvAihNZgxLw = game:service_D("YnZPZ1FHcUtmbGNHdlk=")
 phUThJKRWbVAQl dRscRzUggviOQt = TweenInfo.new((game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
 bRyAHquJfRexwp = wGYdvAihNZgxLw:Create(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Boats.MarineBrigade.VehicleSeat, dRscRzUggviOQt, {CFrame = CFgo})
 bRyAHquJfRexwp:Play()
 
 phUThJKRWbVAQl gEbewOFSbErYlz = {}
 
 SvQdlbfnjcMYYN gEbewOFSbErYlz:Stop()
 bRyAHquJfRexwp:Cancel()
 end
 
 return gEbewOFSbErYlz
 end
 
 SvQdlbfnjcMYYN TweenBoat(CFgo)
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Health <= 0 or not game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")) then bRyAHquJfRexwp:Cancel() repeat wait() until game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")) and game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Health > 0 wait(7) return end
 phUThJKRWbVAQl wGYdvAihNZgxLw = game:service_D("YnZPZ1FHcUtmbGNHdlk=")
 phUThJKRWbVAQl dRscRzUggviOQt = TweenInfo.new((game:GetService(_D("WGdnWHJhQkRxZ254a20="))[_D("c0ZOaEVucU51YXFFYUc=")].aBYiproClLDecw.gXZtrRuZYlsrdE.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
 bRyAHquJfRexwp = wGYdvAihNZgxLw:Create(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw[_D("Z1hadHJSdVpZbHNyZEU=")], dRscRzUggviOQt, {CFrame = CFgo})
 bRyAHquJfRexwp:Play()
 
 phUThJKRWbVAQl gEbewOFSbErYlz = {}
 
 SvQdlbfnjcMYYN gEbewOFSbErYlz:Stop()
 bRyAHquJfRexwp:Cancel()
 end
 
 return gEbewOFSbErYlz
 end

--select phxNQIGfLHVwHE
SvQdlbfnjcMYYN EquipTool(ToolSe)
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(ToolSe) then
 phUThJKRWbVAQl rhMaedwfiWfIfa = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(ToolSe)
 wait(0.5)
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.KrlGhKjHesTsTl:EquipTool(rhMaedwfiWfIfa)
 end
 end
 
 --aimbot mastery

 spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl bvDYMRwKlPbVnk = getrawmetatable(game)
 phUThJKRWbVAQl cHniDGWwDFQkpm = bvDYMRwKlPbVnk.__namecall
 setreadonly(bvDYMRwKlPbVnk,false)
 bvDYMRwKlPbVnk.__namecall = newcclosure(SvQdlbfnjcMYYN(...)
 phUThJKRWbVAQl uxksYvfrvNGIxH = getnamecallmethod()
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {
 ...
 }
 if tostring(uxksYvfrvNGIxH) == _D("RmlyZVNlcnZlcg==") then
 if tostring(pnvTUSLxDuQwJo[1]) == _D("UmVtb3RlRXZlbnQ=") then
 if tostring(pnvTUSLxDuQwJo[2]) ~= _D("dHJ1ZQ==") and tostring(pnvTUSLxDuQwJo[2]) ~= _D("ZmFsc2U=") then
 if _G.UseSkill then
 if type(pnvTUSLxDuQwJo[2]) == _D("dmVjdG9y") then
 pnvTUSLxDuQwJo[2] = PositionSkillMasteryDevilFruit
 else
 pnvTUSLxDuQwJo[2] = CFrame.new(PositionSkillMasteryDevilFruit)
 end
 return cHniDGWwDFQkpm(unpack(pnvTUSLxDuQwJo))
 end
 end
 end
 end
 return cHniDGWwDFQkpm(...)
 end)
 end)

 

 


--Check GzertedVoAvlZz
SvQdlbfnjcMYYN CheckMaterial(matname)
for i,v in pairs(game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Z2V0SW52ZW50b3J5"))) do
if type(v) == _D("dGFibGU=") then
if v.Type == _D("R3plcnRlZFZvQXZsWno=") then
if v.Name == matname then
return v.Count
end
end
end
end
return 0
end





phUThJKRWbVAQl NTlIQmazrcoTgE = 0
phUThJKRWbVAQl mWeiHYEEYIGfGo = 1
SvQdlbfnjcMYYN AutoHaki()
 if not game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("SGFzQnVzbw==")) then
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
 if vwQmFqKggWtPsY - NTlIQmazrcoTgE >= mWeiHYEEYIGfGo then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QnVzbw=="))
 NTlIQmazrcoTgE = vwQmFqKggWtPsY
 end
 end
end
phUThJKRWbVAQl TpwrsPFUIvIVcS = 0
phUThJKRWbVAQl hIJVJiAprTltQo = 0.5
SvQdlbfnjcMYYN UnEquipWeapon(Weapon)
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
 if vwQmFqKggWtPsY - TpwrsPFUIvIVcS >= hIJVJiAprTltQo then
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(Weapon) then
 getgenv().NotAutoEquip = true
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw[Weapon].Parent = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack
 getgenv().NotAutoEquip = false
 end
 TpwrsPFUIvIVcS = vwQmFqKggWtPsY
 end
end
phUThJKRWbVAQl aweIroAsHGyYGr = 0
phUThJKRWbVAQl YVqMCrorTyKNeT = 0.5
SvQdlbfnjcMYYN EquipWeapon(ToolSe)
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
 if vwQmFqKggWtPsY - aweIroAsHGyYGr >= YVqMCrorTyKNeT then 
 if not getgenv().NotAutoEquip then
 phUThJKRWbVAQl rhMaedwfiWfIfa = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(ToolSe)
 if rhMaedwfiWfIfa then
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.KrlGhKjHesTsTl:EquipTool(rhMaedwfiWfIfa)
 end
 end
 aweIroAsHGyYGr = vwQmFqKggWtPsY
 end
end
SvQdlbfnjcMYYN BTP(p)
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl UfXaCXGPsKitMs = XPKQttDgjyuQHM.aBYiproClLDecw.gXZtrRuZYlsrdE
 phUThJKRWbVAQl lnhLIZpBaYGcBO = XPKQttDgjyuQHM.aBYiproClLDecw.KrlGhKjHesTsTl
 phUThJKRWbVAQl zMrFOpcmVeiJya = XPKQttDgjyuQHM.XUBvNPokLCGyoF.Main
 phUThJKRWbVAQl LVuduhuXvHxWVT = p.Position
 phUThJKRWbVAQl fBeygjcvhtkWKf = UfXaCXGPsKitMs.Position
 repeat
 lnhLIZpBaYGcBO.Health = 0
 UfXaCXGPsKitMs.CFrame = p
 zMrFOpcmVeiJya.Quest.Visible = false
 if (UfXaCXGPsKitMs.Position - fBeygjcvhtkWKf).Magnitude > 1 then
 fBeygjcvhtkWKf = UfXaCXGPsKitMs.Position
 UfXaCXGPsKitMs.CFrame = p
 end
 task.wait(0.5)
 until (p.Position - UfXaCXGPsKitMs.Position).Magnitude <= 2000
end
SvQdlbfnjcMYYN BTPZ(v209)
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 if XPKQttDgjyuQHM.aBYiproClLDecw and XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl OdSSDwxKzrOmwX = XPKQttDgjyuQHM.aBYiproClLDecw.gXZtrRuZYlsrdE
 OdSSDwxKzrOmwX.CFrame = v209
 end
end
phUThJKRWbVAQl BDszhyTmjyshuG = 0
phUThJKRWbVAQl EBBxsqWfRCYCWb = 0.5
SvQdlbfnjcMYYN fastpos(Pos)
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
 if vwQmFqKggWtPsY - BDszhyTmjyshuG >= EBBxsqWfRCYCWb then
 phUThJKRWbVAQl dpxibMmByOYbSz = (Pos.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude
 phUThJKRWbVAQl KfJUxYUMclBaIs = 1000 
 phUThJKRWbVAQl bRyAHquJfRexwp = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk=")):Create(
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE,
 TweenInfo.new(dpxibMmByOYbSz / KfJUxYUMclBaIs, Enum.EasingStyle.Linear),
 { CFrame = Pos }
 )
 bRyAHquJfRexwp:Play()
 BDszhyTmjyshuG = vwQmFqKggWtPsY
 end
end
phUThJKRWbVAQl TbLlzmVxRfYvPH = 0
phUThJKRWbVAQl brndIDQxaYOZIZ = 0.5
SvQdlbfnjcMYYN TPB(pos, boat)
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
 if vwQmFqKggWtPsY - TbLlzmVxRfYvPH >= brndIDQxaYOZIZ then
 phUThJKRWbVAQl wGYdvAihNZgxLw = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk="))
 phUThJKRWbVAQl AIZewxPvNzJKJX = (boat.CFrame.Position - pos.Position).Magnitude
 phUThJKRWbVAQl aGFSyaabHAneYm = getgenv().SpeedBoat
 phUThJKRWbVAQl dRscRzUggviOQt = TweenInfo.new(AIZewxPvNzJKJX / aGFSyaabHAneYm, Enum.EasingStyle.Linear)
 if AIZewxPvNzJKJX <= 25 then
 return {Stop = SvQdlbfnjcMYYN() end}
 else
 phUThJKRWbVAQl bRyAHquJfRexwp = wGYdvAihNZgxLw:Create(boat, dRscRzUggviOQt, {CFrame = pos})
 bRyAHquJfRexwp:Play()
 TbLlzmVxRfYvPH = vwQmFqKggWtPsY
 return {
 Stop = SvQdlbfnjcMYYN()
 bRyAHquJfRexwp:Cancel()
 end
 }
 end
 end
end
phUThJKRWbVAQl aweIroAsHGyYGr = 0
phUThJKRWbVAQl YVqMCrorTyKNeT = 0.2
SvQdlbfnjcMYYN EquipAllWeapon()
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
 if vwQmFqKggWtPsY - aweIroAsHGyYGr >= YVqMCrorTyKNeT then
 for _, v in pairs(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:GetChildren()) do
 if v:IsA('Tool') and not (v.Name == _D("U3VtbW9uIENsZENVUWxnRUx1VHdFIEJlYXN0") or v.Name == _D("V2F0ZXIgQm9keQ==") or v.Name == _D("QXdha2VuaW5n")) then
 phUThJKRWbVAQl AiKNPkuwQnopSP = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(v.Name)
 if AiKNPkuwQnopSP then
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.KrlGhKjHesTsTl:EquipTool(AiKNPkuwQnopSP)
 end
 end
 end
 aweIroAsHGyYGr = vwQmFqKggWtPsY
 end
 end)
end
SvQdlbfnjcMYYN CheckNearestTeleporter(aI)
 phUThJKRWbVAQl PoDgFFjRabcuvq = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Data.Level.Value
 phUThJKRWbVAQl btixBIfAKwvVom = aI.Position
 phUThJKRWbVAQl FfYzCbZnEqmJvT = math.huge
 phUThJKRWbVAQl LlPrOnpwszaRIF = math.huge
 phUThJKRWbVAQl SDfkUhvcDjndJM = game.PlaceId
 phUThJKRWbVAQl iWbwCbFmPsUWAs, World2, World3
 if SDfkUhvcDjndJM == 2753915549 then
 iWbwCbFmPsUWAs = true
 elseif SDfkUhvcDjndJM == 4442272183 then
 World2 = true
 elseif SDfkUhvcDjndJM == 7449423635 then
 World3 = true
 end
 phUThJKRWbVAQl KWuNClWAxuEmTg = {}
 if World3 then
 KWuNClWAxuEmTg = {
 [_D("TWFuc2lvbg==")] = Vector3.new(-12471, 374, -7551),
 [_D("SHlkcmE=")] = Vector3.new(5659, 1013, -341),
 [_D("Q2FzbHRlIE9uIFRoZSBDbGRDVVFsZ0VMdVR3RQ==")] = Vector3.new(-5092, 315, -3130),
 [_D("RmxvYXRpbmcgVHVydGxl")] = Vector3.new(-12001, 332, -8861),
 [_D("QmVhdXRpZnVsIFBpcmF0ZQ==")] = Vector3.new(5319, 23, -93),
 [_D("VGVtcGxlIE9mIFRpbWU=")] = Vector3.new(28286, 14897, 103)
 }
 elseif World2 then
 KWuNClWAxuEmTg = {
 [_D("RmxhbWluZ28gTWFuc2lvbg==")] = Vector3.new(-317, 331, 597),
 [_D("RmxhbWluZ28gUm9vbQ==")] = Vector3.new(2283, 15, 867),
 [_D("Q3Vyc2VkIFNoaXA=")] = Vector3.new(923, 125, 32853),
 [_D("Wm9tYmllIElzbGFuZA==")] = Vector3.new(-6509, 83, -133)
 }
 elseif iWbwCbFmPsUWAs then
 KWuNClWAxuEmTg = {
 [_D("U2t5IElzbGFuZCAx")] = Vector3.new(-4652, 873, -1754),
 [_D("U2t5IElzbGFuZCAy")] = Vector3.new(-7895, 5547, -380),
 [_D("VW5kZXIgV2F0ZXIgSXNsYW5k")] = Vector3.new(61164, 5, 1820),
 [_D("VW5kZXIgV2F0ZXIgSXNsYW5kIEVudHJhY2U=")] = Vector3.new(3865, 5, -1926)
 }
 end
 phUThJKRWbVAQl zDgGelxxLeEUwc = {}
 for r, v in pairs(KWuNClWAxuEmTg) do
 zDgGelxxLeEUwc[r] = (v - btixBIfAKwvVom).Magnitude
 end
 for r, v in pairs(zDgGelxxLeEUwc) do
 if v < FfYzCbZnEqmJvT then
 FfYzCbZnEqmJvT = v
 LlPrOnpwszaRIF = v
 end
 end
 phUThJKRWbVAQl VOlFvCqsEdyIgN
 for r, v in pairs(zDgGelxxLeEUwc) do
 if v <= FfYzCbZnEqmJvT then
 VOlFvCqsEdyIgN = KWuNClWAxuEmTg[r]
 end
 end
 phUThJKRWbVAQl owDaCdAMYEvLCj = (btixBIfAKwvVom - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude
 if LlPrOnpwszaRIF <= owDaCdAMYEvLCj then
 return VOlFvCqsEdyIgN
 end
end 
SvQdlbfnjcMYYN requestEntrance(aJ)
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {_D("cmVxdWVzdEVudHJhbmNl"), aJ}
 game.zqGxghDwQpmuUJ.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(pnvTUSLxDuQwJo)) 
 phUThJKRWbVAQl WCwaSyYBUyPTbV = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame
 phUThJKRWbVAQl yOXFMjqnvTyvyo = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE
 yOXFMjqnvTyvyo.CFrame = CFrame.new(WCwaSyYBUyPTbV.X, WCwaSyYBUyPTbV.Y + 50, WCwaSyYBUyPTbV.Z) 
 task.wait(0.5)
end 
SvQdlbfnjcMYYN topos(Tween_Pos)
 pcall(SvQdlbfnjcMYYN()
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG 
 and game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw 
 and game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) 
 and game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) 
 and game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw.KrlGhKjHesTsTl.Health > 0 
 and game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE then
 if not TweenSpeed then
 TweenSpeed = 350
 end
 DefualtY = Tween_Pos.Y
 TargetY = Tween_Pos.Y
 targetCFrameWithDefualtY = CFrame.new(Tween_Pos.X, DefualtY, Tween_Pos.Z)
 GFenAgyQBtoxle = Tween_Pos.Position
 WCwaSyYBUyPTbV = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame
 dpxibMmByOYbSz = (GFenAgyQBtoxle - game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU=")).Position).Magnitude
 if dpxibMmByOYbSz <= 300 then
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = Tween_Pos
 end
 phUThJKRWbVAQl FjKpbPTgvIEDLa = CheckNearestTeleporter(Tween_Pos)
 if FjKpbPTgvIEDLa then
 pcall(SvQdlbfnjcMYYN()
 bRyAHquJfRexwp:Cancel()
 end)
 requestEntrance(FjKpbPTgvIEDLa)
 end
 b1 = CFrame.new(
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame.X,
 DefualtY,
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame.Z
 )
 IngoreY = true
 if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = CFrame.new(
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame.X,
 DefualtY,
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame.Z
 )
 phUThJKRWbVAQl gEbewOFSbErYlz = {}
 phUThJKRWbVAQl JBkoSLdKPpyDUw = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk="))
 phUThJKRWbVAQl UKIHribFPIegxh = TweenInfo.new(
 (GFenAgyQBtoxle - game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU=")).Position).Magnitude / TweenSpeed,
 Enum.EasingStyle.Linear
 )
 bRyAHquJfRexwp = JBkoSLdKPpyDUw:Create(
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw[_D("Z1hadHJSdVpZbHNyZEU=")],
 UKIHribFPIegxh,
 {CFrame = targetCFrameWithDefualtY}
 )
 bRyAHquJfRexwp:Play()
 SvQdlbfnjcMYYN gEbewOFSbErYlz:Stop()
 bRyAHquJfRexwp:Cancel()
 end
 bRyAHquJfRexwp.Completed:Wait()
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = CFrame.new(
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame.X,
 TargetY,
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame.Z
 )
 else
 phUThJKRWbVAQl gEbewOFSbErYlz = {}
 phUThJKRWbVAQl JBkoSLdKPpyDUw = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk="))
 phUThJKRWbVAQl UKIHribFPIegxh = TweenInfo.new(
 (GFenAgyQBtoxle - game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU=")).Position).Magnitude / TweenSpeed,
 Enum.EasingStyle.Linear
 )
 bRyAHquJfRexwp = JBkoSLdKPpyDUw:Create(
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw[_D("Z1hadHJSdVpZbHNyZEU=")],
 UKIHribFPIegxh,
 {CFrame = Tween_Pos}
 )
 bRyAHquJfRexwp:Play()
 SvQdlbfnjcMYYN gEbewOFSbErYlz:Stop()
 bRyAHquJfRexwp:Cancel()
 end
 bRyAHquJfRexwp.Completed:Wait()
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = CFrame.new(
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame.X,
 TargetY,
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame.Z
 )
 end
 if not bRyAHquJfRexwp then
 return bRyAHquJfRexwp
 end
 return gEbewOFSbErYlz
 end
 end)
end
SvQdlbfnjcMYYN StopTween(afyMrCROTPAWbv)
 pcall(SvQdlbfnjcMYYN()
 if not afyMrCROTPAWbv then
 getgenv().StopTween = true 
 if bRyAHquJfRexwp then
 bRyAHquJfRexwp:Cancel()
 bRyAHquJfRexwp = nil
 end 
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM and XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl UfXaCXGPsKitMs = KlPGYKwHNevVQC and KlPGYKwHNevVQC:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if UfXaCXGPsKitMs then
 UfXaCXGPsKitMs.Anchored = true
 task.wait(0.1)
 UfXaCXGPsKitMs.CFrame = UfXaCXGPsKitMs.CFrame
 UfXaCXGPsKitMs.Anchored = false
 end
 phUThJKRWbVAQl okeRVuXuisRtvq = UfXaCXGPsKitMs and UfXaCXGPsKitMs:FindFirstChild(_D("Qm9keUNsaXA="))
 if okeRVuXuisRtvq then
 okeRVuXuisRtvq:Destroy()
 end
 getgenv().StopTween = false
 getgenv().Clip = false
 end
 end)
end
spawn(SvQdlbfnjcMYYN()
 while task.wait() do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().TeleportIsland or 
 getgenv().AutoFarm or 
 getgenv().AutoMaterial or 
 getgenv().MasteryFarm or 
 getgenv().AutoGetMelee or 
 getgenv().TeleportToFruit or 
 getgenv().AutoNewWorld or 
 getgenv().AutoThirdSea or 
 getgenv().AutoFactory or 
 getgenv().AutoPirateRaid or 
 getgenv().AutoEliteHunter or 
 getgenv().AutoTouchPadHaki or 
 getgenv().AutoRipIndra or 
 getgenv().AutoSoulReaper or 
 getgenv().AutoDoughKing or 
 getgenv().AutoDarkbeard or 
 getgenv().DojoClaimQuest or 
 getgenv().DragonTalonUpgrade or 
 getgenv().BlazeEmberFarm or 
 getgenv().AutoObservationHakiV2 or 
 getgenv().AutoObservation or 
 getgenv().AutoFarmBoss or 
 getgenv().AutoFarmAllBoss or 
 getgenv().Auto_Dungeon or 
 getgenv().SailBoat or 
 getgenv().RelzFishBoat or 
 getgenv().RelzPirateBrigade or 
 getgenv().RelzPirateGrandBrigade or 
 getgenv().AutoTerrorshark or 
 getgenv().AutoSeaBest or 
 getgenv().AutoFrozenDimension or 
 getgenv().KillLevi or
 getgenv().UpgradeRaceV2 or
 getgenv().AutoCyborg or
 getgenv().AutoGhoul or
 getgenv().QuestTrain_2 or
 getgenv().TeleportMigare or
 getgenv().Tweentohighestpoint or
 getgenv().TeleportToGear or
 getgenv().AutoTrialRace or
 getgenv().AutoKillPlayerAfterTrial or
 getgenv().AutoRainbowHaki or
 getgenv().AutoSkullGuitar or
 getgenv().AutoGetCDK or
 getgenv().AutoTushita or
 getgenv().AutoSaber or
 getgenv().TeleportPlayer
 then
 if not game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE:FindFirstChild(_D("Qm9keUNsaXA=")) then
 phUThJKRWbVAQl XIOAMdXyUOwnwe = Instance.new(_D("Qm9keVZlbG9jaXR5"))
 XIOAMdXyUOwnwe.Name = _D("Qm9keUNsaXA=")
 XIOAMdXyUOwnwe.Parent = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE
 XIOAMdXyUOwnwe.MaxForce = Vector3.new(100000, 100000, 100000)
 XIOAMdXyUOwnwe.Velocity = Vector3.new(0, 0, 0)
 end
 else
 phUThJKRWbVAQl okeRVuXuisRtvq = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE:FindFirstChild(_D("Qm9keUNsaXA="))
 if okeRVuXuisRtvq then
 okeRVuXuisRtvq:Destroy()
 end
 end
 end)
 end
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Stepped:Connect(SvQdlbfnjcMYYN()
 if getgenv().TeleportIsland or 
 getgenv().AutoFarm or 
 getgenv().AutoMaterial or 
 getgenv().MasteryFarm or 
 getgenv().AutoGetMelee or 
 getgenv().TeleportToFruit or 
 getgenv().AutoNewWorld or 
 getgenv().AutoThirdSea or 
 getgenv().AutoFactory or 
 getgenv().AutoPirateRaid or 
 getgenv().AutoEliteHunter or 
 getgenv().AutoTouchPadHaki or 
 getgenv().AutoRipIndra or 
 getgenv().AutoSoulReaper or 
 getgenv().AutoDoughKing or 
 getgenv().AutoDarkbeard or 
 getgenv().DojoClaimQuest or 
 getgenv().DragonTalonUpgrade or 
 getgenv().BlazeEmberFarm or 
 getgenv().AutoObservationHakiV2 or 
 getgenv().AutoObservation or 
 getgenv().AutoFarmBoss or 
 getgenv().AutoFarmAllBoss or 
 getgenv().Auto_Dungeon or 
 getgenv().SailBoat or 
 getgenv().RelzFishBoat or 
 getgenv().RelzPirateBrigade or 
 getgenv().RelzPirateGrandBrigade or 
 getgenv().AutoTerrorshark or 
 getgenv().AutoSeaBest or 
 getgenv().AutoFrozenDimension or 
 getgenv().KillLevi or
 getgenv().UpgradeRaceV2 or
 getgenv().AutoCyborg or
 getgenv().AutoGhoul or
 getgenv().QuestTrain_2 or
 getgenv().TeleportMigare or
 getgenv().Tweentohighestpoint or
 getgenv().TeleportToGear or
 getgenv().AutoTrialRace or
 getgenv().AutoKillPlayerAfterTrial or
 getgenv().AutoRainbowHaki or
 getgenv().AutoSkullGuitar or
 getgenv().AutoGetCDK or
 getgenv().AutoTushita or
 getgenv().AutoSaber or
 getgenv().TeleportPlayer
 then
 for _, v in pairs(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:GetDescendants()) do
 if v:IsA(_D("QmFzZVBhcnQ=")) then
 v.CanCollide = false
 end
 end
 end
 end)
 end)
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl fbwbWrdOSXxYHI = 0
 phUThJKRWbVAQl apxHtGLPVrmhPt = 1
 while wait() do
 if (getgenv().AutoFarm or getgenv().Kill_Trial_V4) and tick() - fbwbWrdOSXxYHI > apxHtGLPVrmhPt then
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.CommE:FireServer(_D("S2Vu"), true)
 end)
 fbwbWrdOSXxYHI = tick()
 end
 end
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl KmwdLwHYdGOFnA = tick()
 while task.wait(0.1) do
 if getgenv().AutoSeaBest and CheckSeaBeast() then
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
 if vwQmFqKggWtPsY - KmwdLwHYdGOFnA >= 0.5 then
 Pos = CFrame.new(math.random(-600, 600), math.random(0, 300), math.random(-600, 600))
 KmwdLwHYdGOFnA = vwQmFqKggWtPsY
 end
 end
 end
end)
phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
phUThJKRWbVAQl SvQdlbfnjcMYYN IsEntityAlive(entity)
 if not entity then return false end
 phUThJKRWbVAQl lnhLIZpBaYGcBO = entity:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw="))
 return lnhLIZpBaYGcBO and lnhLIZpBaYGcBO.Health > 0
end
phUThJKRWbVAQl SvQdlbfnjcMYYN GetEnemiesInRange(KlPGYKwHNevVQC, range)
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()
 phUThJKRWbVAQl cEyaErcNrWcihX = game:GetService(_D("WGdnWHJhQkRxZ254a20=")):GetPlayers()
 phUThJKRWbVAQl ajcspyWEOoammF = {}
 phUThJKRWbVAQl FyWnFFZakWhtDs = KlPGYKwHNevVQC:GetPivot().Position
 for _, ksJlFEgkkErXbu in ipairs(KTWBQhwktSkgEc) do
 phUThJKRWbVAQl OdSSDwxKzrOmwX = ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if OdSSDwxKzrOmwX and IsEntityAlive(ksJlFEgkkErXbu) then
 phUThJKRWbVAQl AIZewxPvNzJKJX = (OdSSDwxKzrOmwX.Position - FyWnFFZakWhtDs).Magnitude
 if AIZewxPvNzJKJX <= range then
 table.insert(ajcspyWEOoammF, ksJlFEgkkErXbu)
 end
 end
 end
 for _, otherPlayer in ipairs(cEyaErcNrWcihX) do
 if otherPlayer ~= XPKQttDgjyuQHM and otherPlayer.aBYiproClLDecw then
 phUThJKRWbVAQl OdSSDwxKzrOmwX = otherPlayer.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if OdSSDwxKzrOmwX and IsEntityAlive(otherPlayer.aBYiproClLDecw) then
 phUThJKRWbVAQl AIZewxPvNzJKJX = (OdSSDwxKzrOmwX.Position - FyWnFFZakWhtDs).Magnitude
 if AIZewxPvNzJKJX <= range then
 table.insert(ajcspyWEOoammF, otherPlayer.aBYiproClLDecw)
 end
 end
 end
 end
 return ajcspyWEOoammF
end
SvQdlbfnjcMYYN AttackNoCoolDown()
 phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM.aBYiproClLDecw
 if not KlPGYKwHNevVQC then return end
 phUThJKRWbVAQl LVntPfhPNZhBYM
 for _, item in ipairs(KlPGYKwHNevVQC:GetChildren()) do
 if item:IsA(_D("VG9vbA==")) then
 LVntPfhPNZhBYM = item
 break
 end
 end
 if not LVntPfhPNZhBYM then return end
 phUThJKRWbVAQl JtMyfKQikJNWvh = GetEnemiesInRange(KlPGYKwHNevVQC, 60)
 if LVntPfhPNZhBYM:FindFirstChild(_D("TGVmdENsaWNrUmVtb3Rl")) then
 phUThJKRWbVAQl XduDvcOyaYZpzt = 1 
 for _, ksJlFEgkkErXbu in ipairs(JtMyfKQikJNWvh) do
 phUThJKRWbVAQl OdSSDwxKzrOmwX = ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if OdSSDwxKzrOmwX then
 phUThJKRWbVAQl skCRgArUuSGvuK = (OdSSDwxKzrOmwX.Position - KlPGYKwHNevVQC:GetPivot().Position).Unit
 LVntPfhPNZhBYM.LeftClickRemote:FireServer(skCRgArUuSGvuK, XduDvcOyaYZpzt)
 XduDvcOyaYZpzt = XduDvcOyaYZpzt + 1
 end
 end
 else
 phUThJKRWbVAQl ajcspyWEOoammF, mainTarget = {}, nil
 for _, ksJlFEgkkErXbu in ipairs(JtMyfKQikJNWvh) do
 if not ksJlFEgkkErXbu:GetAttribute(_D("SXNCb2F0")) then
 phUThJKRWbVAQl SThnGCdclEaMvE = ksJlFEgkkErXbu:FindFirstChild(_D("SGVhZA=="))
 if SThnGCdclEaMvE then
 table.insert(ajcspyWEOoammF, { ksJlFEgkkErXbu, SThnGCdclEaMvE })
 mainTarget = SThnGCdclEaMvE
 end
 end
 end
 if mainTarget then
 phUThJKRWbVAQl aaFdTVoenqIaRV = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl XIaMGBMsitUHLN = aaFdTVoenqIaRV:WaitForChild(_D("TW9kdWxlcw==")):WaitForChild(_D("TmV0")):WaitForChild(_D("UkUvUmVnaXN0ZXJBdHRhY2s="))
 phUThJKRWbVAQl dQHYjJkdrcwlsR = aaFdTVoenqIaRV:WaitForChild(_D("TW9kdWxlcw==")):WaitForChild(_D("TmV0")):WaitForChild(_D("UkUvUmVnaXN0ZXJIaXQ="))
 pcall(SvQdlbfnjcMYYN()
 XIaMGBMsitUHLN:FireServer(0.1)
 dQHYjJkdrcwlsR:FireServer(mainTarget, ajcspyWEOoammF)
 end)
 end
 end
end


Time = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("VGltZSBab25l"),
 Content = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
})
SvQdlbfnjcMYYN UpdateOS()
 phUThJKRWbVAQl hvaozCDqNOzGec = os.hvaozCDqNOzGec(_D("KmFQUXBVc1BrQmRhVFV3"))
 phUThJKRWbVAQl AwuEFVcgkaYTZY = (hvaozCDqNOzGec.AwuEFVcgkaYTZY) % 24
 phUThJKRWbVAQl ekNbgRfoOGJLmQ = AwuEFVcgkaYTZY < 12 and _D("QU0=") or _D("UE0=")
 phUThJKRWbVAQl VdHRPTdLFCDlok = string.format(_D("JTAyaTolMDJpOiUwMmkgJXM="), ((AwuEFVcgkaYTZY - 1) % 12) + 1, hvaozCDqNOzGec.FfYzCbZnEqmJvT, hvaozCDqNOzGec.sec, ekNbgRfoOGJLmQ)
 phUThJKRWbVAQl WxeULXwVkQLmYk = string.format(_D("JTAyZC8lMDJkLyUwNGQ="), hvaozCDqNOzGec.day, hvaozCDqNOzGec.month, hvaozCDqNOzGec.year) 
 phUThJKRWbVAQl DBgtYRIDvzxjtw = game:GetService(_D("REJndFlSSUR2enhqdHc="))
 phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
 phUThJKRWbVAQl XPKQttDgjyuQHM = XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl KgRaxVphTHecgJ = XPKQttDgjyuQHM.Name
 phUThJKRWbVAQl dNdVwXmfAugeai, code 
 if not getgenv().countryRegionCode then
 dNdVwXmfAugeai, code = pcall(SvQdlbfnjcMYYN()
 return DBgtYRIDvzxjtw:GetCountryRegionForPlayerAsync(XPKQttDgjyuQHM)
 end)
 if dNdVwXmfAugeai then
 getgenv().countryRegionCode = code
 else
 getgenv().countryRegionCode = _D("VW5rbm93bg==")
 end
 else
 code = getgenv().countryRegionCode
 end
 Time:SetDesc(WxeULXwVkQLmYk.._D("IC0g")..VdHRPTdLFCDlok.._D("IFsg") .. code .. _D("IF0="))
end
spawn(SvQdlbfnjcMYYN()
 while true do
 UpdateOS()
 wait(1)
 end
end)
Timmessss = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("VGltZQ=="),
 Content = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
})
SvQdlbfnjcMYYN UpdateTime()
 phUThJKRWbVAQl wtAQcdGjcguwpr = math.floor(wExlmmqTxYIeST.DistributedGameTime + 0.5)
 phUThJKRWbVAQl IaDFJFdPSCaiHh = math.floor(wtAQcdGjcguwpr / (60^2)) % 24
 phUThJKRWbVAQl BYufgjqXgZDGzW = math.floor(wtAQcdGjcguwpr / (60^1)) % 60
 phUThJKRWbVAQl iGfvmrVbbvcumj = math.floor(wtAQcdGjcguwpr / (60^0)) % 60
 Timmessss:SetDesc(IaDFJFdPSCaiHh.._D("IElhREZKRmRQU0NhaUhoIChoKSA=")..BYufgjqXgZDGzW.._D("IEJZdWZnanFYZ1pER3pXIChtKSA=")..iGfvmrVbbvcumj.._D("IGlHZnZtclZiYnZjdW1qIChzKSA="))
end
spawn(SvQdlbfnjcMYYN()
 while true do
 UpdateTime()
 wait(1)
 end
end)
Miragecheck = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("TWlyYWdlIElzbGFuZA=="),
 Content = _D("U3RhdHVzOiA=")
})
phUThJKRWbVAQl cFGFlNLvuGdaKY = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while true do
 wait(1) 
 phUThJKRWbVAQl uXnLaJHqGUtout = game.xkzLfqrlXOYczM._WorldOrigin.Locations:FindFirstChild('Mirage Island') ~= nil
 phUThJKRWbVAQl vwEVFCfzALlPzm = uXnLaJHqGUtout and '✅️' or '❌️'
 if vwEVFCfzALlPzm ~= cFGFlNLvuGdaKY then
 Miragecheck:SetDesc('Status: ' .. vwEVFCfzALlPzm)
 cFGFlNLvuGdaKY = vwEVFCfzALlPzm
 end
 end
 end)
end)
Kitsunecheck = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("YmxGRnF2dGtBb01KZEkgSXNsYW5k"),
 Content = _D("U3RhdHVzOiA=")
})
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl cFGFlNLvuGdaKY = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 while task.wait(1) do
 phUThJKRWbVAQl vwEVFCfzALlPzm = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map:FindFirstChild(_D("S2l0c3VuZUlzbGFuZA==")) and '✅️' or '❌️'
 if vwEVFCfzALlPzm ~= cFGFlNLvuGdaKY then
 Kitsunecheck:SetDesc('Status: ' .. vwEVFCfzALlPzm)
 cFGFlNLvuGdaKY = vwEVFCfzALlPzm
 end
 end
end)
CPrehistoriccheck = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("UHJlaGlzdG9yaWMgSXNsYW5k"),
 Desc = _D("U3RhdHVzOiA=")
})
task.spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl cFGFlNLvuGdaKY = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 while task.wait(1) do
 phUThJKRWbVAQl vwEVFCfzALlPzm = game.xkzLfqrlXOYczM._WorldOrigin.Locations:FindFirstChild(_D("UHJlaGlzdG9yaWMgSXNsYW5k")) and '✅️' or '❌️'
 if vwEVFCfzALlPzm ~= cFGFlNLvuGdaKY then
 CPrehistoriccheck:SetDesc(_D("U3RhdHVzOiA=") .. vwEVFCfzALlPzm)
 cFGFlNLvuGdaKY = vwEVFCfzALlPzm
 end
 end
end)
FrozenIsland = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("RnJvemVuIERpbWVuc2lvbg=="),
 Content = _D("U3RhdHVzOiA=")
})
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl cFGFlNLvuGdaKY = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 while wait(1) do
 phUThJKRWbVAQl vwEVFCfzALlPzm = game.xkzLfqrlXOYczM._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') and '✅️' or '❌️'
 if vwEVFCfzALlPzm ~= cFGFlNLvuGdaKY then
 FrozenIsland:SetDesc('Status: ' .. vwEVFCfzALlPzm)
 cFGFlNLvuGdaKY = vwEVFCfzALlPzm
 end
 end
end)
MobCakePrince = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("RGltZW5zaW9uIEtpbGxlZA=="),
 Content = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
})
spawn(SvQdlbfnjcMYYN()
 while wait(1) do
 phUThJKRWbVAQl axIEWxWNZVbKoW = game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q2FrZVByaW5jZVNwYXduZXI="))
 phUThJKRWbVAQl ufJmptYTJcLoWN = _D("Q2FrZSBQcmluY2U6IOKche+4jw==")
 if string.len(axIEWxWNZVbKoW) >= 86 then
 phUThJKRWbVAQl MOWAilmEFSJjGf = string.sub(axIEWxWNZVbKoW, 39, 41)
 ufJmptYTJcLoWN = _D("S2lsbDog") .. MOWAilmEFSJjGf
 end
 MobCakePrince:SetDesc(ufJmptYTJcLoWN)
 end
end)
CheckRip = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("UmlwX0luZHJh"),
 Content = _D("U3RhdHVzOiA=")
})
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl cFGFlNLvuGdaKY = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 while wait(1) do
 phUThJKRWbVAQl vwEVFCfzALlPzm = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ==")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("cmlwX2luZHJh")) and '✅️' or '❌️'
 if vwEVFCfzALlPzm ~= cFGFlNLvuGdaKY then
 CheckRip:SetDesc(_D("U3RhdHVzOiA=") .. vwEVFCfzALlPzm)
 cFGFlNLvuGdaKY = vwEVFCfzALlPzm
 end
 end
end)
CheckDoughKing = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("RG91Z2ggS2luZw=="),
 Content = _D("U3RhdHVzOiA=")
})
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl cFGFlNLvuGdaKY = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 while wait(1) do
 phUThJKRWbVAQl vwEVFCfzALlPzm = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RG91Z2ggS2luZw==")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RG91Z2ggS2luZw==")) and '✅️' or '❌️'
 if vwEVFCfzALlPzm ~= cFGFlNLvuGdaKY then
 CheckDoughKing:SetDesc(_D("U3RhdHVzOiA=") .. vwEVFCfzALlPzm)
 cFGFlNLvuGdaKY = vwEVFCfzALlPzm
 end
 end
end)
EliteHunter = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("RWxpdGUgSHVudGVy"),
 Content = _D("U3RhdHVzOiA=")
})
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl cFGFlNLvuGdaKY = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 while wait(1) do
 phUThJKRWbVAQl vwEVFCfzALlPzm = (game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGlhYmxv")) or game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGVhbmRyZQ==")) or game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("VXJiYW4=")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RGlhYmxv")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RGVhbmRyZQ==")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("VXJiYW4="))) and '✅️' or '❌️'
 phUThJKRWbVAQl LoHqxbnZqGzUdS = game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("RWxpdGVIdW50ZXI="),_D("UHJvZ3Jlc3M="))
 if vwEVFCfzALlPzm ~= cFGFlNLvuGdaKY then
 EliteHunter:SetDesc(_D("U3RhdHVzOiA=") .. vwEVFCfzALlPzm .. _D("IHwgS2lsbGVkOiA=") .. LoHqxbnZqGzUdS)
 cFGFlNLvuGdaKY = vwEVFCfzALlPzm
 end
 end
end)
FM = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("RnVsbCBNb29u"),
 Content = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
})
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 phUThJKRWbVAQl YfUcwhMyGTlIsi = game:GetService(_D("TGlnaHRpbmc=")).Sky.MoonTextureId
 phUThJKRWbVAQl XkSwNsMHqCUcYD = _D("TW9vbjogMC81")
 if YfUcwhMyGTlIsi == _D("aHR0cDovL3d3dy5yb2Jsb3guY29tL2Fzc2V0Lz9xd2FQSUpHblhmZVVIVD05NzA5MTQ5NDMx") then
 XkSwNsMHqCUcYD = _D("TW9vbjogNS81")
 elseif YfUcwhMyGTlIsi == _D("aHR0cDovL3d3dy5yb2Jsb3guY29tL2Fzc2V0Lz9xd2FQSUpHblhmZVVIVD05NzA5MTQ5MDUy") then
 XkSwNsMHqCUcYD = _D("TW9vbjogNC81")
 elseif YfUcwhMyGTlIsi == _D("aHR0cDovL3d3dy5yb2Jsb3guY29tL2Fzc2V0Lz9xd2FQSUpHblhmZVVIVD05NzA5MTQzNzMz") then
 XkSwNsMHqCUcYD = _D("TW9vbjogMy81")
 elseif YfUcwhMyGTlIsi == _D("aHR0cDovL3d3dy5yb2Jsb3guY29tL2Fzc2V0Lz9xd2FQSUpHblhmZVVIVD05NzA5MTUwNDAx") then
 XkSwNsMHqCUcYD = _D("TW9vbjogMi81")
 elseif YfUcwhMyGTlIsi == _D("aHR0cDovL3d3dy5yb2Jsb3guY29tL2Fzc2V0Lz9xd2FQSUpHblhmZVVIVD05NzA5MTQ5Njgw") then
 XkSwNsMHqCUcYD = _D("TW9vbjogMS81")
 end
 FM:SetDesc(XkSwNsMHqCUcYD)
 end
end)
LegendarySword = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("TGVnZW5kYXJ5IFN3b3Jk"),
 Content = _D("U3RhdHVzOiA=")
})
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl cFGFlNLvuGdaKY = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 while wait(1) do
 phUThJKRWbVAQl bMiJfiXvmeFjoo = _D("Tm90IEZvdW5kIExlZ2VuZCBTd29yZHM=")
 if game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("TGVnZW5kYXJ5U3dvcmREZWFsZXI="), _D("MQ==")) then
 bMiJfiXvmeFjoo = _D("U2hpc3Vp")
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("TGVnZW5kYXJ5U3dvcmREZWFsZXI="), _D("Mg==")) then
 bMiJfiXvmeFjoo = _D("V2FuZG8=")
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("TGVnZW5kYXJ5U3dvcmREZWFsZXI="), _D("Mw==")) then
 bMiJfiXvmeFjoo = _D("U2FkZGk=")
 end
 LegendarySword:SetDesc(bMiJfiXvmeFjoo)
 end
end)
StatusBone = HYAqOrVauuPwRd.St:AddParagraph({
 AFotbYvafQTmWI = _D("Qm9uZQ=="),
 Content = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
})
spawn(SvQdlbfnjcMYYN()
 while wait(1) do
 StatusBone:SetDesc(_D("WW91IEhhdmU6IA==") .. tostring(game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Qm9uZXM="), _D("Q2hlY2s="))) .. _D("IEJvbmVz"))
 end
end) 


---test
phUThJKRWbVAQl kxMccFIyUiVrGr = {_D("U2xvdw=="), _D("TkRsclZyV05JWVNHaUg="), _D("RmFzdA==")}
phUThJKRWbVAQl UMBfisZuhEuFKG = _D("TkRsclZyV05JWVNHaUg=")
phUThJKRWbVAQl OlRQLqsraIEcrM = 0.125
phUThJKRWbVAQl ytaoFlHyvcARaM = false

-- oIjXnkPyzOwyWN para selecionar a velocidade de ataque
phUThJKRWbVAQl oIjXnkPyzOwyWN = HYAqOrVauuPwRd.Main:AddDropdown(_D("VmVsb2NpZGFkZSBkZSBBdGFxdWU="), {
 AFotbYvafQTmWI = _D("U2VsZWNpb25lIGEgVmVsb2NpZGFkZSBkZSBBdGFxdWU="),
 Values = kxMccFIyUiVrGr,
 Multi = false, -- O usuÃ¡rio sÃ³ pode selecionar uma opÃ§Ã£o
 Default = 2, -- PadrÃ£o Ã© _D("TkRsclZyV05JWVNHaUg=")
 Callback = SvQdlbfnjcMYYN(Value)
 UMBfisZuhEuFKG = Value
 if UMBfisZuhEuFKG == _D("RmFzdA==") then
 OlRQLqsraIEcrM = 0.029
 elseif UMBfisZuhEuFKG == _D("TkRsclZyV05JWVNHaUggRmFzdA==") then
 OlRQLqsraIEcrM = 2
 elseif UMBfisZuhEuFKG == _D("U3VwZXIgZmFzdCBBdGFjaw==") then
 OlRQLqsraIEcrM = 0.0005
 end
 end
})

-- srOTmqcypZcejd para ativar/desativar o Fast Attack
phUThJKRWbVAQl srOTmqcypZcejd = HYAqOrVauuPwRd.Main:AddToggle(_D("RmFzdCBBdHRhY2s="), {
 AFotbYvafQTmWI = _D("RmFzdCBBdHRhY2s="),
 Default = ytaoFlHyvcARaM,
 Callback = SvQdlbfnjcMYYN(Value)
 ytaoFlHyvcARaM = Value
 end
})

oIjXnkPyzOwyWN = HYAqOrVauuPwRd.Main:AddDropdown(_D("RHJvcGRvd25GYXJt"), {
 AFotbYvafQTmWI = _D("U2VsZWN0IFdlYXBvbg=="),
 Values = {_D("TWVsZWU="),_D("U3dvcmQ="),_D("QmxveCB3YnZrbWVWR0hUbURpcQ==")},
 Multi = false,
})
oIjXnkPyzOwyWN:SetValue(_D("TWVsZWU="))
oIjXnkPyzOwyWN:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().SelectWeapon = value
end)
task.spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl KZbcrMBsmChvDR = nil
 while task.wait(0.5) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().SelectWeapon == KZbcrMBsmChvDR then
 return
 end
 KZbcrMBsmChvDR = getgenv().SelectWeapon
 phUThJKRWbVAQl usZrRMddeGvjHY = nil
 for _, v in pairs(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:GetChildren()) do
 if v.ToolTip == getgenv().SelectWeapon then
 usZrRMddeGvjHY = v.Name
 break
 end
 end
 if usZrRMddeGvjHY then
 getgenv().SelectWeapon = usZrRMddeGvjHY
 end
 end)
 end
end)



phUThJKRWbVAQl srOTmqcypZcejd = HYAqOrVauuPwRd.Main:AddToggle(_D("QXV0b0xldmVsRmFybQ=="), { 
 AFotbYvafQTmWI = _D("QXV0byBGYXJtIExldmVs"), 
 Default = false 
})

srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoFarm = Value
 StopTween(getgenv().AutoFarm)
end)

spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 if getgenv().AutoFarm then
 pcall(SvQdlbfnjcMYYN()
 
 CheckQuest()

 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl LLANratFSFJouC = XPKQttDgjyuQHM.aBYiproClLDecw and XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))

 if not LLANratFSFJouC then return end
 
 phUThJKRWbVAQl kYELdBukVnJquv = XPKQttDgjyuQHM.XUBvNPokLCGyoF.Main.Quest
 phUThJKRWbVAQl PjWSeJwJZXWRFZ = kYELdBukVnJquv.Visible
 phUThJKRWbVAQl LuaiAvKaNeKomb = kYELdBukVnJquv.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text
 
 -- Se a quest for diferente → abandona
 if not string.find(LuaiAvKaNeKomb, NameMon) then
 getgenv().StartMagnet = false
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWJhbmRvblF1ZXN0"))
 end

 -- Se não tiver quest ativa → inicia
 if not PjWSeJwJZXWRFZ then
 
 getgenv().StartMagnet = false
 CheckQuest()

 phUThJKRWbVAQl AIZewxPvNzJKJX = (LLANratFSFJouC.Position - CFrameQuest.Position).Magnitude
 
 if AIZewxPvNzJKJX > 1500 then -- Teleporte anti-kick
 BTP(CFrameQuest * CFrame.new(0, 25, 5))
 else
 topos(CFrameQuest) -- Tp normal
 end

 -- Quando chegar no NPC → inicia quest
 if (LLANratFSFJouC.Position - CFrameQuest.Position).Magnitude < 20 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U3RhcnRRdWVzdA=="), NameQuest, LevelQuest)
 end

 else -- Se já tiver quest → ir matar NPCs
 
 for _, SjWUDTxxmMSkLC in pairs(wExlmmqTxYIeST.Enemies:GetChildren()) do
 if SjWUDTxxmMSkLC:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and 
 SjWUDTxxmMSkLC:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and SjWUDTxxmMSkLC.KrlGhKjHesTsTl.Health > 0 and 
 SjWUDTxxmMSkLC.Name == Mon then
 
 repeat task.wait(0.1)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)

 -- Tp para o SjWUDTxxmMSkLC
 topos(SjWUDTxxmMSkLC.gXZtrRuZYlsrdE.CFrame * CFrame.new(0, 20, 0))

 SjWUDTxxmMSkLC.gXZtrRuZYlsrdE.CanCollide = false
 SjWUDTxxmMSkLC.KrlGhKjHesTsTl.WalkSpeed = 0
 SjWUDTxxmMSkLC.Head.CanCollide = false
 getgenv().StartMagnet = true
 
 sethiddenproperty(XPKQttDgjyuQHM, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)

 ------------------------------------------------
 -- 🔥 PULL → puxa outros qtJyBOUemjNYgz do mesmo tipo 🔥
 ------------------------------------------------
 phUThJKRWbVAQl NVAeaPvsGMtYbb = wExlmmqTxYIeST.Enemies
 phUThJKRWbVAQl HoUmzYhGrgRLuK = Mon
 phUThJKRWbVAQl LTHYrEWcIJCMJW = SjWUDTxxmMSkLC.gXZtrRuZYlsrdE

 for _, otherMob in pairs(NVAeaPvsGMtYbb:GetChildren()) do
 if otherMob.Name == HoUmzYhGrgRLuK 
 and otherMob:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) 
 and otherMob:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) 
 and otherMob.KrlGhKjHesTsTl.Health > 0 
 and otherMob ~= SjWUDTxxmMSkLC then

 pcall(SvQdlbfnjcMYYN()
 otherMob.gXZtrRuZYlsrdE.CFrame = LTHYrEWcIJCMJW.CFrame
 end)
 end
 end
 ------------------------------------------------

 until not getgenv().AutoFarm or SjWUDTxxmMSkLC.KrlGhKjHesTsTl.Health <= 0 or not SjWUDTxxmMSkLC.Parent or not kYELdBukVnJquv.Visible
 end
 end
 end
 end)
 end
 end
end)


phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
phUThJKRWbVAQl hSwdFvQbAsALWC = game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M="))

-- srOTmqcypZcejd Auto Farm Sky Piea
phUThJKRWbVAQl EmOaXkNTJDzdec = HYAqOrVauuPwRd.Main:AddToggle(_D("RW1PYVhrTlRKRHpkZWM="), {AFotbYvafQTmWI = _D("QXV0byBGYXJtIFNreSBQaWVhIDEtMTAw"), Default = false})
EmOaXkNTJDzdec:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.AutoFarmSkyPiea = Value
end)
DIDKqcielyXJJu.EmOaXkNTJDzdec:SetValue(false)

phUThJKRWbVAQl twxmDPckZaqZTI = 40 -- altura segura acima do SjWUDTxxmMSkLC
phUThJKRWbVAQl exoYgqOuAXjzVK = Vector3.new(0, 0, -4) -- ligeiramente atrás do SjWUDTxxmMSkLC

-- Função principal
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.03) do -- atualiza ~30 vezes por segundo
 if _G.AutoFarmSkyPiea then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl RqUFftQvfaEeJR = XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl SnoyCrHNCudlvC = RqUFftQvfaEeJR.aBYiproClLDecw or RqUFftQvfaEeJR.CharacterAdded:Wait()
 phUThJKRWbVAQl wPlpIUWcnZfbqn = SnoyCrHNCudlvC:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU="))
 phUThJKRWbVAQl KrlGhKjHesTsTl = SnoyCrHNCudlvC:WaitForChild(_D("S3JsR2hLakhlc1RzVGw="))
 phUThJKRWbVAQl PoDgFFjRabcuvq = RqUFftQvfaEeJR.Data.Level.Value

 -- Define o alvo e spawn baseado no nível
 phUThJKRWbVAQl HoUmzYhGrgRLuK
 phUThJKRWbVAQl gkkfghNjfuXHem
 if PoDgFFjRabcuvq >= 1 and PoDgFFjRabcuvq <= 50 then
 HoUmzYhGrgRLuK = _D("U2t5IEJhbmRpdA==")
 gkkfghNjfuXHem = Vector3.new(-4953.207, 295.744, -2899.229)
 elseif PoDgFFjRabcuvq > 50 and PoDgFFjRabcuvq <= 100 then
 HoUmzYhGrgRLuK = _D("U2hhbmRh")
 gkkfghNjfuXHem = Vector3.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
 else
 return
 end

 phUThJKRWbVAQl NVAeaPvsGMtYbb = wExlmmqTxYIeST:FindFirstChild(_D("RW5lbWllcw=="))
 if not NVAeaPvsGMtYbb then return end

 -- Verifica qtJyBOUemjNYgz próximos
 phUThJKRWbVAQl qtJyBOUemjNYgz = {}
 for _, SjWUDTxxmMSkLC in pairs(NVAeaPvsGMtYbb:GetChildren()) do
 if SjWUDTxxmMSkLC.Name == HoUmzYhGrgRLuK and SjWUDTxxmMSkLC:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and SjWUDTxxmMSkLC:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and SjWUDTxxmMSkLC.KrlGhKjHesTsTl.Health > 0 then
 table.insert(qtJyBOUemjNYgz, SjWUDTxxmMSkLC)
 end
 end

 if #qtJyBOUemjNYgz == 0 then
 -- Vai para spawn se nenhum SjWUDTxxmMSkLC presente
 KrlGhKjHesTsTl.PlatformStand = true
 wPlpIUWcnZfbqn.CFrame = CFrame.new(gkkfghNjfuXHem + Vector3.new(0, twxmDPckZaqZTI, 0))
 else
 -- Ataca o primeiro SjWUDTxxmMSkLC da lista
 phUThJKRWbVAQl SjWUDTxxmMSkLC = qtJyBOUemjNYgz[1]
 phUThJKRWbVAQl LTHYrEWcIJCMJW = SjWUDTxxmMSkLC.gXZtrRuZYlsrdE
 repeat
 task.wait(0.03)

 -- Mantém altura segura + deslocamento
 wPlpIUWcnZfbqn.CFrame = LTHYrEWcIJCMJW.CFrame * CFrame.new(exoYgqOuAXjzVK + Vector3.new(0, twxmDPckZaqZTI, 0))
 KrlGhKjHesTsTl.PlatformStand = true -- mantém estável

 -- Ajustes do SjWUDTxxmMSkLC principal
 LTHYrEWcIJCMJW.CanCollide = false
 SjWUDTxxmMSkLC.KrlGhKjHesTsTl.WalkSpeed = 0
 SjWUDTxxmMSkLC.KrlGhKjHesTsTl.JumpPower = 0

 -- PULL: puxa outros qtJyBOUemjNYgz do mesmo tipo
 for _, otherMob in pairs(NVAeaPvsGMtYbb:GetChildren()) do
 if otherMob.Name == HoUmzYhGrgRLuK and otherMob:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and otherMob:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and otherMob.KrlGhKjHesTsTl.Health > 0 and otherMob ~= SjWUDTxxmMSkLC then
 pcall(SvQdlbfnjcMYYN()
 otherMob.gXZtrRuZYlsrdE.CFrame = LTHYrEWcIJCMJW.CFrame
 end)
 end
 end

 -- Ataque
 hSwdFvQbAsALWC:ClickButton1(Vector2.new(), wExlmmqTxYIeST.CurrentCamera.CFrame)
 until not _G.AutoFarmSkyPiea or not SjWUDTxxmMSkLC.Parent or SjWUDTxxmMSkLC.KrlGhKjHesTsTl.Health <= 0

 -- Volta ao normal após SjWUDTxxmMSkLC morrer
 KrlGhKjHesTsTl.PlatformStand = false
 end
 end)
 end
 end
end)





phUThJKRWbVAQl YepnUYJOdtejQE = HYAqOrVauuPwRd.Main:AddSection(_D("WWVwblVZSk9kdGVqUUUgRmFybQ=="))
 phUThJKRWbVAQl qXVaJhTFZQwTbO = HYAqOrVauuPwRd.Main:AddDropdown(_D("cVhWYUpoVEZaUXdUYk8="), {
 AFotbYvafQTmWI = _D("WWVwblVZSk9kdGVqUUUgTW9kZQ=="),
 Values = {_D("TGV2ZWw="),_D("TmVhciBNb2Jz"),},
 Multi = false,
 Default = 1,
 })

 qXVaJhTFZQwTbO:SetValue(_D("TGV2ZWw="))

 qXVaJhTFZQwTbO:OnChanged(SvQdlbfnjcMYYN(Value)
 TypeMastery = Value
 end)

 phUThJKRWbVAQl zcfKhKedsuYXmj = HYAqOrVauuPwRd.Main:AddToggle(_D("emNmS2hLZWRzdVlYbWo="), {AFotbYvafQTmWI = _D("QXV0byBCRiBZZXBuVVlKT2R0ZWpRRQ=="), Default = false })
 zcfKhKedsuYXmj:OnChanged(SvQdlbfnjcMYYN(Value)
 AutoFarmMasDevilFruit = Value
 end)
 DIDKqcielyXJJu.zcfKhKedsuYXmj:SetValue(false)

 

 phUThJKRWbVAQl gpxoMVnTKuMDQO = HYAqOrVauuPwRd.Main:AddSlider(_D("Z3B4b01WblRLdU1EUU8="), {
 AFotbYvafQTmWI = _D("SGVhbHRoICglKSBNb2I="),
 Description = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Default = 25,
 Min = 0,
 Max = 100,
 Rounding = 1,
 Callback = SvQdlbfnjcMYYN(Value)
 KillPercent = Value
 end
 })

 gpxoMVnTKuMDQO:OnChanged(SvQdlbfnjcMYYN(Value)
 KillPercent = Value
 end)

 gpxoMVnTKuMDQO:SetValue(25)
 
 
spawn(SvQdlbfnjcMYYN()
while task.wait(1) do
if _G.UseSkill then
pcall(SvQdlbfnjcMYYN()
 if _G.UseSkill then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == MonFarm and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health <= v.KrlGhKjHesTsTl.MaxHealth * KillPercent / 100 then
 repeat game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Heartbeat:wait()
 EquipTool(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Data.DevilFruit.Value)
 Tween(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 PositionSkillMasteryDevilFruit = v.gXZtrRuZYlsrdE.Position
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Data.DevilFruit.Value) then
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit
 phUThJKRWbVAQl nwnPcEmQZudkAw = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Data.DevilFruit.Value).Level.Value
 if SkillZ and nwnPcEmQZudkAw >= 1 then
 game:service('VirtualInputManager'):SendKeyEvent(true, _D("Wg=="), false, game)
 wait(0.1)
 game:service('VirtualInputManager'):SendKeyEvent(false, _D("Wg=="), false, game)
 end
 if SkillX and nwnPcEmQZudkAw >= 2 then
 game:service('VirtualInputManager'):SendKeyEvent(true, _D("WA=="), false, game)
 wait(0.2)
 game:service('VirtualInputManager'):SendKeyEvent(false, _D("WA=="), false, game)
 end
 if SkillC and nwnPcEmQZudkAw >= 3 then
 game:service('VirtualInputManager'):SendKeyEvent(true, _D("Qw=="), false, game)
 wait(0.3)
 game:service('VirtualInputManager'):SendKeyEvent(false, _D("Qw=="), false, game)
 end
 if SkillV and nwnPcEmQZudkAw >= 4 then
 game:service('VirtualInputManager'):SendKeyEvent(true, _D("Vg=="), false, game)
 wait(0.4)
 game:service('VirtualInputManager'):SendKeyEvent(false, _D("Vg=="), false, game)
 end
 if SkillF and nwnPcEmQZudkAw >= 5 then
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(true, _D("Rg=="), false, game)
 wait(0.5)
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(false, _D("Rg=="), false, game)
 end
 end
 until not AutoFarmMasDevilFruit or not _G.UseSkill or v.KrlGhKjHesTsTl.Health == 0
 end
 end
 end
 end)
end
end
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(.1) do
 if AutoFarmMasDevilFruit and TypeMastery == 'Level' then
 pcall(SvQdlbfnjcMYYN()
 CheckLevel(SelectMonster)
 if not string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text, NameMon) or game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Visible == false then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWJhbmRvblF1ZXN0"))
 if BypassTP then
 if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - CFrameQ.Position).Magnitude > 2500 then
 BTP(CFrameQ)
 wait(0.2)
 elseif (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - CFrameQ.Position).Magnitude < 2500 then
 Tween(CFrameQ)
 end
 else
 Tween(CFrameQ)
 end
 if (CFrameQ.Position - game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude <= 5 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U3RhcnRRdWVzdA=="),NameQuest,QuestLv)
 end
 elseif string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text, NameMon) or game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Visible == true then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 if v.Name == Ms then
 repeat game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Heartbeat:wait()
 if v.KrlGhKjHesTsTl.Health <= v.KrlGhKjHesTsTl.MaxHealth * KillPercent / 100 then
 _G.UseSkill = true
 else
 _G.UseSkill = false
 AutoHaki()
 bringmob = true
 EquipTool(SelectWeapon)
 Tween(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 v.gXZtrRuZYlsrdE.Size = Vector3.new(1, 1, 1)
 v.gXZtrRuZYlsrdE.Transparency = 1
 v.KrlGhKjHesTsTl.JumpPower = 0
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.CanCollide = false
 FarmPos = v.gXZtrRuZYlsrdE.CFrame
 MonFarm = v.Name
 
 NormalAttack()
 end
 until not AutoFarmMasDevilFruit or not v.Parent or v.KrlGhKjHesTsTl.Health == 0 or game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Visible == false or not game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(v.Name) or not TypeMastery == 'Level'
 bringmob = false
 _G.UseSkill = false
 
 end
 end
 end
 end
 end)
---------Near Mas
 elseif AutoFarmMasDevilFruit and TypeMastery == 'Near Mobs' then
 pcall(SvQdlbfnjcMYYN()
 for i,v in pairs (game.xkzLfqrlXOYczM.Enemies:GetChildren()) do
 if v.Name and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")).Position).Magnitude <= 5000 then
 repeat game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Heartbeat:wait()
 if v.KrlGhKjHesTsTl.Health <= v.KrlGhKjHesTsTl.MaxHealth * KillPercent / 100 then
 _G.UseSkill = true
 else
 _G.UseSkill = false
 AutoHaki()
 bringmob = true
 EquipTool(SelectWeapon)
 Tween(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 v.gXZtrRuZYlsrdE.Size = Vector3.new(1, 1, 1)
 v.gXZtrRuZYlsrdE.Transparency = 1
 v.KrlGhKjHesTsTl.JumpPower = 0
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.CanCollide = false
 --v.KrlGhKjHesTsTl:ChangeState(11)
 --v.KrlGhKjHesTsTl:ChangeState(14)
 FarmPos = v.gXZtrRuZYlsrdE.CFrame
 MonFarm = v.Name
 
 NormalAttack()
 end
 until not AutoFarmMasDevilFruit or not MasteryType == 'Near Mobs' or not v.Parent or v.KrlGhKjHesTsTl.Health == 0 or not TypeMastery == 'Near Mobs'
 bringmob = false
 _G.UseSkill = false
 
 end
end
end
end)
end
end
end)

phUThJKRWbVAQl WxSsBMOfCvieMq = HYAqOrVauuPwRd.Main:AddSection(_D("Z1ZFeVpHR1VZVXhaekMgRmFybQ=="))

 if First_Sea then
 tableBoss = {_D("VGhlIEdvcmlsbGEgS2luZw=="),_D("Qm9iYnk="),_D("WWV0aQ=="),_D("TW9iIExlYWRlcg=="),_D("VmljZSBBZG1pcmFs"),_D("RFFWQUZwd3JYQWVGUHg="),_D("Q2hpZWYgRFFWQUZwd3JYQWVGUHg="),_D("V3hlTE5JdEFZc2F1V20="),_D("TWFnbWEgQWRtaXJhbA=="),_D("RmlzaG1hbiBMb3Jk"),_D("V3lzcGVy"),_D("VGh1bmRlciBHb2Q="),_D("Q3lib3Jn"),_D("U2FiZXIgRXhwZXJ0")}
 elseif Second_Sea then
 tableBoss = {_D("RGlhbW9uZA=="),_D("SmVyZW15"),_D("RmFqaXRh"),_D("RG9uIFd4ZUxOSXRBWXNhdVdt"),_D("U21va2UgQWRtaXJhbA=="),_D("Q3Vyc2VkIENhcHRhaW4="),_D("RGFya2JlYXJk"),_D("T3JkZXI="),_D("QXdha2VuZWQgSWNlIEFkbWlyYWw="),_D("VGlkZSBLZWVwZXI=")}
 elseif Third_Sea then
 tableBoss = {_D("U3RvbmU="),_D("SXNsYW5kIEVtcHJlc3M="),_D("S2lsbyBBZG1pcmFs"),_D("Q2FwdGFpbiBFbGVwaGFudA=="),_D("QmVhdXRpZnVsIFBpcmF0ZQ=="),_D("cmlwX2luZHJhIFRydWUgRm9ybQ=="),_D("TG9uZ21h"),_D("U291bCBSZWFwZXI="),_D("Q2FrZSBRdWVlbg==")}
 end


 phUThJKRWbVAQl syUbqqdTEbJtec = HYAqOrVauuPwRd.Main:AddDropdown(_D("c3lVYnFxZFRFYkp0ZWM="), {
 AFotbYvafQTmWI = _D("b0lqWG5rUHl6T3d5V04="),
 Values = tableBoss,
 Multi = false,
 Default = 1,
 })

 syUbqqdTEbJtec:SetValue(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))))
 syUbqqdTEbJtec:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.SelectBoss = Value
 end)

 phUThJKRWbVAQl BlMvBuIORxLJrN = HYAqOrVauuPwRd.Main:AddToggle(_D("QmxNdkJ1SU9SeExKck4="), {AFotbYvafQTmWI = _D("S2lsbCBnVkV5WkdHVVlVeFp6Qw=="), Default = false })

 BlMvBuIORxLJrN:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.AutoBoss = Value
 end)

 DIDKqcielyXJJu.BlMvBuIORxLJrN:SetValue(false)
 spawn(SvQdlbfnjcMYYN()
 while wait() do
 if _G.AutoBoss and BypassTP then
 pcall(SvQdlbfnjcMYYN()
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_G.SelectBoss) then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == _G.SelectBoss then
 if v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 repeat wait(0)
 
 AutoHaki()
 bringmob = true
 EquipTool(SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.Size = Vector3.new(80,80,80) 
 Tween(v.gXZtrRuZYlsrdE.CFrame * Pos)
 sethiddenproperty(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG,_D("U2ltdWxhdGlvblJhZGl1cw=="),math.huge)
 until not _G.AutoBoss or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 bringmob = false
 end
 end
 end
 elseif game.zqGxghDwQpmuUJ:FindFirstChild(_G.SelectBoss) then
 if ((game.zqGxghDwQpmuUJ:FindFirstChild(_G.SelectBoss).gXZtrRuZYlsrdE.CFrame).Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).magnitude <= 1500 then
 Tween(game.zqGxghDwQpmuUJ:FindFirstChild(_G.SelectBoss).gXZtrRuZYlsrdE.CFrame)
 else
 BTP(game.zqGxghDwQpmuUJ:FindFirstChild(_G.SelectBoss).gXZtrRuZYlsrdE.CFrame)
 end
 end
 end)
 end
 end
 end)
 
 spawn(SvQdlbfnjcMYYN()
 while wait() do
 if _G.AutoBoss and not BypassTP then
 pcall(SvQdlbfnjcMYYN()
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_G.SelectBoss) then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == _G.SelectBoss then
 if v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 repeat wait(0)
 
 AutoHaki()
 bringmob = true
 EquipTool(SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.Size = Vector3.new(80,80,80) 
 Tween(v.gXZtrRuZYlsrdE.CFrame * Pos)
 sethiddenproperty(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG,_D("U2ltdWxhdGlvblJhZGl1cw=="),math.huge)
 
 until not _G.AutoBoss or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 bringmob = false
 end
 end
 end
 else
 if game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_G.SelectBoss) then
 Tween(game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_G.SelectBoss).gXZtrRuZYlsrdE.CFrame * CFrame.new(5,10,7))
 end
 end
 end)
 end
 end
 end)


 phUThJKRWbVAQl GzertedVoAvlZz = HYAqOrVauuPwRd.Main:AddSection(_D("R3plcnRlZFZvQXZsWnogRmFybQ=="))

 if First_Sea then
 MaterialList = {
 _D("U2NyYXAgTWV0YWw="),_D("TGVhdGhlcg=="),_D("QW5nZWwgV2luZ3M="),_D("TWFnbWEgT3Jl"),_D("RmlzaCBUYWls")
 } elseif Second_Sea then
 MaterialList = {
 _D("U2NyYXAgTWV0YWw="),_D("TGVhdGhlcg=="),_D("UmFkaW9hY3RpdmUgR3plcnRlZFZvQXZsWno="),_D("TXlzdGljIERyb3BsZXQ="),_D("TWFnbWEgT3Jl"),_D("VmFtcGlyZSBGYW5n")
 } elseif Third_Sea then
 MaterialList = {
 _D("U2NyYXAgTWV0YWw="),_D("TGVhdGhlcg=="),_D("RGVtb25pYyBXaXNw"),_D("Q29uanVyZWQgQ29jb2E="),_D("RHJhZ29uIFNjYWxl"),_D("R3VucG93ZGVy"),_D("RmlzaCBUYWls"),_D("TWluaSBUdXNr")
 }
 end

 phUThJKRWbVAQl hJRgOKIBxBUHSa = HYAqOrVauuPwRd.Main:AddDropdown(_D("aEpSZ09LSUJ4QlVIU2E="), {
 AFotbYvafQTmWI = _D("b0lqWG5rUHl6T3d5V04="),
 Values = MaterialList,
 Multi = false,
 Default = 1,
 })

 hJRgOKIBxBUHSa:SetValue(_D("Q29uanVyZWQgQ29jb2E="))

 hJRgOKIBxBUHSa:OnChanged(SvQdlbfnjcMYYN(Value)
 SelectMaterial = Value
 end)

 phUThJKRWbVAQl YRJHSpOPAZcMAa = HYAqOrVauuPwRd.Main:AddToggle(_D("WVJKSFNwT1BBWmNNQWE="), {AFotbYvafQTmWI = _D("QXV0byBHemVydGVkVm9Bdmxaeg=="), Default = false })

 YRJHSpOPAZcMAa:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.AutoMaterial = Value
 end)
 DIDKqcielyXJJu.YRJHSpOPAZcMAa:SetValue(false)
 spawn(SvQdlbfnjcMYYN()
 while task.wait() do
 if _G.AutoMaterial then
 pcall(SvQdlbfnjcMYYN()
 MaterialMon(SelectMaterial)
 
 if BypassTP then
 if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - MPos.Position).Magnitude > 3500 then
 BTP(MPos)
 elseif (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - MPos.Position).Magnitude < 3500 then
 Tween(MPos)
 end
 else
 Tween(MPos)
 end
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(MMon) then
 for i,v in pairs (game.xkzLfqrlXOYczM.Enemies:GetChildren()) do
 if v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 if v.Name == MMon then
 repeat wait(0)
 
 AutoHaki()
 bringmob = true
 EquipTool(SelectWeapon)
 Tween(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 v.gXZtrRuZYlsrdE.Size = Vector3.new(60, 60, 60)
 v.gXZtrRuZYlsrdE.Transparency = 1
 v.KrlGhKjHesTsTl.JumpPower = 0
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.CanCollide = false
 FarmPos = v.gXZtrRuZYlsrdE.CFrame
 MonFarm = v.Name
 --Click
 until not _G.AutoMaterial or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 bringmob = false
 end
 end
 end
 else
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0="))[_D("X1dvcmxkT3JpZ2lu")].EnemySpawns:GetChildren()) do
 if string.find(v.Name, Mon) then
 if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - v.Position).Magnitude >= 10 then
 Tween(v.CFrame * CFrame.new(posX,posY,posZ))
 
 end
 end
 end
 end
 end)
 end
 end
 end)

 -----XggXraBDqgnxkm-----

phUThJKRWbVAQl bmHhQcbZfqDXwc = {}
for i, XPKQttDgjyuQHM in ipairs(game.XggXraBDqgnxkm:GetPlayers()) do
 bmHhQcbZfqDXwc[i] = XPKQttDgjyuQHM.Name
end 
oIjXnkPyzOwyWN = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddDropdown(_D("b0lqWG5rUHl6T3d5V04="), {
 AFotbYvafQTmWI = _D("U2VsZWN0IFJxVUZmdFF2ZmFFZUpSIFBWUA=="),
 Values = bmHhQcbZfqDXwc,
 Multi = false,
 Default = false,
})
oIjXnkPyzOwyWN:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().SelectPlayer = Value
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddToggle(_D("TXlUb2dnbGU="), {
 AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgUnFVRmZ0UXZmYUVlSlI="),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().TeleportPlayer = Value
 if getgenv().TeleportPlayer then
 task.spawn(SvQdlbfnjcMYYN()
 while getgenv().TeleportPlayer do
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")):FindFirstChild(getgenv().SelectPlayer)
 if XPKQttDgjyuQHM and XPKQttDgjyuQHM.aBYiproClLDecw then
 phUThJKRWbVAQl JALIhiwHjTAKBC = XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if JALIhiwHjTAKBC then
 topos(JALIhiwHjTAKBC.CFrame)
 end
 end
 task.wait(0.1)
 end
 end)
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBBaW1ib3Q="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().Aimbot = Value
end) 
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if getgenv().Aimbot and getgenv().SelectPlayer then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm:FindFirstChild(getgenv().SelectPlayer)
 phUThJKRWbVAQl VCcJFezvnLGNZv = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl KlPGYKwHNevVQC = VCcJFezvnLGNZv.aBYiproClLDecw
 phUThJKRWbVAQl rhMaedwfiWfIfa = KlPGYKwHNevVQC and KlPGYKwHNevVQC:FindFirstChildOfClass(_D("VG9vbA=="))
 if XPKQttDgjyuQHM and XPKQttDgjyuQHM.aBYiproClLDecw and rhMaedwfiWfIfa then
 phUThJKRWbVAQl XhTNgOiQyVvBvz = rhMaedwfiWfIfa:FindFirstChild(_D("UmVtb3RlRXZlbnQ="))
 phUThJKRWbVAQl rMnkdkfsOjEUIu = rhMaedwfiWfIfa:FindFirstChild(_D("TW91c2VQb3M="))
 phUThJKRWbVAQl afyMrCROTPAWbv = XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if XhTNgOiQyVvBvz and rMnkdkfsOjEUIu and afyMrCROTPAWbv then
 XhTNgOiQyVvBvz:FireServer(afyMrCROTPAWbv.Position)
 end
 end
 end
 end
 end)
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBBaW1ib3QgR3Vu"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AimbotGun = Value
end) 
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if getgenv().AimbotGun and SelectWeaponGun then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM and XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl phxNQIGfLHVwHE = KlPGYKwHNevVQC and KlPGYKwHNevVQC:FindFirstChild(SelectWeaponGun)
 phUThJKRWbVAQl OxXVmNaeZUZuKZ = game:GetService(_D("WGdnWHJhQkRxZ254a20=")):FindFirstChild(getgenv().SelectPlayer)
 phUThJKRWbVAQl pPmTVKfIBXmROI = OxXVmNaeZUZuKZ and OxXVmNaeZUZuKZ.aBYiproClLDecw
 phUThJKRWbVAQl WmoVsWZXlzUwjw = pPmTVKfIBXmROI and pPmTVKfIBXmROI:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if phxNQIGfLHVwHE and WmoVsWZXlzUwjw then
 pcall(SvQdlbfnjcMYYN()
 phxNQIGfLHVwHE.Cooldown.Value = 0
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {
 [1] = WmoVsWZXlzUwjw.Position,
 [2] = WmoVsWZXlzUwjw
 }
 phxNQIGfLHVwHE.RemoteFunctionShoot:InvokeServer(unpack(pnvTUSLxDuQwJo))
 phUThJKRWbVAQl evNsURAQevIrSo = game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M="))
 evNsURAQevIrSo:Button1Down(Vector2.new(1280, 672))
 end)
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("U2FmZSBNb2Rlcw=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().SafeMode = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().SafeMode then
 phUThJKRWbVAQl bSWjQsUWHzMbrv = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw
 if bSWjQsUWHzMbrv and bSWjQsUWHzMbrv:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and bSWjQsUWHzMbrv:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl LrOWJTpvjGMquj = bSWjQsUWHzMbrv.KrlGhKjHesTsTl.MaxHealth * (getgenv().Safe / 100)
 if bSWjQsUWHzMbrv.KrlGhKjHesTsTl.Health <= LrOWJTpvjGMquj then
 while getgenv().SafeMode and bSWjQsUWHzMbrv.KrlGhKjHesTsTl.Health <= LrOWJTpvjGMquj do
 task.wait(0.1)
 bSWjQsUWHzMbrv.gXZtrRuZYlsrdE.CFrame = bSWjQsUWHzMbrv.gXZtrRuZYlsrdE.CFrame + Vector3.new(0, 50, 0)
 end
 end
 end
 end
 end)
 end
end)
Slider = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddSlider(_D("U2xpZGVy"), {
 AFotbYvafQTmWI = _D("U2FmZSBNb2RlIEF0"),
 Default = 30,
 Min = 0,
 Max = 100,
 Rounding = 5,
 Callback = SvQdlbfnjcMYYN(Value)
 getgenv().Safe = Value
 end
})

phUThJKRWbVAQl qTPtBODBSATYaw = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddSection(_D("cVRQdEJPREJTQVRZYXc="))

-- Lista das ilhas e seus respectivos CFrames para cada CldCUQlgELuTwE
phUThJKRWbVAQl InqINErxbfTFkA = {
 {KgRaxVphTHecgJ = _D("V2luZE1pbGw="), position = CFrame.new(979.79895, 16.5516224, 1429.04663)},
 {KgRaxVphTHecgJ = _D("TWFyaW5l"), position = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)},
 {KgRaxVphTHecgJ = _D("TWlkZGxlIFRvd24="), position = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)},
 {KgRaxVphTHecgJ = _D("SnVuZ2xl"), position = CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)},
 {KgRaxVphTHecgJ = _D("UGlyYXRlIFZpbGxhZ2U="), position = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)},
 {KgRaxVphTHecgJ = _D("RGVzZXJ0"), position = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)},
 {KgRaxVphTHecgJ = _D("U25vdyBJc2xhbmQ="), position = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)},
 {KgRaxVphTHecgJ = _D("TWFyaW5lRm9yZA=="), position = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)},
 {KgRaxVphTHecgJ = _D("Q29sb3NzZXVt"), position = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)},
 {KgRaxVphTHecgJ = _D("U2t5IElzbGFuZCAx"), position = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)},
 {KgRaxVphTHecgJ = _D("U2t5IElzbGFuZCAy"), position = CFrame.new(-4607.82275, 872.54248, -1667.55688)},
 {KgRaxVphTHecgJ = _D("U2t5IElzbGFuZCAz"), position = CFrame.new(-7894.6176757813, 5547.1416015625, -380.29119873047)},
 {KgRaxVphTHecgJ = _D("UHJpc29u"), position = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)},
 {KgRaxVphTHecgJ = _D("TWFnbWEgVmlsbGFnZQ=="), position = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)},
 {KgRaxVphTHecgJ = _D("VW5kZXIgV2F0ZXIgSXNsYW5k"), position = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875)},
 {KgRaxVphTHecgJ = _D("Rm91bnRhaW4gQ2l0eQ=="), position = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)},
 {KgRaxVphTHecgJ = _D("TW9iIElzbGFuZA=="), position = CFrame.new(-2850.20068, 7.39224768, 5354.99268)}
}

phUThJKRWbVAQl wzqsqrpYExGaxd = {
 {KgRaxVphTHecgJ = _D("RGFyayBBcmVh"), position = CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)},
 {KgRaxVphTHecgJ = _D("RHJlc3Nyb3Nh"), position = CFrame.new(-394.220032, 123.189575, 1025.93884)},
 {KgRaxVphTHecgJ = _D("R3JlZW4gWm9uZQ=="), position = CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)},
 {KgRaxVphTHecgJ = _D("Q29saXNldW0="), position = CFrame.new(-1834.78308, 45.8297157, 1365.29724)},
 {KgRaxVphTHecgJ = _D("Wm9tYmllIElzbGFuZA=="), position = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)},
 {KgRaxVphTHecgJ = _D("VHdvIFNub3cgTW91bnRhaW4="), position = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)},
 {KgRaxVphTHecgJ = _D("UHVuayBIYXphcmQ="), position = CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)},
 {KgRaxVphTHecgJ = _D("Q3Vyc2VkIFNoaXA="), position = CFrame.new(-6519.63086, 83.2168808, -152.78447)},
 {KgRaxVphTHecgJ = _D("SWNlIENhc3RsZQ=="), position = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)},
 {KgRaxVphTHecgJ = _D("Rm9yZ290dGVuIElzbGFuZA=="), position = CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)},
 {KgRaxVphTHecgJ = _D("VXNzb3AgSXNsYW5k"), position = CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781)},
 {KgRaxVphTHecgJ = _D("R3JlYXQgVHJlZQ=="), position = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625)},
}

phUThJKRWbVAQl zHhOBorYAlEwsr = {
 {KgRaxVphTHecgJ = _D("Q2FzdGxlIE9uIFRoZSBDbGRDVVFsZ0VMdVR3RQ=="), position = CFrame.new(-5075.50927734375, 314.5155029296875, -3150.0224609375)},
{KgRaxVphTHecgJ = _D("TWluaVNreQ=="), position = CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)},
{KgRaxVphTHecgJ = _D("UG9ydCBUb3du"), position = CFrame.new(-301.832092, 20.6410122, 5558.41553)},
{KgRaxVphTHecgJ = _D("SHlkcmEgSXNsYW5k"), position = CFrame.new(5753.5478515625, 610.7880859375, -282.33172607421875)},
{KgRaxVphTHecgJ = _D("RmxvYXRpbmcgVHVydGxl"), position = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)},
{KgRaxVphTHecgJ = _D("TWFuc2lvbg=="), position = CFrame.new(-12468.5380859375, 375.0094299316406, -7554.62548828125)},
{KgRaxVphTHecgJ = _D("SGF1bnRlZCBDYXN0bGU="), position = CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)},
{KgRaxVphTHecgJ = _D("SWNlIENyZWFtIElzbGFuZA=="), position = CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)},
{KgRaxVphTHecgJ = _D("UGVhbnV0IElzbGFuZA=="), position = CFrame.new(-2112.65942, 192.615952, -10238.915)},
{KgRaxVphTHecgJ = _D("Q2FrZSBJc2xhbmQ="), position = CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375)},
{KgRaxVphTHecgJ = _D("Q29jb2EgSXNsYW5k"), position = CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375)},
{KgRaxVphTHecgJ = _D("Q2FuZHkgSXNsYW5k"), position = CFrame.new(-992.280884, 157.526825, -14397.002)},
{KgRaxVphTHecgJ = _D("VGlraSBPdXRwb3N0"), position = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)},
}

-- Função para verificar qual CldCUQlgELuTwE o jogador está com base no PlaceId
SvQdlbfnjcMYYN getSea()
 phUThJKRWbVAQl hwZmpMreDbvJnG, Sea2, Sea3 = false, false, false
 if game.PlaceId == 2753915549 then
 hwZmpMreDbvJnG = true
 elseif game.PlaceId == 4442272183 then
 Sea2 = true
 elseif game.PlaceId == 7449423635 then
 Sea3 = true
 end

 if hwZmpMreDbvJnG then
 return 1
 elseif Sea2 then
 return 2
 elseif Sea3 then
 return 3
 end
end

-- Função para criar o ESP nas ilhas
SvQdlbfnjcMYYN createESPForIsland(KgRaxVphTHecgJ, CFramePos, OEtzWBAWYwgTrP)
 -- Criar um Part (parte invisível para a base do ESP)
 phUThJKRWbVAQl bSebRYvNCbyxok = Instance.new(_D("UGFydA=="))
 bSebRYvNCbyxok.Size = Vector3.new(5, 5, 5)
 bSebRYvNCbyxok.Position = CFramePos.Position
 bSebRYvNCbyxok.Anchored = true
 bSebRYvNCbyxok.CanCollide = false
 bSebRYvNCbyxok.Parent = wExlmmqTxYIeST
 bSebRYvNCbyxok.Transparency = 1
 bSebRYvNCbyxok.Name = _D("SXNsYW5kRVNQ") -- Dando um nome para que possamos identificar e remover depois

 -- Criar o sUPNRqFQzAXnSE (o ESP)
 phUThJKRWbVAQl RFMlvXypxCaoik = Instance.new(_D("c1VQTlJxRlF6QVhuU0U="))
 RFMlvXypxCaoik.Parent = bSebRYvNCbyxok
 RFMlvXypxCaoik.Adornee = bSebRYvNCbyxok
 RFMlvXypxCaoik.Size = UDim2.new(0, 200, 0, 50)
 RFMlvXypxCaoik.StudsOffset = Vector3.new(0, OEtzWBAWYwgTrP, 0) -- Elevação ajustada com base no OEtzWBAWYwgTrP
 RFMlvXypxCaoik.AlwaysOnTop = true

 -- Criar o Label de Texto
 phUThJKRWbVAQl mLTgioppRrlwZH = Instance.new(_D("ZXpnd015SGtTdWtJc2w="))
 mLTgioppRrlwZH.Parent = RFMlvXypxCaoik
 mLTgioppRrlwZH.Size = UDim2.new(1, 0, 1, 0)
 mLTgioppRrlwZH.BackgroundTransparency = 1
 mLTgioppRrlwZH.TextColor3 = Color3.new(1, 1, 1)
 mLTgioppRrlwZH.TextStrokeTransparency = 0
 mLTgioppRrlwZH.TextStrokeColor3 = Color3.new(0, 0, 0)
 mLTgioppRrlwZH.Font = Enum.Font.GothamBold
 mLTgioppRrlwZH.TextSize = 16
 mLTgioppRrlwZH.Text = KgRaxVphTHecgJ

 -- Atualizar a distância entre o jogador e a ilha em tempo real
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).RenderStepped:Connect(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl AIZewxPvNzJKJX = math.floor((bSebRYvNCbyxok.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude)
 mLTgioppRrlwZH.Text = string.format(_D("JXMgKCVkbSk="), KgRaxVphTHecgJ, AIZewxPvNzJKJX)
 end)
end

-- Função para criar o ESP com base no CldCUQlgELuTwE do jogador
SvQdlbfnjcMYYN createESPForCurrentSea()
 phUThJKRWbVAQl vKEsKWPuuGZSkw = getSea() -- Determina em qual CldCUQlgELuTwE o jogador está
 phUThJKRWbVAQl OEtzWBAWYwgTrP = 5 -- Começa com a altura padrão

 phUThJKRWbVAQl UMcszQMgJfeytb = {} -- Lista de ilhas a serem usadas
 if vKEsKWPuuGZSkw == 1 then
 UMcszQMgJfeytb = InqINErxbfTFkA
 elseif vKEsKWPuuGZSkw == 2 then
 UMcszQMgJfeytb = wzqsqrpYExGaxd
 elseif vKEsKWPuuGZSkw == 3 then
 UMcszQMgJfeytb = zHhOBorYAlEwsr
 end

 -- Criar o ESP para as ilhas do CldCUQlgELuTwE atual
 for _, jZJAkzwAomdjZE in ipairs(UMcszQMgJfeytb) do
 createESPForIsland(jZJAkzwAomdjZE.KgRaxVphTHecgJ, jZJAkzwAomdjZE.position, OEtzWBAWYwgTrP)
 OEtzWBAWYwgTrP = OEtzWBAWYwgTrP + 2 -- Aumenta a altura do próximo ESP
 end
end

-- Função para remover os dMftyAGfnhYNGZ (Part e sUPNRqFQzAXnSE)
SvQdlbfnjcMYYN removeESP()
 for _, bSebRYvNCbyxok in ipairs(wExlmmqTxYIeST:GetChildren()) do
 if bSebRYvNCbyxok:IsA(_D("UGFydA==")) and bSebRYvNCbyxok.Name == _D("SXNsYW5kRVNQ") then
 bSebRYvNCbyxok:Destroy() -- Remove o Part (ESP)
 end
 end
end

-- Criar o toggle para ativar/desativar o ESP
phUThJKRWbVAQl srOTmqcypZcejd = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddToggle(_D("RXNwIElzbGFuZA=="), {AFotbYvafQTmWI = _D("RXNwIElzbGFuZA=="), Default = false})

srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 if Value then
 createESPForCurrentSea() -- Ativar o ESP quando o toggle for ligado
 else
 removeESP() -- Remover os dMftyAGfnhYNGZ quando o toggle for desligado
 end
end)

-- Configurações
phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG -- Jogador phUThJKRWbVAQl phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM.aBYiproClLDecw or XPKQttDgjyuQHM.CharacterAdded:Wait() -- Personagem do jogador

-- Função para criar o ESP (sUPNRqFQzAXnSE) para os baús
phUThJKRWbVAQl SvQdlbfnjcMYYN createChestESP(chest)
 if (chest.Name == _D("U2lsdmVyQ2hlc3Q=") or chest.Name == _D("R29sZENoZXN0") or chest.Name == _D("RGlhbW9uZENoZXN0")) and not chest:FindFirstChild(_D("TmFtZVRhZw==")) then
 -- Criar sUPNRqFQzAXnSE
 phUThJKRWbVAQl RFMlvXypxCaoik = Instance.new(_D("c1VQTlJxRlF6QVhuU0U="))
 RFMlvXypxCaoik.Name = _D("TmFtZVRhZw==")
 RFMlvXypxCaoik.Parent = chest

 -- Verificar a PrimaryPart ou tentar encontrar um BasePart
 phUThJKRWbVAQl MrdTMmFyPORsXw = chest.PrimaryPart or chest:FindFirstChildWhichIsA(_D("QmFzZVBhcnQ="))
 if not MrdTMmFyPORsXw then
 warn(_D("TmVuaHVtYSBQcmltYXJ5UGFydCBvdSBCYXNlUGFydCBlbmNvbnRyYWRhIHBhcmE6IA==") .. chest.Name)
 return
 end

 RFMlvXypxCaoik.Adornee = MrdTMmFyPORsXw
 RFMlvXypxCaoik.Size = UDim2.new(0, 200, 0, 50)
 RFMlvXypxCaoik.StudsOffset = Vector3.new(0, 3, 0) -- Altura acima do baú
 RFMlvXypxCaoik.AlwaysOnTop = true

 -- Criar o texto
 phUThJKRWbVAQl mLTgioppRrlwZH = Instance.new(_D("ZXpnd015SGtTdWtJc2w="))
 mLTgioppRrlwZH.Parent = RFMlvXypxCaoik
 mLTgioppRrlwZH.Size = UDim2.new(1, 0, 1, 0)
 mLTgioppRrlwZH.BackgroundTransparency = 1
 
 -- Definir a cor do texto com base no tipo de baú
 if chest.Name == _D("U2lsdmVyQ2hlc3Q=") then
 mLTgioppRrlwZH.TextColor3 = Color3.new(0.75, 0.75, 0.75) -- Cor prata para SilverChest
 elseif chest.Name == _D("R29sZENoZXN0") then
 mLTgioppRrlwZH.TextColor3 = Color3.new(1, 0.84, 0) -- Cor dourada para GoldChest
 elseif chest.Name == _D("RGlhbW9uZENoZXN0") then
 mLTgioppRrlwZH.TextColor3 = Color3.new(0.4, 0.8, 1) -- Cor azul-celeste para DiamondChest
 end

 mLTgioppRrlwZH.TextStrokeTransparency = 0 -- Contorno do texto
 mLTgioppRrlwZH.TextStrokeColor3 = Color3.new(0, 0, 0) -- Contorno preto para contraste
 mLTgioppRrlwZH.Font = Enum.Font.GothamBold
 mLTgioppRrlwZH.TextSize = 16
 mLTgioppRrlwZH.Text = chest.Name -- Nome do baú

 -- Atualizar o texto com a distância
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).RenderStepped:Connect(SvQdlbfnjcMYYN()
 if chest and MrdTMmFyPORsXw and KlPGYKwHNevVQC.PrimaryPart then
 phUThJKRWbVAQl AIZewxPvNzJKJX = (MrdTMmFyPORsXw.Position - KlPGYKwHNevVQC.PrimaryPart.Position).Magnitude
 phUThJKRWbVAQl OJyEngkowhPAid = math.floor(AIZewxPvNzJKJX * 10) / 10 -- Arredonda para 1 casa decimal
 mLTgioppRrlwZH.Text = string.format(_D("JXNcbiglLjFmbSk="), chest.Name, OJyEngkowhPAid)
 end
 end)
 end
end

-- Função para procurar e criar o ESP para todos os baús (SilverChest, GoldChest e DiamondChest) na wExlmmqTxYIeST
phUThJKRWbVAQl SvQdlbfnjcMYYN searchAndAddChestsESP()
 for _, chest in pairs(wExlmmqTxYIeST:GetDescendants()) do
 if (chest.Name == _D("U2lsdmVyQ2hlc3Q=") or chest.Name == _D("R29sZENoZXN0") or chest.Name == _D("RGlhbW9uZENoZXN0")) and chest:IsA(_D("TW9kZWw=")) then
 createChestESP(chest)
 end
 end
end

-- Detectar baús SilverChest, GoldChest e DiamondChest automaticamente quando são adicionados
wExlmmqTxYIeST.ChildAdded:Connect(SvQdlbfnjcMYYN(child)
 if (child.Name == _D("U2lsdmVyQ2hlc3Q=") or child.Name == _D("R29sZENoZXN0") or child.Name == _D("RGlhbW9uZENoZXN0")) and child:IsA(_D("TW9kZWw=")) then
 createChestESP(child)
 end
end)

-- Adicionar ESP aos baús SilverChest, GoldChest e DiamondChest existentes no momento
searchAndAddChestsESP()

-- srOTmqcypZcejd para controlar o ESP
phUThJKRWbVAQl srOTmqcypZcejd = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddToggle(_D("VG9nZ2xlRVNQ"), {AFotbYvafQTmWI = _D("RXNwIENoZXN0"), Default = false})

srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(state)
 -- Desativa ou ativa o ESP com base no toggle
 for _, chest in pairs(wExlmmqTxYIeST:GetDescendants()) do
 if (chest.Name == _D("U2lsdmVyQ2hlc3Q=") or chest.Name == _D("R29sZENoZXN0") or chest.Name == _D("RGlhbW9uZENoZXN0")) and chest:IsA(_D("TW9kZWw=")) then
 if state then
 -- Se o toggle estiver ativado, cria o ESP
 createChestESP(chest)
 else
 -- Se o toggle estiver desativado, remove o ESP
 phUThJKRWbVAQl pkBKcRbbzQSkxT = chest:FindFirstChild(_D("TmFtZVRhZw=="))
 if pkBKcRbbzQSkxT then
 pkBKcRbbzQSkxT:Destroy()
 end
 end
 end
 end
end)

-----------------------------
phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
phUThJKRWbVAQl dnDiHgYPQNdTCp = game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A="))
phUThJKRWbVAQl sFNhEnqNuaqEaG = XggXraBDqgnxkm.sFNhEnqNuaqEaG
phUThJKRWbVAQl dMftyAGfnhYNGZ = {}
phUThJKRWbVAQl vykoDNNQtWQdhW = false

-- Função para criar ESP em um jogador
phUThJKRWbVAQl SvQdlbfnjcMYYN createESP(XPKQttDgjyuQHM)
 if XPKQttDgjyuQHM == sFNhEnqNuaqEaG or not XPKQttDgjyuQHM.aBYiproClLDecw or not XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 return
 end

 phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl OdSSDwxKzrOmwX = KlPGYKwHNevVQC:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU="), 5)
 if not OdSSDwxKzrOmwX then return end

 -- Criando o sUPNRqFQzAXnSE
 phUThJKRWbVAQl RFMlvXypxCaoik = Instance.new(_D("c1VQTlJxRlF6QVhuU0U="))
 RFMlvXypxCaoik.Name = _D("RVNQ")
 RFMlvXypxCaoik.Adornee = OdSSDwxKzrOmwX
 RFMlvXypxCaoik.Size = UDim2.new(0, 200, 0, 50)
 RFMlvXypxCaoik.StudsOffset = Vector3.new(0, 2, 0)
 RFMlvXypxCaoik.AlwaysOnTop = true

 -- Criando o ezgwMyHkSukIsl para exibir o nome e a distância
 phUThJKRWbVAQl puIZIVdlARbMaw = Instance.new(_D("ZXpnd015SGtTdWtJc2w="), RFMlvXypxCaoik)
 puIZIVdlARbMaw.Size = UDim2.new(1, 0, 1, 0)
 puIZIVdlARbMaw.BackgroundTransparency = 1
 puIZIVdlARbMaw.TextColor3 = Color3.new(1, 1, 1)
 puIZIVdlARbMaw.TextStrokeTransparency = 0.5
 puIZIVdlARbMaw.TextScaled = true
 puIZIVdlARbMaw.Font = Enum.Font.SourceSansBold
 puIZIVdlARbMaw.Text = XPKQttDgjyuQHM.Name .. _D("IC0gRGlzdMOibmNpYTogMA==")

 RFMlvXypxCaoik.Parent = OdSSDwxKzrOmwX
 dMftyAGfnhYNGZ[XPKQttDgjyuQHM] = RFMlvXypxCaoik
end

-- Função para remover ESP
phUThJKRWbVAQl SvQdlbfnjcMYYN removeESP(XPKQttDgjyuQHM)
 if dMftyAGfnhYNGZ[XPKQttDgjyuQHM] then
 dMftyAGfnhYNGZ[XPKQttDgjyuQHM]:Destroy()
 dMftyAGfnhYNGZ[XPKQttDgjyuQHM] = nil
 end
end

-- Função para atualizar as distâncias
phUThJKRWbVAQl SvQdlbfnjcMYYN updateESP()
 for XPKQttDgjyuQHM, RFMlvXypxCaoik in pairs(dMftyAGfnhYNGZ) do
 if XPKQttDgjyuQHM.aBYiproClLDecw and XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl abjSVUJUqypFrA = XPKQttDgjyuQHM.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 phUThJKRWbVAQl CQXChceqwErFZS = sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 phUThJKRWbVAQl AIZewxPvNzJKJX = (CQXChceqwErFZS - abjSVUJUqypFrA).Magnitude
 RFMlvXypxCaoik.ezgwMyHkSukIsl.Text = string.format(_D("JXMgLSBEaXN0w6JuY2lhOiAlLjFm"), XPKQttDgjyuQHM.Name, AIZewxPvNzJKJX)
 end
 end
end

-- Função para ativar ESP
phUThJKRWbVAQl SvQdlbfnjcMYYN enableESP()
 for _, XPKQttDgjyuQHM in pairs(XggXraBDqgnxkm:GetPlayers()) do
 createESP(XPKQttDgjyuQHM)
 end
 XggXraBDqgnxkm.PlayerAdded:Connect(createESP)
 XggXraBDqgnxkm.PlayerRemoving:Connect(removeESP)
 dnDiHgYPQNdTCp.RenderStepped:Connect(updateESP)
end

-- Função para desativar ESP
phUThJKRWbVAQl SvQdlbfnjcMYYN disableESP()
 for _, RFMlvXypxCaoik in pairs(dMftyAGfnhYNGZ) do
 RFMlvXypxCaoik:Destroy()
 end
 dMftyAGfnhYNGZ = {}
end

-- srOTmqcypZcejd para ativar/desativar o ESP
phUThJKRWbVAQl srOTmqcypZcejd = HYAqOrVauuPwRd.XggXraBDqgnxkm:AddToggle(_D("RXNwIFJxVUZmdFF2ZmFFZUpS"), {AFotbYvafQTmWI = _D("RXNwIFJxVUZmdFF2ZmFFZUpS"), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 vykoDNNQtWQdhW = value
 if vykoDNNQtWQdhW then
 enableESP()
 else
 disableESP()
 end
end)



-----PWzhoYnLArTEnQ-----

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBGYWN0b3J5"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoFactory = Value
 StopTween(getgenv().AutoFactory)
end)
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if not getgenv().AutoFactory or not World2 then
 continue
 end
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl SgGnCHGBaaFdnl = KTWBQhwktSkgEc:FindFirstChild(_D("Q29yZQ=="))
 if SgGnCHGBaaFdnl and SgGnCHGBaaFdnl.KrlGhKjHesTsTl.Health > 0 then
 repeat
 task.wait(0.1)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 topos(SgGnCHGBaaFdnl.gXZtrRuZYlsrdE.CFrame)
 until SgGnCHGBaaFdnl.KrlGhKjHesTsTl.Health <= 0 or not getgenv().AutoFactory
 else
 topos(CFrame.new(448.46756, 199.356781, -441.389252))
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), { AFotbYvafQTmWI = _D("QXV0byBQaXJhdGUgZVh5aHViZWVsd01CbEs="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoPirateRaid = Value
 StopTween(getgenv().AutoPirateRaid)
end)
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if not getgenv().AutoPirateRaid or not World3 then
 continue
 end
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl OuYbkiBAkgCwFy = CFrame.new(-5496.17432, 313.768921, -2841.53027)
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl UfXaCXGPsKitMs = XPKQttDgjyuQHM.aBYiproClLDecw and XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) 
 if not UfXaCXGPsKitMs then return end
 phUThJKRWbVAQl CeHUNXAOdRmwHh = (CFrame.new(-5539.311, 313.801, -2972.372).Position - UfXaCXGPsKitMs.Position).Magnitude
 if CeHUNXAOdRmwHh <= 500 then
 for _, ksJlFEgkkErXbu in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if getgenv().AutoPirateRaid and ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health > 0 then
 phUThJKRWbVAQl iObuOYtDxzVRtS = (ksJlFEgkkErXbu.gXZtrRuZYlsrdE.Position - UfXaCXGPsKitMs.Position).Magnitude
 if iObuOYtDxzVRtS < 2000 then
 repeat task.wait(0.1)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CanCollide = false
 topos(ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame * Pos)
 getgenv().StartMagnet = true
 until ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health <= 0 or not ksJlFEgkkErXbu.Parent or not getgenv().AutoPirateRaid
 end
 end
 end
 else
 UnEquipWeapon(getgenv().SelectWeapon)
 if BypassTP then
 phUThJKRWbVAQl AwiPULidhBCxtH = (UfXaCXGPsKitMs.Position - OuYbkiBAkgCwFy.Position).Magnitude
 if AwiPULidhBCxtH > 1500 then
 BTP(OuYbkiBAkgCwFy)
 elseif AwiPULidhBCxtH <= 1500 then
 topos(OuYbkiBAkgCwFy)
 end
 end
 topos(CFrame.new(-5122, 315, -2963))
 end
 end)
 end
end)

phUThJKRWbVAQl iiFcQjCjpQZIBb = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("aWlGY1FqQ2pwUVpJQmI="), {AFotbYvafQTmWI = _D("QXV0byBFbGl0ZSBIdW50ZXI="), Default = false })

 iiFcQjCjpQZIBb:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.AutoElite = Value
 end)
 DIDKqcielyXJJu.iiFcQjCjpQZIBb:SetValue(false)
 spawn(SvQdlbfnjcMYYN()
 while task.wait() do
 if _G.AutoElite then
 pcall(SvQdlbfnjcMYYN()
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Visible == true then
 if string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text,_D("RGlhYmxv")) or string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text,_D("RGVhbmRyZQ==")) or string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text,_D("VXJiYW4=")) then
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RGlhYmxv")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RGVhbmRyZQ==")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("VXJiYW4=")) then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 if v.Name == _D("RGlhYmxv") or v.Name == _D("RGVhbmRyZQ==") or v.Name == _D("VXJiYW4=") then
 repeat wait(0)
 
 EquipTool(SelectWeapon)
 AutoHaki()
 toTarget(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 MonsterPosition = v.gXZtrRuZYlsrdE.CFrame
 v.gXZtrRuZYlsrdE.CFrame = v.gXZtrRuZYlsrdE.CFrame
 v.KrlGhKjHesTsTl.JumpPower = 0
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.gXZtrRuZYlsrdE.Size = Vector3.new(1, 1, 1)
 until _G.AutoElite == false or v.KrlGhKjHesTsTl.Health <= 0 or not v.Parent
 end
 end
 end
 else
 
 if game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGlhYmxv")) then
 toTarget(game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGlhYmxv")).gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGVhbmRyZQ==")) then
 toTarget(game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGVhbmRyZQ==")).gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("VXJiYW4=")) then
 toTarget(game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("VXJiYW4=")).gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 end
 
 end
 
 end
 else
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("RWxpdGVIdW50ZXI="))
 end
 end)
 end
 end
 end)

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("SG9wIFNlcnZlciBFbGl0ZSBIdW50ZXI="), Description = _D("RmluZCBOZXcgRWxpdGUgSHVudGVyIFNlcnZlcg=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoEliteHunterHop = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.3) do
 if getgenv().AutoEliteHunter and World3 then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl kYELdBukVnJquv = XPKQttDgjyuQHM.XUBvNPokLCGyoF.Main.Quest
 if kYELdBukVnJquv.Visible == true then
 phUThJKRWbVAQl LuaiAvKaNeKomb = kYELdBukVnJquv.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text
 phUThJKRWbVAQl VwhlIYNgqskweJ = {_D("RGlhYmxv"), _D("RGVhbmRyZQ=="), _D("VXJiYW4=")}
 phUThJKRWbVAQl voUbGllkSiqAmd = false 
 for _, ksJlFEgkkErXbu in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if table.find(VwhlIYNgqskweJ, ksJlFEgkkErXbu.Name) and 
 ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and 
 ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and 
 ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health > 0 then 
 voUbGllkSiqAmd = true
 repeat
 task.wait(0.2)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 if ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CanCollide = false
 ksJlFEgkkErXbu.KrlGhKjHesTsTl.WalkSpeed = 0
 topos(ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame * Pos)
 end
 until not getgenv().AutoEliteHunter or ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health <= 0 or not ksJlFEgkkErXbu.Parent
 break
 end
 end
 if not voUbGllkSiqAmd then
 for _, KgRaxVphTHecgJ in pairs(VwhlIYNgqskweJ) do
 phUThJKRWbVAQl ksJlFEgkkErXbu = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(KgRaxVphTHecgJ)
 if ksJlFEgkkErXbu and ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 topos(ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame * CFrame.new(2, 20, 2))
 break
 end
 end
 end
 else
 phUThJKRWbVAQl dxjUfHRcTeUKEh = game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB[_D("VklkamtpVEd1SnRxQWU=")]:InvokeServer(_D("RWxpdGVIdW50ZXI="))
 if getgenv().AutoEliteHunterHop and dxjUfHRcTeUKEh == _D("SSBkb24nYVBRcFVzUGtCZGFUVXcgaGF2ZSBhbnl0aGluZyBmb3IgeW91IHJpZ2h0IG5vdy4gQ29tZSBiYWNrIGxhdGVyLg==") then
 Hop()
 end
 end
 end)
 end
 end
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBUcnkgTHVjaw=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoTryLuck = Value
 StopTween(getgenv().AutoTryLuck) 
end)
spawn(SvQdlbfnjcMYYN()
 while wait(0.5) do
 if getgenv().AutoTryLuck and World3 then 
 phUThJKRWbVAQl GFenAgyQBtoxle = CFrame.new(-8652.99707, 143.450119, 6170.50879)
 if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - GFenAgyQBtoxle.Position).magnitude > 5 then
 topos(GFenAgyQBtoxle)
 wait(0.5)
 end
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Z3JhdmVzdG9uZUV2ZW50"), 2)
 end
 end
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBPcmHDp8Ojbw=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoPray = Value
 StopTween(getgenv().AutoPray)
end)
spawn(SvQdlbfnjcMYYN()
 while wait(0.5) do
 if getgenv().AutoPray and World3 then 
 phUThJKRWbVAQl GFenAgyQBtoxle = CFrame.new(-8652.99707, 143.450119, 6170.50879)
 if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - GFenAgyQBtoxle.Position).magnitude > 5 then
 topos(GFenAgyQBtoxle)
 wait(0.5)
 end
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Z3JhdmVzdG9uZUV2ZW50"), 1)
 end)
 end
 end
end)

if Third_Sea then
phUThJKRWbVAQl izvTnkHAPEhCPQ = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("aXp2VG5rSEFQRWhDUFE="), {AFotbYvafQTmWI = _D("QXV0byBCb25l"), Default = false })
izvTnkHAPEhCPQ:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.AutoBone = Value
end)
DIDKqcielyXJJu.izvTnkHAPEhCPQ:SetValue(false)
phUThJKRWbVAQl yMPXIYQLukTlRG = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
phUThJKRWbVAQl RGpEOpttzjNNBF = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)
spawn(SvQdlbfnjcMYYN()
 while wait() do
 if _G.AutoBone then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl QJckJJspIvMsOi = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text
 if not string.find(QJckJJspIvMsOi, _D("RGVtb25pYyBTb3Vs")) then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWJhbmRvblF1ZXN0"))
 end
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Visible == false then
 if BypassTP then
 if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - RGpEOpttzjNNBF.Position).Magnitude > 2500 then
 BTP(RGpEOpttzjNNBF)
 elseif (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - yMPXIYQLukTlRG.Position).Magnitude < 2500 then
 Tween(yMPXIYQLukTlRG)
 end
 else
 Tween(yMPXIYQLukTlRG)
 end
 if (yMPXIYQLukTlRG.Position - game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude <= 3 then 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U3RhcnRRdWVzdA=="),_D("SGF1bnRlZFF1ZXN0Mg=="),1)
 end
 elseif game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Visible == true then
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("UmVib3JuIFNrZWxldG9u")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("TGl2aW5nIFpvbWJpZQ==")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RGVtb25pYyBTb3Vs")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("UG9zZXNzZWQgTXVtbXk=")) then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v.KrlGhKjHesTsTl.Health > 0 then
 if v.Name == _D("UmVib3JuIFNrZWxldG9u") or v.Name == _D("TGl2aW5nIFpvbWJpZQ==") or v.Name == _D("RGVtb25pYyBTb3Vs") or v.Name == _D("UG9zZXNzZWQgTXVtbXk=") then
 if string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text, _D("RGVtb25pYyBTb3Vs")) then
 repeat wait(0)
 
 AutoHaki()
 bringmob = true
 EquipTool(SelectWeapon)
 Tween(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 v.gXZtrRuZYlsrdE.Size = Vector3.new(1, 1, 1)
 v.gXZtrRuZYlsrdE.Transparency = 1
 v.KrlGhKjHesTsTl.JumpPower = 0
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.CanCollide = false
 FarmPos = v.gXZtrRuZYlsrdE.CFrame
 MonFarm = v.Name
 until not _G.AutoBone or v.KrlGhKjHesTsTl.Health <= 0 or not v.Parent or game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Visible == false
 else
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWJhbmRvblF1ZXN0"))
 bringmob = false
 end
 end
 end
 end
 else
 end
 end
 end)
 end
 end
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBEb3VnaCBLaW5n"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoDoughKing = Value
 StopTween(getgenv().AutoDoughKing)
end)
spawn(SvQdlbfnjcMYYN()
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Heartbeat:Connect(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if getgenv().AutoDoughKing and StartCakegetgenv().StartMagnet and 
 (v.Name == _D("Q29va2llIENyYWZ0ZXI=") or v.Name == _D("Q2FrZSBHdWFyZA==") or v.Name == _D("QmFraW5nIFN0YWZm") or v.Name == _D("SGVhZCBCYWtlcg==")) and 
 (v.gXZtrRuZYlsrdE.Position - POSCAKE.Position).magnitude <= 300 then
 v.gXZtrRuZYlsrdE.CFrame = POSCAKE
 v.gXZtrRuZYlsrdE.CanCollide = false
 if v.KrlGhKjHesTsTl:FindFirstChild(_D("QW5pbWF0b3I=")) then
 v.KrlGhKjHesTsTl.Animator:Destroy()
 end
 sethiddenproperty(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 end
 end
 end)
 end)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.2) do
 if getgenv().AutoDoughKing and World3 then
 pcall(SvQdlbfnjcMYYN()
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or 
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) then
 if string.find(game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U3dlZXRDaGFsaWNlTnBj")), _D("V2hlcmU=")) then
 game.StarterGui:SetCore(_D("U2VuZE5vdGlmaWNhdGlvbg=="), {
 AFotbYvafQTmWI = _D("Tm90aWZpY2F0aW9u"),
 Text = _D("Tm90IEhhdmUgRW5vdWdoIEd6ZXJ0ZWRWb0F2bFp6"),
 ElivOJFJfBFmao = _D("aHR0cDovL3d3dy5yb2Jsb3guY29tL2Fzc2V0Lz9xd2FQSUpHblhmZVVIVD0="),
 Duration = 2.5
 })
 else
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U3dlZXRDaGFsaWNlTnBj"))
 end
 elseif game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("U3dlZXQgQ2hhbGljZQ==")) or 
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("U3dlZXQgQ2hhbGljZQ==")) then
 if string.find(game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q2FrZVByaW5jZVNwYXduZXI=")), 
 _D("RG8geW91IHdhbnQgdG8gb3BlbiB0aGUgcG9ydGFsIG5vdz8=")) then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q2FrZVByaW5jZVNwYXduZXI="))
 else
 if game.xkzLfqrlXOYczM.Enemies:FindFirstChild(_D("QmFraW5nIFN0YWZm")) or 
 game.xkzLfqrlXOYczM.Enemies:FindFirstChild(_D("SGVhZCBCYWtlcg==")) or 
 game.xkzLfqrlXOYczM.Enemies:FindFirstChild(_D("Q2FrZSBHdWFyZA==")) or 
 game.xkzLfqrlXOYczM.Enemies:FindFirstChild(_D("Q29va2llIENyYWZ0ZXI=")) then
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do 
 if (v.Name == _D("QmFraW5nIFN0YWZm") or v.Name == _D("SGVhZCBCYWtlcg==") or 
 v.Name == _D("Q2FrZSBHdWFyZA==") or v.Name == _D("Q29va2llIENyYWZ0ZXI=")) and 
 v.KrlGhKjHesTsTl.Health > 0 then
 repeat
 task.wait(0.05)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 StartCakegetgenv().StartMagnet = true
 POSCAKE = v.gXZtrRuZYlsrdE.CFrame
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 until getgenv().AutoDoughKing == false or 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("Q2FrZSBQcmluY2U=")) or 
 not v.Parent or 
 v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 else
 StartCakegetgenv().StartMagnet = false
 topos(CFrame.new(-1820.063, 210.748, -12297.496))
 end
 end
 elseif game.zqGxghDwQpmuUJ:FindFirstChild(_D("RG91Z2ggS2luZw==")) or 
 game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RG91Z2ggS2luZw==")) then
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RG91Z2ggS2luZw==")) then
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do 
 if v.Name == _D("RG91Z2ggS2luZw==") then
 repeat
 task.wait(0.05)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 until getgenv().AutoDoughKing == false or 
 not v.Parent or 
 v.KrlGhKjHesTsTl.Health <= 0
 end 
 end 
 else
 topos(CFrame.new(-2009.280, 4532.972, -14937.308))
 end
 elseif game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("UmVkIEtleQ==")) or 
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("UmVkIEtleQ==")) then
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {
 [1] = _D("Q2FrZVNjaWVudGlzdA=="),
 [2] = _D("Q2hlY2s=")
 }
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(pnvTUSLxDuQwJo))
 else
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Visible == true then
 if string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text, _D("RGlhYmxv")) or 
 string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text, _D("RGVhbmRyZQ==")) or 
 string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text, _D("VXJiYW4=")) then
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RGlhYmxv")) or 
 game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RGVhbmRyZQ==")) or 
 game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("VXJiYW4=")) then
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == _D("RGlhYmxv") or v.Name == _D("RGVhbmRyZQ==") or v.Name == _D("VXJiYW4=") then
 if v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and 
 v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and 
 v.KrlGhKjHesTsTl.Health > 0 then
 repeat
 task.wait(0.05)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon) 
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos) 
 sethiddenproperty(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 until getgenv().AutoDoughKing == false or 
 v.KrlGhKjHesTsTl.Health <= 0 or 
 not v.Parent or 
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or 
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ=="))
 end
 end
 end
 end
 end
 end
 end
 end)
 end
 end
end)

phUThJKRWbVAQl cObxAcZNKgJpSM = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("Y09ieEFjWk5LZ0pwU00="), {AFotbYvafQTmWI = _D("QXV0byBDYWtlIFByaW5jZQ=="), Default = false })
cObxAcZNKgJpSM:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.CakePrince = Value
end)
DIDKqcielyXJJu.cObxAcZNKgJpSM:SetValue(false)
spawn(SvQdlbfnjcMYYN()
 while wait() do
 if _G.CakePrince then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl nSfTXKlWKbRMht = CFrame.new(-2142.66821,71.2588654,-12327.4619,0.996939838,-4.33107843e-08,0.078172572,4.20252917e-08,1,1.80894251e-08,-0.078172572,-1.47488439e-08, 0.996939838)
 if BypassTP then
 if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - nSfTXKlWKbRMht.Position).Magnitude > 2000 then
 BTP(nSfTXKlWKbRMht)
 wait(3)
 elseif (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - nSfTXKlWKbRMht.Position).Magnitude < 2000 then
 Tween(nSfTXKlWKbRMht)
 end
 end
 if game.zqGxghDwQpmuUJ:FindFirstChild(_D("Q2FrZSBQcmluY2U=")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("Q2FrZSBQcmluY2U=")) then 
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("Q2FrZSBQcmluY2U=")) then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do 
 if v.Name == _D("Q2FrZSBQcmluY2U=") then
 repeat wait(0)
 
 AutoHaki()
 EquipTool(SelectWeapon)
 v.gXZtrRuZYlsrdE.Size = Vector3.new(1, 1, 1)
 v.gXZtrRuZYlsrdE.CanCollide = false
 Tween(v.gXZtrRuZYlsrdE.CFrame * Pos)
 --Click
 until _G.CakePrince == false or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 bringmob = false
 end 
 end 
 else
 Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
 end
 else
 if game.xkzLfqrlXOYczM.Enemies:FindFirstChild(_D("QmFraW5nIFN0YWZm")) or game.xkzLfqrlXOYczM.Enemies:FindFirstChild(_D("SGVhZCBCYWtlcg==")) or game.xkzLfqrlXOYczM.Enemies:FindFirstChild(_D("Q2FrZSBHdWFyZA==")) or game.xkzLfqrlXOYczM.Enemies:FindFirstChild(_D("Q29va2llIENyYWZ0ZXI=")) then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do 
 if (v.Name == _D("QmFraW5nIFN0YWZm") or v.Name == _D("SGVhZCBCYWtlcg==") or v.Name == _D("Q2FrZSBHdWFyZA==") or v.Name == _D("Q29va2llIENyYWZ0ZXI=")) and v.KrlGhKjHesTsTl.Health > 0 then
 repeat wait(0)
 
 AutoHaki()
 bringmob = true
 EquipTool(SelectWeapon)
 v.gXZtrRuZYlsrdE.Size = Vector3.new(1, 1, 1) 
 FarmPos = v.gXZtrRuZYlsrdE.CFrame
 MonFarm = v.Name
 Tween(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 until _G.CakePrince == false or game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("Q2FrZSBQcmluY2U=")) or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 bringmob = false
 end
 end
 else
 Tween(nSfTXKlWKbRMht)
 end
 end
 end)
 end
 end
 end)

 

phUThJKRWbVAQl aFjqaVkpIdHdhS = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("YUZqcWFWa3BJZEhkaFM="), {AFotbYvafQTmWI = _D("QXV0byBTcGF3biBDYWtlIFByaW5jZQ=="), Default = false })
 aFjqaVkpIdHdhS:OnChanged(SvQdlbfnjcMYYN(Value)
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q2FrZVByaW5jZVNwYXduZXI="),Value)
 end)
 DIDKqcielyXJJu.aFjqaVkpIdHdhS:SetValue(false)
end
 
 
 if Second_Sea then
 phUThJKRWbVAQl hOtciwIQNImEHj = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("aE90Y2l3SVFOSW1FSGo="), {AFotbYvafQTmWI = _D("QXV0byBFY3RvcGxhc20="), Default = false })
 hOtciwIQNImEHj:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.Ectoplasm = Value
 end)
 DIDKqcielyXJJu.hOtciwIQNImEHj:SetValue(false)

 spawn(SvQdlbfnjcMYYN()
 while wait(.1) do
 pcall(SvQdlbfnjcMYYN()
 if _G.Ectoplasm then
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("U2hpcCBEZWNraGFuZA==")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("U2hpcCBFbmdpbmVlcg==")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("U2hpcCBTdGV3YXJk")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("U2hpcCBPZmZpY2Vy")) then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == _D("U2hpcCBTdGV3YXJk") or v.Name == _D("U2hpcCBFbmdpbmVlcg==") or v.Name == _D("U2hpcCBEZWNraGFuZA==") or v.Name == _D("U2hpcCBPZmZpY2Vy") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) then
 if v.KrlGhKjHesTsTl.Health > 0 then
 repeat wait(0)
 
 AutoHaki()
 bringmob = true
 EquipTool(SelectWeapon)
 Tween(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 v.gXZtrRuZYlsrdE.Size = Vector3.new(60, 60, 60)
 v.gXZtrRuZYlsrdE.Transparency = 1
 v.KrlGhKjHesTsTl.JumpPower = 0
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.CanCollide = false
 FarmPos = v.gXZtrRuZYlsrdE.CFrame
 MonFarm = v.Name
 --Click
 
 until _G.Ectoplasm == false or not v.Parent or v.KrlGhKjHesTsTl.Health == 0 or not game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(v.Name)
 bringmob = false
 end
 end
 end
 else
 phUThJKRWbVAQl dpxibMmByOYbSz = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude
 if dpxibMmByOYbSz > 20000 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
 end
 Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
 end
 end
 end)
 end
 end)
end



ToggleChest = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("VG9nZ2xlQ2hlc3Q="), {AFotbYvafQTmWI = _D("QXV0byBDaGVzdA=="), Default = false })
ToggleChest:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoFarmChest = Value
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl VhKaVworDvhuvh = nil
 while wait(0.2) do
 if getgenv().AutoFarmChest then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM.aBYiproClLDecw or XPKQttDgjyuQHM.CharacterAdded:Wait()
 phUThJKRWbVAQl FyWnFFZakWhtDs = KlPGYKwHNevVQC:GetPivot().Position
 phUThJKRWbVAQl rSsxuTfidXgqyu = game:GetService(_D("Q29sbGVjdGlvblNlcnZpY2U="))
 phUThJKRWbVAQl IOUWtmrRJLoYmn = rSsxuTfidXgqyu:GetTagged(_D("X0NoZXN0VGFnZ2Vk"))
 phUThJKRWbVAQl WBpFWkYdqfvNYG, minDist = nil, math.huge
 for _, chest in ipairs(IOUWtmrRJLoYmn) do
 if not chest:GetAttribute(_D("SXNEaXNhYmxlZA==")) then
 phUThJKRWbVAQl PYJvZqtyvShfYk = (chest:GetPivot().Position - FyWnFFZakWhtDs).Magnitude
 if PYJvZqtyvShfYk < minDist then
 minDist, WBpFWkYdqfvNYG = PYJvZqtyvShfYk, chest
 end
 end
 end
 if WBpFWkYdqfvNYG and WBpFWkYdqfvNYG ~= VhKaVworDvhuvh then
 VhKaVworDvhuvh = WBpFWkYdqfvNYG
 topos(WBpFWkYdqfvNYG:GetPivot())
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("U3RvcCBXaGVuIEhhdmUgR29kJ3MgQ2hhbGljZSYgRmlzdCBPZiBEYXJrbmVzcw=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().StopChest = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 if getgenv().StopChest then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 if not XPKQttDgjyuQHM then continue end 
 phUThJKRWbVAQl MfDHpsBmcoureQ = XPKQttDgjyuQHM:FindFirstChild(_D("QmFja3BhY2s="))
 phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM.aBYiproClLDecw 
 if MfDHpsBmcoureQ and KlPGYKwHNevVQC then
 if MfDHpsBmcoureQ:FindFirstChild(_D("RmlzdCBvZiBEYXJrbmVzcw==")) or KlPGYKwHNevVQC:FindFirstChild(_D("RmlzdCBvZiBEYXJrbmVzcw==")) or 
 MfDHpsBmcoureQ:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or KlPGYKwHNevVQC:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) then
 getgenv().AutoFarmChest = false
 if ToggleChest and typeof(ToggleChest.Set) == _D("U3ZRZGxiZm5qY01ZWU4=") then
 ToggleChest:Set(false)
 end
 break
 end
 end
 end
 end
end)

-- Configuração inicial
phUThJKRWbVAQl cYyXeAUpmwvuja = 0.2 -- Tempo entre TPs (em segundos, ajustável)
phUThJKRWbVAQl sFNhEnqNuaqEaG = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
phUThJKRWbVAQl vykoDNNQtWQdhW = false -- Controle do srOTmqcypZcejd
phUThJKRWbVAQl ahKMBRSIxBAdMs = 0 -- Contador de baús

-- Função para obter o personagem do jogador
phUThJKRWbVAQl SvQdlbfnjcMYYN getCharacter()
 if not sFNhEnqNuaqEaG.aBYiproClLDecw then
 sFNhEnqNuaqEaG.CharacterAdded:Wait()
 end
 sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU="))
 return sFNhEnqNuaqEaG.aBYiproClLDecw
end

-- Função para ordenar objetos por distância do jogador
phUThJKRWbVAQl SvQdlbfnjcMYYN DistanceFromPlrSort(ObjectList: table)
 phUThJKRWbVAQl gSIrHjVvzHtNwD = getCharacter().gXZtrRuZYlsrdE
 table.sort(ObjectList, SvQdlbfnjcMYYN(ChestA, ChestB)
 phUThJKRWbVAQl qSrVCJxqqGHbbk = gSIrHjVvzHtNwD.Position
 phUThJKRWbVAQl eufxpmjmAMaKTc = (qSrVCJxqqGHbbk - ChestA.Position).Magnitude
 phUThJKRWbVAQl FevOnZcrhGuPvF = (qSrVCJxqqGHbbk - ChestB.Position).Magnitude
 return eufxpmjmAMaKTc < FevOnZcrhGuPvF
 end)
end

-- Busca e organização dos baús
phUThJKRWbVAQl PWrhwZCFiQkxJt = {}
phUThJKRWbVAQl HVSfROQXEYmNfn = true

phUThJKRWbVAQl SvQdlbfnjcMYYN getChestsSorted()
 if HVSfROQXEYmNfn then
 HVSfROQXEYmNfn = false
 phUThJKRWbVAQl yfQtRfQAhNuddl = wExlmmqTxYIeST:GetDescendants()
 for _, Object in pairs(yfQtRfQAhNuddl) do
 if Object.Name:find(_D("Q2hlc3Q=")) and Object:IsA(_D("QmFzZVBhcnQ=")) then
 table.insert(PWrhwZCFiQkxJt, Object)
 end
 end
 end

 phUThJKRWbVAQl PYzgdfkjnNhNeP = {}
 for _, Chest in pairs(PWrhwZCFiQkxJt) do
 if Chest:FindFirstChild(_D("VG91Y2hJbnRlcmVzdA==")) then
 table.insert(PYzgdfkjnNhNeP, Chest)
 end
 end
 DistanceFromPlrSort(PYzgdfkjnNhNeP)
 return PYzgdfkjnNhNeP
end

-- Ativar ou desativar o XIOAMdXyUOwnwe
phUThJKRWbVAQl SvQdlbfnjcMYYN toggleNoclip(srOTmqcypZcejd: boolean)
 for _, Part in pairs(getCharacter():GetChildren()) do
 if Part:IsA(_D("QmFzZVBhcnQ=")) then
 Part.CanCollide = not srOTmqcypZcejd
 end
 end
end

-- Função de teleporte instantâneo
phUThJKRWbVAQl SvQdlbfnjcMYYN SZHyJcyjWPDThK(Goal: CFrame)
 toggleNoclip(true)
 phUThJKRWbVAQl gSIrHjVvzHtNwD = getCharacter().gXZtrRuZYlsrdE
 gSIrHjVvzHtNwD.CFrame = Goal -- Teleporta diretamente para o baú mais próximo
 toggleNoclip(false)
end

-- Implementação do Antikick
spawn(SvQdlbfnjcMYYN()
 while task.wait(30) do
 if vykoDNNQtWQdhW then
 pcall(SvQdlbfnjcMYYN()
 sethiddenproperty(sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 end)
 end
 end
end)

-- Reseta o jogador após pegar 3 baús
phUThJKRWbVAQl SvQdlbfnjcMYYN resetCharacter()
 sFNhEnqNuaqEaG.aBYiproClLDecw:BreakJoints() -- Reseta o personagem
 ahKMBRSIxBAdMs = 0 -- Reseta o contador de baús
end

-- Função principal
phUThJKRWbVAQl SvQdlbfnjcMYYN main()
 while vykoDNNQtWQdhW do
 phUThJKRWbVAQl PYzgdfkjnNhNeP = getChestsSorted()
 if #PYzgdfkjnNhNeP > 0 then
 SZHyJcyjWPDThK(PYzgdfkjnNhNeP[1].CFrame) -- Teleporta instantaneamente para o baú mais próximo
 ahKMBRSIxBAdMs += 1
 print(_D("QmHDuiBjb2xldGFkbzo="), ahKMBRSIxBAdMs)

 -- Reseta o personagem após pegar 3 baús
 if ahKMBRSIxBAdMs >= 3 then
 print(_D("UmVzZXRhbmRvIHBlcnNvbmFnZW0uLi4="))
 resetCharacter()
 end
 else
 print(_D("TmVuaHVtIGJhw7ogZW5jb250cmFkby4gRXNwZXJhbmRvLi4u"))
 end

 task.wait(cYyXeAUpmwvuja) -- Espera o tempo configurado antes de ir para o próximo baú
 end
end


-- srOTmqcypZcejd para ativar/desativar
phUThJKRWbVAQl srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("U1pIeUpjeWpXUERUaEsgdG8gUFl6Z2Rma2puTmhOZVA="), {AFotbYvafQTmWI = _D("VFAgUFl6Z2Rma2puTmhOZVAgKENoYW5jZXMgZGUga2ljayk="), Default = false})

srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 vykoDNNQtWQdhW = value
 print(_D("c3JPVG1xY3lwWmNlamQgY2hhbmdlZDo="), value)
 if vykoDNNQtWQdhW then
 spawn(main) -- Inicia o script
 else
 print(_D("U2NyaXB0IGRlc2F0aXZhZG8u"))
 end
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBHZXQgQ3lib3Jn"), Description = _D("QnV5IENoaXAgQW5kIEtpbGwgT3JkZXI="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoCyborg = Value
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 if getgenv().AutoCyborg then
 if not game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("TWljcm9jaGlw")) 
 and not game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("TWljcm9jaGlw")) 
 and not game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("T3JkZXI=")) 
 and not game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("T3JkZXI=")) then
 wait(0.3)
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="), _D("TWljcm9jaGlw"), _D("MQ=="))
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="), _D("TWljcm9jaGlw"), _D("Mg=="))
 end
 end
 end
 end)
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 if getgenv().AutoCyborg then
 if not game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("T3JkZXI=")) 
 and not game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("T3JkZXI=")) then
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("TWljcm9jaGlw")) 
 or game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("TWljcm9jaGlw")) then
 fireclickdetector(
 game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
 )
 end
 end 
 if game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("T3JkZXI=")) 
 or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("T3JkZXI=")) then
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("T3JkZXI=")) then
 for _, i in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if i.Name == _D("T3JkZXI=") then
 repeat 
 task.wait(0.1)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 topos(i.gXZtrRuZYlsrdE.CFrame * Pos)
 i.gXZtrRuZYlsrdE.CanCollide = false
 i.gXZtrRuZYlsrdE.Size = Vector3.new(120, 120, 120)
 until not i.Parent or i.KrlGhKjHesTsTl.Health <= 0 or getgenv().AutoCyborg == false
 end
 end
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("T3JkZXI=")) then
 topos(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
 end
 end
 end
 end
 end)
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBHZXQgR2hvdWw="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoGhoul = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if not getgenv().AutoGhoul then break end
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl OYOAjdewSmferQ = KTWBQhwktSkgEc:FindFirstChild(_D("Q3Vyc2VkIENhcHRhaW4="))
 if OYOAjdewSmferQ and OYOAjdewSmferQ:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and OYOAjdewSmferQ:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl lnhLIZpBaYGcBO = OYOAjdewSmferQ.KrlGhKjHesTsTl
 phUThJKRWbVAQl OdSSDwxKzrOmwX = OYOAjdewSmferQ.gXZtrRuZYlsrdE
 if lnhLIZpBaYGcBO.Health > 0 then
 OdSSDwxKzrOmwX.CanCollide = false
 lnhLIZpBaYGcBO.WalkSpeed = 0
 OdSSDwxKzrOmwX.Size = Vector3.new(50,50,50)
 repeat
 task.wait(0.05)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 topos(OdSSDwxKzrOmwX.CFrame * CFrame.new(0, 10, 0))
 sethiddenproperty(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), 1000)
 until not getgenv().AutoGhoul or lnhLIZpBaYGcBO.Health <= 0 or not OYOAjdewSmferQ.Parent
 end
 else
 phUThJKRWbVAQl qlDRVqPiuYrKwx = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("Q3Vyc2VkIENhcHRhaW4="))
 if qlDRVqPiuYrKwx then
 topos(qlDRVqPiuYrKwx.gXZtrRuZYlsrdE.CFrame * CFrame.new(5,10,2))
 end
 end
 end
end)


HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddParagraph({
 AFotbYvafQTmWI = _D("RmFybSBPYnNlcnZhdGlvbg=="),
 Content = string.rep(_D("LQ=="), 21)
})
ObservationRange = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddParagraph({
 AFotbYvafQTmWI = _D("T2JzZXJ2YXRpb24gTGV2ZWw="),
 Content = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
})
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl aePyXdnRzBdJWk = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.VisionRadius.Value
 while wait(0.1) do
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl OkhkytZLXDLHdK = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.VisionRadius.Value
 if OkhkytZLXDLHdK ~= aePyXdnRzBdJWk then
 ObservationRange:SetDesc(_D("T2JzZXJ2YXRpb24gUmFuZ2UgTGV2ZWw6IA==") .. math.floor(OkhkytZLXDLHdK))
 aePyXdnRzBdJWk = OkhkytZLXDLHdK
 end
 end)
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBVUCBPYnNlcnZhdGlvbiBWMg=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoObservationHakiV2 = Value
 StopTween(getgenv().AutoObservationHakiV2)
end) 
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl bdbKEcbTMQDZKe = tick()
 while task.wait(0.1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoObservationHakiV2 and World3 then
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Visible == false then
 if tick() - bdbKEcbTMQDZKe >= 1 then
 topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
 bdbKEcbTMQDZKe = tick()
 end
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q2l0aXplblF1ZXN0UHJvZ3Jlc3M="), _D("Q2l0aXplbg=="))
 task.wait(1)
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U3RhcnRRdWVzdA=="), _D("Q2l0aXplblF1ZXN0"), 1)
 else
 if string.find(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text, _D("RGVmZWF0IDUwIEZvcmVzdCBQaXJhdGVz")) then
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("Rm9yZXN0IFBpcmF0ZQ==")) then
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == _D("Rm9yZXN0IFBpcmF0ZQ==") then
 repeat
 if not game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("SGFzQnVzbw==")) then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QnVzbw=="))
 end
 EquipWeapon(getgenv().SelectWeapon)
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 PosHee = v.gXZtrRuZYlsrdE.CFrame
 v.gXZtrRuZYlsrdE.CFrame = v.gXZtrRuZYlsrdE.CFrame
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.Size = Vector3.new(50, 50, 50)
 until getgenv().AutoObservationHakiV2 == false or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 end
 elseif game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Quest.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text == _D("RGVmZWF0IENhcHRhaW4gRWxlcGhhbnQgKDAvMSk=") then
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("Q2FwdGFpbiBFbGVwaGFudA==")) then
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == _D("Q2FwdGFpbiBFbGVwaGFudA==") then
 repeat
 if not game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("SGFzQnVzbw==")) then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QnVzbw=="))
 end
 EquipWeapon(getgenv().SelectWeapon)
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 if sethiddenproperty then
 sethiddenproperty(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 end
 v.gXZtrRuZYlsrdE.CFrame = v.gXZtrRuZYlsrdE.CFrame
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.Size = Vector3.new(50, 50, 50)
 until getgenv().AutoObservationHakiV2 == false or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 end
 end
 end
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("QmFuYW5h")) and 
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("QXBwbGU=")) and 
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("UGluZWFwcGxl")) then
 if tick() - bdbKEcbTMQDZKe >= 1 then
 topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
 bdbKEcbTMQDZKe = tick()
 end
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q2l0aXplblF1ZXN0UHJvZ3Jlc3M="), _D("Q2l0aXplbg=="))
 elseif game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("d2J2a21lVkdIVG1EaXEgQm93bA==")) or 
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("d2J2a21lVkdIVG1EaXEgQm93bA==")) then
 if tick() - bdbKEcbTMQDZKe >= 1 then
 topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
 bdbKEcbTMQDZKe = tick()
 end
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("S2VuVGFsazI="), _D("U3RhcnQ="))
 task.wait(1)
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("S2VuVGFsazI="), _D("QnV5"))
 end
 end
 end)
 end
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl wOAyxRUQRwOVsb = tick()
 while true do
 task.wait(0.1)
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoObservationHakiV2 and World3 then
 if sethiddenproperty then
 if tick() - wOAyxRUQRwOVsb >= 1 then
 sethiddenproperty(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 wOAyxRUQRwOVsb = tick()
 end
 end
 end
 end)
 end
end)
spawn(SvQdlbfnjcMYYN()
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Heartbeat:Connect(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoObservationHakiV2 and World3 then
 phUThJKRWbVAQl KlPGYKwHNevVQC = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw
 if KlPGYKwHNevVQC and KlPGYKwHNevVQC:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) then
 phUThJKRWbVAQl lnhLIZpBaYGcBO = KlPGYKwHNevVQC.KrlGhKjHesTsTl
 if lnhLIZpBaYGcBO:GetState() ~= Enum.HumanoidStateType.Physics then
 lnhLIZpBaYGcBO:ChangeState(Enum.HumanoidStateType.Physics)
 end
 end
 end
 end)
 end)
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Heartbeat:Connect(SvQdlbfnjcMYYN()
 task.wait(0.1)
 if getgenv().AutoObservationHakiV2 and getgenv().StartMagnet then
 phUThJKRWbVAQl KTWBQhwktSkgEc = game.xkzLfqrlXOYczM.Enemies:GetChildren()
 for i, v in ipairs(KTWBQhwktSkgEc) do
 if v.Name == _D("Rm9yZXN0IFBpcmF0ZQ==") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v.KrlGhKjHesTsTl.Health > 0 then
 phUThJKRWbVAQl UfXaCXGPsKitMs = v.gXZtrRuZYlsrdE
 if UfXaCXGPsKitMs.CanCollide ~= false then
 UfXaCXGPsKitMs.CanCollide = false
 end
 if UfXaCXGPsKitMs.Size ~= Vector3.new(50, 50, 50) then
 UfXaCXGPsKitMs.Size = Vector3.new(50, 50, 50)
 end
 if UfXaCXGPsKitMs.CFrame ~= PosHee then
 UfXaCXGPsKitMs.CFrame = PosHee
 end
 end
 end
 end
 end)
 end)
end)
spawn(SvQdlbfnjcMYYN()
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Heartbeat:Connect(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoObservationHakiV2 and getgenv().StartMagnet then
 CheckQuest()
 phUThJKRWbVAQl KTWBQhwktSkgEc = game.xkzLfqrlXOYczM.Enemies:GetChildren()
 for i, v in ipairs(KTWBQhwktSkgEc) do
 if v.Name == Ms and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) then
 phUThJKRWbVAQl lnhLIZpBaYGcBO = v.KrlGhKjHesTsTl
 if lnhLIZpBaYGcBO.Health > 0 then
 lnhLIZpBaYGcBO:ChangeState(11)
 task.wait(0.1)
 lnhLIZpBaYGcBO:ChangeState(14)
 end
 end
 end
 end
 end)
 end)
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("RmFybSBPYnNlcnZhdGlvbg=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoObservation = Value
 StopTween(getgenv().AutoObservation)
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if getgenv().AutoObservation then
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.VisionRadius.Value >= 5000 then
 Alert:create(_D("WW91IEhhdmUgTWF4IFBvaW50cw=="))
 task.wait(1)
 else
 phUThJKRWbVAQl DtwcTNIOLSROes, spawnPos
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl XTyoHBzkjsvwrL = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl LTPGTvMCyCqYfy = XPKQttDgjyuQHM.XUBvNPokLCGyoF.ScreenGui
 if World2 then
 DtwcTNIOLSROes = _D("TGF2YSBQaXJhdGUgW0x2LiAxMjAwXQ==")
 spawnPos = CFrame.new(-5478.39209, 15.9775667, -5246.9126)
 elseif iWbwCbFmPsUWAs then
 DtwcTNIOLSROes = _D("R2FsbGV5IENhcHRhaW4=")
 spawnPos = CFrame.new(5533.29785, 88.1079102, 4852.3916)
 elseif World3 then
 DtwcTNIOLSROes = _D("VmVub21vdXMgQXNzYWlsYW50")
 spawnPos = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)
 end
 phUThJKRWbVAQl ksJlFEgkkErXbu = XTyoHBzkjsvwrL:FindFirstChild(DtwcTNIOLSROes)
 if ksJlFEgkkErXbu then
 if LTPGTvMCyCqYfy:FindFirstChild(_D("SW1hZ2VMYWJlbA==")) then
 repeat
 task.wait(0.1)
 XPKQttDgjyuQHM.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame * CFrame.new(3, 0, 0)
 until not getgenv().AutoObservation or not LTPGTvMCyCqYfy:FindFirstChild(_D("SW1hZ2VMYWJlbA=="))
 else
 repeat
 task.wait(0.1)
 XPKQttDgjyuQHM.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame * CFrame.new(0, 50, 0)
 if not LTPGTvMCyCqYfy:FindFirstChild(_D("SW1hZ2VMYWJlbA==")) and getgenv().AutoObservation_Hop then
 game:GetService(_D("VGVsZXBvcnRTZXJ2aWNl")):SZHyJcyjWPDThK(game.PlaceId, XPKQttDgjyuQHM)
 end
 until not getgenv().AutoObservation or LTPGTvMCyCqYfy:FindFirstChild(_D("SW1hZ2VMYWJlbA=="))
 end
 else
 topos(spawnPos)
 end
 end
 end
 end
 end)
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBSaXAgSW5kcmE="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoRipIndra = Value
 StopTween(getgenv().AutoRipIndra)
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(1) do
 if getgenv().AutoRipIndra and World3 then
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG 
 if KTWBQhwktSkgEc:FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ==")) or KTWBQhwktSkgEc:FindFirstChild(_D("cmlwX2luZHJh")) then
 for _, v in pairs(KTWBQhwktSkgEc:GetChildren()) do
 if (v.Name == _D("cmlwX2luZHJhIFRydWUgRm9ybQ==") or v.Name == _D("cmlwX2luZHJh")) and v.KrlGhKjHesTsTl.Health > 0 and v:IsA(_D("TW9kZWw=")) and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 repeat
 task.wait(0.3)
 pcall(SvQdlbfnjcMYYN()
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 end)
 until getgenv().AutoRipIndra == false or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 elseif XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) then
 repeat
 task.wait(0.3)
 topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
 EquipWeapon(_D("R29kJ3MgQ2hhbGljZQ=="))
 until not (XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")))
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ==")) then
 phUThJKRWbVAQl YMEImbxAxPMjst = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ=="))
 topos(YMEImbxAxPMjst.gXZtrRuZYlsrdE.CFrame * Pos)
 end
 end
 end
 end)
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBCYXJiYSBOZWdyYQ=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoDarkbeard = Value
 StopTween(getgenv().AutoDarkbeard)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if getgenv().AutoDarkbeard and World2 then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 if KTWBQhwktSkgEc:FindFirstChild(_D("RGFya2JlYXJk")) then
 for _, v in pairs(KTWBQhwktSkgEc:GetChildren()) do
 if v.Name == _D("RGFya2JlYXJk") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 repeat
 task.wait(0.05)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0 
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 until not getgenv().AutoDarkbeard or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 elseif XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("RmlzdCBvZiBEYXJrbmVzcw==")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("RmlzdCBvZiBEYXJrbmVzcw==")) then
 repeat
 task.wait(0.1)
 topos(CFrame.new(3778.584, 15.791, -3499.404))
 EquipWeapon(_D("RmlzdCBvZiBEYXJrbmVzcw=="))
 until not getgenv().AutoDarkbeard
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGFya2JlYXJk")) then
 topos(game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGFya2JlYXJk")).gXZtrRuZYlsrdE.CFrame * Pos)
 end
 end)
 end
 end
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBUb3VjaCBQYWQgSGFraQ=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoTouchPadHaki = Value
 StopTween(getgenv().AutoTouchPadHaki)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoTouchPadHaki and World3 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("YWN0aXZhdGVDb2xvcg=="), _D("V2ludGVyIFNreQ=="))
 task.wait(0.5)
 phUThJKRWbVAQl phqmKHTTCTQfvT = CFrame.new(-5420.16602, 1084.9657, -2666.8208)
 repeat
 topos(phqmKHTTCTQfvT)
 task.wait(0.2)
 until getgenv().StopTween == true or getgenv().AutoTouchPadHaki == false or
 (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - phqmKHTTCTQfvT.Position).Magnitude <= 10
 task.wait(0.5) 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("YWN0aXZhdGVDb2xvcg=="), _D("UHVyZSBSZWQ="))
 task.wait(0.5)
 phUThJKRWbVAQl WFEjzFOgZyhCHI = CFrame.new(-5414.41357, 309.865753, -2212.45776)
 repeat
 topos(WFEjzFOgZyhCHI)
 task.wait(0.2)
 until getgenv().StopTween == true or getgenv().AutoTouchPadHaki == false or
 (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - WFEjzFOgZyhCHI.Position).Magnitude <= 10
 task.wait(0.5) 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("YWN0aXZhdGVDb2xvcg=="), _D("U25vdyBXaGl0ZQ=="))
 task.wait(0.5)
 phUThJKRWbVAQl GzINgZsrQTWUdJ = CFrame.new(-4971.47559, 331.565765, -3720.02954)
 repeat
 topos(GzINgZsrQTWUdJ)
 task.wait(0.2)
 until getgenv().StopTween == true or getgenv().AutoTouchPadHaki == false or
 (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - GzINgZsrQTWUdJ.Position).Magnitude <= 10
 task.wait(0.5) 
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):Button1Down(Vector2.new(1280, 600))
 task.wait(1)
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):Button1Down(Vector2.new(1280, 600))
 end
 end)
 end
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBCdXkgTGVnZW5kYXJ5IFN3b3Jk"), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoBuyLegendarySword = Value
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl ANjbkdgKkbKRjt = 0
 while task.wait(1) do
 if getgenv().AutoBuyLegendarySword and World2 then
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick() 
 if vwQmFqKggWtPsY - ANjbkdgKkbKRjt >= 2 then
 ANjbkdgKkbKRjt = vwQmFqKggWtPsY 
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl CpzeKHiWcgsaQC = { _D("TGVnZW5kYXJ5U3dvcmREZWFsZXI="), _D("MQ==") }
 phUThJKRWbVAQl ZZtrbptJEIghpO = { _D("TGVnZW5kYXJ5U3dvcmREZWFsZXI="), _D("Mg==") }
 phUThJKRWbVAQl tpatZvIahvzJos = { _D("TGVnZW5kYXJ5U3dvcmREZWFsZXI="), _D("Mw==") } 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(CpzeKHiWcgsaQC))
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(ZZtrbptJEIghpO))
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(tpatZvIahvzJos)) 
 end)
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBCdXkgSGFraSBDb2xvcg=="),
 Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().Auto_Buy_Enchancement = Value
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl ANjbkdgKkbKRjt = 0
 while true do
 if getgenv().Auto_Buy_Enchancement then
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
 if vwQmFqKggWtPsY - ANjbkdgKkbKRjt >= 2 then
 ANjbkdgKkbKRjt = vwQmFqKggWtPsY
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {
 [1] = _D("Q29sb3JzRGVhbGVy"),
 [2] = _D("Mg==")
 }
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(pnvTUSLxDuQwJo))
 end)
 end
 end
 wait(0.1)
 end
end)
phUThJKRWbVAQl sVEueOInboGjYw = false
srOTmqcypZcejd = HYAqOrVauuPwRd.PWzhoYnLArTEnQ:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("SG9wIFNlcnZlciBbIEhha2kgY29sb3Igb3IgTGVnZW5kYXJ5IFN3b3JkXQ=="),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(state)
 sVEueOInboGjYw = state
 if sVEueOInboGjYw then
 Hop()
 end
end)

 

------Quest---



phUThJKRWbVAQl JhWBmGHWFnskpU = HYAqOrVauuPwRd.Quest:AddSection(_D("SmhXQm1HSFdGbnNrcFU="))

srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBHZXQgUmFpbmJvdyBIYWtp"), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoRainbowHaki = Value
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(0.2) do
 if getgenv().AutoRainbowHaki and World3 then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl yOXFMjqnvTyvyo = XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl JALIhiwHjTAKBC = yOXFMjqnvTyvyo and yOXFMjqnvTyvyo:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 phUThJKRWbVAQl kYELdBukVnJquv = XPKQttDgjyuQHM.XUBvNPokLCGyoF.Main.Quest
 if not JALIhiwHjTAKBC then continue end 
 if not kYELdBukVnJquv.Visible then
 phUThJKRWbVAQl GFenAgyQBtoxle = Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875)
 if (GFenAgyQBtoxle - JALIhiwHjTAKBC.Position).Magnitude > 30 then
 topos(CFrame.new(GFenAgyQBtoxle))
 else
 task.wait(1.1)
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("SG9ybmVkTWFu"), _D("QmV0"))
 end
 else
 phUThJKRWbVAQl LuaiAvKaNeKomb = kYELdBukVnJquv.Container.QJckJJspIvMsOi.AFotbYvafQTmWI.Text
 phUThJKRWbVAQl mJHetvxBQKXTxD = {
 [_D("U3RvbmU=")] = Vector3.new(-1175, 53, 6811),
 [_D("SXNsYW5kIEVtcHJlc3M=")] = Vector3.new(5887, 1019, -114),
 [_D("S2lsbyBBZG1pcmFs")] = Vector3.new(3014, 509, -7354),
 [_D("Q2FwdGFpbiBFbGVwaGFudA==")] = Vector3.new(-13485.0283, 331.709259, -8012.4873),
 [_D("QmVhdXRpZnVsIFBpcmF0ZQ==")] = Vector3.new(5377, 22, -62)
 }
 for DtwcTNIOLSROes, teleportPos in pairs(mJHetvxBQKXTxD) do
 if string.find(LuaiAvKaNeKomb, DtwcTNIOLSROes) then
 phUThJKRWbVAQl ksJlFEgkkErXbu = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(DtwcTNIOLSROes)
 if ksJlFEgkkErXbu and ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl IluvxJDCAwAQaU = ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame
 repeat
 task.wait()
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 topos(ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame * Pos)
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CanCollide = false
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.Size = Vector3.new(50, 50, 50)
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame = IluvxJDCAwAQaU
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):CaptureController()
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):Button1Down(Vector2.new(1280, 672))
 until not getgenv().AutoRainbowHaki or ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health <= 0 or not ksJlFEgkkErXbu.Parent or not kYELdBukVnJquv.Visible
 else
 topos(CFrame.new(teleportPos))
 end
 break
 end
 end
 end
 end
 end
 end)
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBTZWNvbmRfU2Vh"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoNewWorld = Value
 StopTween(getgenv().AutoNewWorld)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if getgenv().AutoNewWorld and iWbwCbFmPsUWAs then
 spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl wExlmmqTxYIeST = game:GetService(_D("eGt6TGZxcmxYT1ljek0="))
 phUThJKRWbVAQl Ltlkftgsxbqovb = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl bHdCsGWdWmAeTe = XPKQttDgjyuQHM.Data.Level.Value
 if bHdCsGWdWmAeTe >= 700 and iWbwCbFmPsUWAs then
 phUThJKRWbVAQl SomCrfCgYxHCPe = wExlmmqTxYIeST.Map.Ice.Door
 if SomCrfCgYxHCPe.CanCollide == false and SomCrfCgYxHCPe.Transparency == 1 then
 phUThJKRWbVAQl HatpmsVFwwCsAg = CFrame.new(4849.29883, 5.65138149, 719.611877)
 repeat
 topos(HatpmsVFwwCsAg)
 task.wait(0.1)
 until (HatpmsVFwwCsAg.Position - XPKQttDgjyuQHM.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude <= 3 or not getgenv().AutoNewWorld
 task.wait(1.1)
 Ltlkftgsxbqovb.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("RHJlc3Nyb3NhUXVlc3RQcm9ncmVzcw=="), _D("RGV0ZWN0aXZl"))
 task.wait(0.1)
 EquipWeapon(_D("S2V5"))
 phUThJKRWbVAQl xfZuKLmfyhKExb = CFrame.new(1347.7124, 37.3751602, -1325.6488)
 repeat
 topos(xfZuKLmfyhKExb)
 task.wait(0.1)
 until (xfZuKLmfyhKExb.Position - XPKQttDgjyuQHM.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude <= 3 or not getgenv().AutoNewWorld
 task.wait(0.1)
 else
 if wExlmmqTxYIeST.Enemies:FindFirstChild(_D("SWNlIEFkbWlyYWwgW0x2LiA3MDBdIFtnVkV5WkdHVVlVeFp6Q10=")) then
 for _, v in pairs(wExlmmqTxYIeST.Enemies:GetChildren()) do
 if v.Name == _D("SWNlIEFkbWlyYWw=") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl JeoullwUVUfpSj = v.gXZtrRuZYlsrdE.CFrame
 repeat
 task.wait(0.05)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.Head.CanCollide = false
 v.gXZtrRuZYlsrdE.CFrame = JeoullwUVUfpSj
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 until not getgenv().AutoNewWorld or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 else
 if Ltlkftgsxbqovb:FindFirstChild(_D("SWNlIEFkbWlyYWw=")) then
 topos(Ltlkftgsxbqovb:FindFirstChild(_D("SWNlIEFkbWlyYWw=")).gXZtrRuZYlsrdE.CFrame * CFrame.new(5, 10, 7))
 else
 Ltlkftgsxbqovb.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("VHJhdmVsRHJlc3Nyb3Nh"))
 end
 end
 end
 end
 end)
 end
 end
end)

phUThJKRWbVAQl fxvIlDuVuLqINd = HYAqOrVauuPwRd.Quest:AddToggle(_D("QXV0b1RoaXJk"), {
 AFotbYvafQTmWI = _D("QXV0byBUaGlyZCBDbGRDVVFsZ0VMdVR3RQ=="),
 Default = false
})

fxvIlDuVuLqINd:OnChanged(SvQdlbfnjcMYYN()
 AutoThird = DIDKqcielyXJJu.AutoThird.Value
 if AutoThird then
 task.spawn(SvQdlbfnjcMYYN()
 while AutoThird do
 pcall(SvQdlbfnjcMYYN()
 -- Inicia missão
 game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 :WaitForChild(_D("b1dvYVpLdUhiRENpUkI="))
 :WaitForChild(_D("VklkamtpVEd1SnRxQWU="))
 :InvokeServer(_D("WlF1ZXN0UHJvZ3Jlc3M="), _D("QmVnaW4="))

 -- Pega WxSsBMOfCvieMq Rip_Indra
 phUThJKRWbVAQl WxSsBMOfCvieMq = wExlmmqTxYIeST._WorldOrigin.EnemySpawns:FindFirstChild(_D("cmlwX2luZHJhIFtMdi4gMTUwMF0gW2dWRXlaR0dVWVV4WnpDXQ=="))
 if WxSsBMOfCvieMq and WxSsBMOfCvieMq:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 -- Tween para cima do WxSsBMOfCvieMq (sem dano, só hover)
 phUThJKRWbVAQl JALIhiwHjTAKBC = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if JALIhiwHjTAKBC then
 JALIhiwHjTAKBC.CFrame = WxSsBMOfCvieMq.gXZtrRuZYlsrdE.CFrame * CFrame.new(0, 20, 0)
 end
 end
 end)
 task.wait(.2)
 end
 end)
 end
end)

phUThJKRWbVAQl KiOGhoTNAiNfRk = HYAqOrVauuPwRd.Quest:AddToggle(_D("S2lPR2hvVE5BaU5mUms="), {AFotbYvafQTmWI = _D("QXV0byBIb2x5IFRvcmNo"), Default = false })
 KiOGhoTNAiNfRk:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.Auto_Holy_Torch = Value
 end)
 DIDKqcielyXJJu.KiOGhoTNAiNfRk:SetValue(false)
 spawn(SvQdlbfnjcMYYN()
 while wait() do
 if _G.Auto_Holy_Torch then
 pcall(SvQdlbfnjcMYYN()
 wait(1)
 repeat Tween(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
 wait(1)
 repeat Tween(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
 wait(1)
 repeat Tween(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
 wait(1)
 repeat Tween(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
 wait(1)
 repeat Tween(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
 end)
 end
 end
 end)



phUThJKRWbVAQl xgqgbtWTMxfkMj = HYAqOrVauuPwRd.Quest:AddSection(_D("eGdxZ2J0V1RNeGZrTWogRmFybQ=="))

srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBEYXJrIERhZ2dlcg=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoRipIndra = Value
 StopTween(getgenv().AutoRipIndra)
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(1) do
 if getgenv().AutoRipIndra and World3 then
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG 
 if KTWBQhwktSkgEc:FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ==")) or KTWBQhwktSkgEc:FindFirstChild(_D("cmlwX2luZHJh")) then
 for _, v in pairs(KTWBQhwktSkgEc:GetChildren()) do
 if (v.Name == _D("cmlwX2luZHJhIFRydWUgRm9ybQ==") or v.Name == _D("cmlwX2luZHJh")) and v.KrlGhKjHesTsTl.Health > 0 and v:IsA(_D("TW9kZWw=")) and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 repeat
 task.wait(0.3)
 pcall(SvQdlbfnjcMYYN()
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 end)
 until getgenv().AutoRipIndra == false or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 elseif XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) then
 repeat
 task.wait(0.3)
 topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
 EquipWeapon(_D("R29kJ3MgQ2hhbGljZQ=="))
 until not (XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")))
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ==")) then
 phUThJKRWbVAQl YMEImbxAxPMjst = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ=="))
 topos(YMEImbxAxPMjst.gXZtrRuZYlsrdE.CFrame * Pos)
 end
 end
 end
 end)
end)


srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBWYWxreXJpZQ=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoRipIndra = Value
 StopTween(getgenv().AutoRipIndra)
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(1) do
 if getgenv().AutoRipIndra and World3 then
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG 
 if KTWBQhwktSkgEc:FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ==")) or KTWBQhwktSkgEc:FindFirstChild(_D("cmlwX2luZHJh")) then
 for _, v in pairs(KTWBQhwktSkgEc:GetChildren()) do
 if (v.Name == _D("cmlwX2luZHJhIFRydWUgRm9ybQ==") or v.Name == _D("cmlwX2luZHJh")) and v.KrlGhKjHesTsTl.Health > 0 and v:IsA(_D("TW9kZWw=")) and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 repeat
 task.wait(0.3)
 pcall(SvQdlbfnjcMYYN()
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 end)
 until getgenv().AutoRipIndra == false or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 elseif XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) then
 repeat
 task.wait(0.3)
 topos(CFrame.new(-5563.75048828125, 320.4276123046875, -2662.509521484375))
 EquipWeapon(_D("R29kJ3MgQ2hhbGljZQ=="))
 until not (XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")))
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ==")) then
 phUThJKRWbVAQl YMEImbxAxPMjst = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("cmlwX2luZHJhIFRydWUgRm9ybQ=="))
 topos(YMEImbxAxPMjst.gXZtrRuZYlsrdE.CFrame * Pos)
 end
 end
 end
 end)
end)

phUThJKRWbVAQl gALBqlsfxBcPZa = HYAqOrVauuPwRd.Quest:AddToggle(_D("Z0FMQnFsc2Z4QmNQWmE="), {AFotbYvafQTmWI = _D("QXV0byBIYWxsb3cgU2N5dGhlIFtGdWxseV0="), Default = false })

 gALBqlsfxBcPZa:OnChanged(SvQdlbfnjcMYYN(Value)
 AutoHallowSycthe = Value
 end)
 DIDKqcielyXJJu.gALBqlsfxBcPZa:SetValue(false)
 spawn(SvQdlbfnjcMYYN()
 while wait() do
 if AutoHallowSycthe then
 pcall(SvQdlbfnjcMYYN()
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("U291bCBSZWFwZXI=")) then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if string.find(v.Name , _D("U291bCBSZWFwZXI=")) then
 repeat wait(0)
 
 AutoHaki()
 EquipTool(SelectWeapon)
 v.gXZtrRuZYlsrdE.Size = Vector3.new(50,50,50)
 Tween(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 v.gXZtrRuZYlsrdE.Transparency = 1
 sethiddenproperty(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG,_D("U2ltdWxhdGlvblJhZGl1cw=="),math.huge)
 --Click
 until v.KrlGhKjHesTsTl.Health <= 0 or AutoHallowSycthe == false
 end
 end
 elseif game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("SGFsbG93IEVzc2VuY2U=")) or game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("SGFsbG93IEVzc2VuY2U=")) then
 repeat Tween(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude <= 8 
 EquipTool(_D("SGFsbG93IEVzc2VuY2U="))
 else
 if game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("U291bCBSZWFwZXI=")) then
 Tween(game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("U291bCBSZWFwZXI=")).gXZtrRuZYlsrdE.CFrame * CFrame.new(2,20,2))
 else
 end
 end
 end)
 
 end
 end
 end)
 
 
 spawn(SvQdlbfnjcMYYN()
 while wait(0.001) do
 if AutoHallowSycthe then
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {
 [1] = _D("Qm9uZXM="),
 [2] = _D("QnV5"),
 [3] = 1,
 [4] = 1
 }
 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(pnvTUSLxDuQwJo))
 end
 end
 end)
 
srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBTa3VsbCBHdWl0YXI="), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoSkullGuitar = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait() do
 if getgenv().AutoSkullGuitar then
 pcall(SvQdlbfnjcMYYN()
 if not GetWeaponInventory(_D("U2t1bGwgR3VpdGFy")) then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl JALIhiwHjTAKBC = XPKQttDgjyuQHM.aBYiproClLDecw and XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if JALIhiwHjTAKBC then
 phUThJKRWbVAQl GFenAgyQBtoxle = Vector3.new(-9681.458, 6.139, 6341.372)
 if (GFenAgyQBtoxle - JALIhiwHjTAKBC.Position).Magnitude <= 5000 then
 phUThJKRWbVAQl GumnCsbExilUXi = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).NPCs:FindFirstChild(_D("U2tlbGV0b24gTWFjaGluZQ=="))
 if GumnCsbExilUXi then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.LkpBvFUXWgqxLe:InvokeServer(_D("c291bEd1aXRhckJ1eQ=="), true)
 else
 phUThJKRWbVAQl qpPmGfTsCCwLMd = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map:FindFirstChild(_D("SGF1bnRlZCBDYXN0bGU="))
 if qpPmGfTsCCwLMd and qpPmGfTsCCwLMd.Candle1.Transparency == 0 then
 phUThJKRWbVAQl oYuuYjhWKFNBJA = qpPmGfTsCCwLMd:FindFirstChild(_D("UGxhY2FyZDE="))
 if oYuuYjhWKFNBJA and oYuuYjhWKFNBJA.Left.Part.Transparency == 0 then
 Quest2 = true
 topos(CFrame.new(-8762.691, 176.847, 6171.308))
 task.wait(1)
 for i = 7, 1, -1 do
 phUThJKRWbVAQl BPpLYTrlWYgtFy = qpPmGfTsCCwLMd:FindFirstChild(_D("UGxhY2FyZA==") .. i)
 if BPpLYTrlWYgtFy and BPpLYTrlWYgtFy:FindFirstChild(_D("TGVmdA==")) and BPpLYTrlWYgtFy.Left:FindFirstChild(_D("Q2xpY2tEZXRlY3Rvcg==")) then
 fireclickdetector(BPpLYTrlWYgtFy.Left.ClickDetector)
 task.wait(0.5)
 end
 end
 end
 elseif qpPmGfTsCCwLMd and qpPmGfTsCCwLMd.Tablet and qpPmGfTsCCwLMd.Tablet:FindFirstChild(_D("U2VnbWVudDE=")) then
 phUThJKRWbVAQl LYPwnDhqBFTmKA = qpPmGfTsCCwLMd:FindFirstChild(_D("TGFiIFB1enpsZQ=="))
 if LYPwnDhqBFTmKA and LYPwnDhqBFTmKA.ColorFloor.Model.Part1:FindFirstChild(_D("Q2xpY2tEZXRlY3Rvcg==")) then
 Quest4 = true
 topos(CFrame.new(-9553.599, 65.623, 6041.588))
 task.wait(1)
 phUThJKRWbVAQl WoSdYjJPUqXZvT = {3, 4, 4, 4, 6, 6, 8, 10, 10, 10}
 for _, DlYEBsbqQTqbxO in ipairs(WoSdYjJPUqXZvT) do
 phUThJKRWbVAQl TbodWTnEaxuEJo = LYPwnDhqBFTmKA.ColorFloor.Model:FindFirstChild(_D("UGFydA==") .. DlYEBsbqQTqbxO)
 if TbodWTnEaxuEJo and TbodWTnEaxuEJo:FindFirstChild(_D("Q2xpY2tEZXRlY3Rvcg==")) then
 topos(TbodWTnEaxuEJo.CFrame)
 task.wait(1)
 fireclickdetector(TbodWTnEaxuEJo.ClickDetector)
 task.wait(0.5)
 end
 end
 else
 Quest3 = true
 end
 else
 phUThJKRWbVAQl MMCqSTwvXqpKdP = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).NPCs:FindFirstChild(_D("R2hvc3Q="))
 if MMCqSTwvXqpKdP then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.LkpBvFUXWgqxLe:InvokeServer(_D("R3VpdGFyUHV6emxlUHJvZ3Jlc3M="), _D("R2hvc3Q="))
 end
 phUThJKRWbVAQl KTWBQhwktSkgEc = game.xkzLfqrlXOYczM:FindFirstChild(_D("RW5lbWllcw=="))
 if KTWBQhwktSkgEc and KTWBQhwktSkgEc:FindFirstChild(_D("TGl2aW5nIFpvbWJpZQ==")) then
 for _, ksJlFEgkkErXbu in pairs(KTWBQhwktSkgEc:GetChildren()) do
 if ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health > 0 and ksJlFEgkkErXbu.Name == _D("TGl2aW5nIFpvbWJpZQ==") then
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.Size = Vector3.new(60, 60, 60)
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.Transparency = 1
 ksJlFEgkkErXbu.KrlGhKjHesTsTl.JumpPower = 0
 ksJlFEgkkErXbu.KrlGhKjHesTsTl.WalkSpeed = 0
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CanCollide = false
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame = JALIhiwHjTAKBC.CFrame * CFrame.new(0, 20, 0) 
 topos(CFrame.new(-10160.787, 138.662, 5955.031))
 task.wait(0.5)
 phUThJKRWbVAQl evNsURAQevIrSo = game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M="))
 evNsURAQevIrSo:CaptureController()
 evNsURAQevIrSo:Button1Down(Vector2.new(1280, 672))
 end
 end
 else
 topos(CFrame.new(-10160.787, 138.662, 5955.031))
 end
 end
 end
 end
 end
 elseif string.find(game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.LkpBvFUXWgqxLe:InvokeServer(_D("Z3JhdmVzdG9uZUV2ZW50"), 2), _D("RXJyb3I=")) then
 topos(CFrame.new(-8653.206, 140.985, 6160.033))
 elseif string.find(game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.LkpBvFUXWgqxLe:InvokeServer(_D("Z3JhdmVzdG9uZUV2ZW50"), 2), _D("Tm90aGluZw==")) then
 topos(_D("V2FpdCBGdWxsIE1vb24="))
 else
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.LkpBvFUXWgqxLe:InvokeServer(_D("Z3JhdmVzdG9uZUV2ZW50"), 2, true)
 end
 end)
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBHZXQgQ0RL"), Description = _D("U1pIeUpjeWpXUERUaEsgVG8gQ2xhaW0gQ0RL"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoGetCDK = Value
end)
task.spawn(SvQdlbfnjcMYYN()
 repeat task.wait() until getgenv().AutoGetCDK 
 phUThJKRWbVAQl DquQaAkmvbpkNI = false
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl Ltlkftgsxbqovb = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl wExlmmqTxYIeST = game:GetService(_D("eGt6TGZxcmxYT1ljek0="))
 phUThJKRWbVAQl KTWBQhwktSkgEc = wExlmmqTxYIeST.Enemies
 while getgenv().AutoGetCDK do
 task.wait(0.2)
 pcall(SvQdlbfnjcMYYN()
 Ltlkftgsxbqovb.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q0RLUXVlc3Q="), _D("UHJvZ3Jlc3M="), _D("R29vZA=="))
 task.wait(0.2)
 Ltlkftgsxbqovb.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q0RLUXVlc3Q="), _D("UHJvZ3Jlc3M="), _D("RXZpbA=="))
 task.wait(0.2)
 Ltlkftgsxbqovb.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q0RLUXVlc3Q="), _D("U3RhcnRUcmlhbA=="), _D("Z1ZFeVpHR1VZVXhaekM="))
 task.wait(0.2) 
 phUThJKRWbVAQl WxSsBMOfCvieMq = KTWBQhwktSkgEc:FindFirstChild(_D("Q3Vyc2VkIFNrZWxldG9uIGdWRXlaR0dVWVV4WnpD"))
 if WxSsBMOfCvieMq then
 for _, v in pairs(KTWBQhwktSkgEc:GetChildren()) do
 if v.Name == _D("Q3Vyc2VkIFNrZWxldG9uIGdWRXlaR0dVWVV4WnpD") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 phUThJKRWbVAQl yOXFMjqnvTyvyo = XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl MfDHpsBmcoureQ = XPKQttDgjyuQHM.Backpack
 if yOXFMjqnvTyvyo:FindFirstChild(_D("WWFtYQ==")) or MfDHpsBmcoureQ:FindFirstChild(_D("WWFtYQ==")) then
 EquipWeapon(_D("WWFtYQ=="))
 elseif yOXFMjqnvTyvyo:FindFirstChild(_D("VHVzaGl0YQ==")) or MfDHpsBmcoureQ:FindFirstChild(_D("VHVzaGl0YQ==")) then
 EquipWeapon(_D("VHVzaGl0YQ=="))
 elseif not DquQaAkmvbpkNI then
 game.StarterGui:SetCore(_D("U2VuZE5vdGlmaWNhdGlvbg=="), {
 AFotbYvafQTmWI = _D("U2xheWVyIEh1Yg=="),
 Text = _D("VXNlISAtIFlhbWEgb3IgVHVzaGl0YQ=="),
 con = _D("cmJ4YXNzZXRpZDovLw=="),
 Duration = 10,
 })
 DquQaAkmvbpkNI = true
 end
 Buso()
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 topos(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(0,30,0))
 if syn and not getgenv().SimulationSet then
 sethiddenproperty(XPKQttDgjyuQHM, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 getgenv().SimulationSet = true
 end
 repeat
 task.wait()
 until not getgenv().AutoGetCDK or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 else
 topos(CFrame.new(-12318.193, 601.951, -6538.662))
 task.wait(0.5)
 topos(wExlmmqTxYIeST.Map.Turtle.Cursed.BossDoor.CFrame)
 end
 end)
 end
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBZYW1h"), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoYama = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoYama then
 phUThJKRWbVAQl LoHqxbnZqGzUdS = game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("RWxpdGVIdW50ZXI="), _D("UHJvZ3Jlc3M="))
 if LoHqxbnZqGzUdS and LoHqxbnZqGzUdS >= 30 then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl nNyZBxZQtdMLix = XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("WWFtYQ=="))
 phUThJKRWbVAQl EnUuuwfMvHvXYh = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map:FindFirstChild(_D("V2F0ZXJmYWxs")) 
 if not nNyZBxZQtdMLix and EnUuuwfMvHvXYh and EnUuuwfMvHvXYh:FindFirstChild(_D("U2VhbGVkS2F0YW5h")) then
 phUThJKRWbVAQl efOjNfBItfiJyM = EnUuuwfMvHvXYh.SealedKatana.Handle:FindFirstChild(_D("Q2xpY2tEZXRlY3Rvcg=="))
 if efOjNfBItfiJyM then
 repeat
 task.wait(0.5)
 fireclickdetector(efOjNfBItfiJyM)
 until XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("WWFtYQ==")) or not getgenv().AutoYama
 end
 end
 end
 end
 end)
 end
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBUdXNoaXRh"), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoTushita = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 if getgenv().AutoTushita and World3 then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl aAMZrWpGxMxZuX = KTWBQhwktSkgEc:FindFirstChild(_D("TG9uZ21h"))
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl JALIhiwHjTAKBC = KlPGYKwHNevVQC and KlPGYKwHNevVQC:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if aAMZrWpGxMxZuX and JALIhiwHjTAKBC then
 for _, ksJlFEgkkErXbu in pairs(KTWBQhwktSkgEc:GetChildren()) do
 if ksJlFEgkkErXbu.Name == _D("TG9uZ21h") and ksJlFEgkkErXbu.Parent and ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl lnhLIZpBaYGcBO = ksJlFEgkkErXbu.KrlGhKjHesTsTl
 phUThJKRWbVAQl OdSSDwxKzrOmwX = ksJlFEgkkErXbu.gXZtrRuZYlsrdE
 if lnhLIZpBaYGcBO.Health > 0 then
 if not KlPGYKwHNevVQC:FindFirstChild(_D("SGFraQ==")) then
 AutoHaki()
 end
 if getgenv().SelectWeapon and not KlPGYKwHNevVQC:FindFirstChild(getgenv().SelectWeapon) then
 EquipWeapon(getgenv().SelectWeapon)
 end
 repeat
 task.wait(0.1)
 OdSSDwxKzrOmwX.CanCollide = false
 lnhLIZpBaYGcBO.WalkSpeed = 0
 if (OdSSDwxKzrOmwX.Position - JALIhiwHjTAKBC.Position).Magnitude > 5 then
 topos(OdSSDwxKzrOmwX.CFrame * Pos)
 end
 pcall(SvQdlbfnjcMYYN()
 sethiddenproperty(XPKQttDgjyuQHM, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 end)
 until not getgenv().AutoTushita or not ksJlFEgkkErXbu.Parent or lnhLIZpBaYGcBO.Health <= 0
 end
 end
 end
 else
 topos(CFrame.new(-10238.876, 389.791, -9549.794))
 phUThJKRWbVAQl gPRYrNyoXIiGWU = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("TG9uZ21h"))
 if gPRYrNyoXIiGWU and gPRYrNyoXIiGWU:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 TP(gPRYrNyoXIiGWU.gXZtrRuZYlsrdE.CFrame * CFrame.new(2, 20, 2))
 end
 end
 end)
 end
 end
end)



srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBDYXBhIERvIEJhcmJhIE5lZ3Jh"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoDarkbeard = Value
 StopTween(getgenv().AutoDarkbeard)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if getgenv().AutoDarkbeard and World2 then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 if KTWBQhwktSkgEc:FindFirstChild(_D("RGFya2JlYXJk")) then
 for _, v in pairs(KTWBQhwktSkgEc:GetChildren()) do
 if v.Name == _D("RGFya2JlYXJk") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 repeat
 task.wait(0.05)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0 
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 until not getgenv().AutoDarkbeard or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 elseif XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("RmlzdCBvZiBEYXJrbmVzcw==")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("RmlzdCBvZiBEYXJrbmVzcw==")) then
 repeat
 task.wait(0.1)
 topos(CFrame.new(3778.584, 15.791, -3499.404))
 EquipWeapon(_D("RmlzdCBvZiBEYXJrbmVzcw=="))
 until not getgenv().AutoDarkbeard
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGFya2JlYXJk")) then
 topos(game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("RGFya2JlYXJk")).gXZtrRuZYlsrdE.CFrame * Pos)
 end
 end)
 end
 end
end)

phUThJKRWbVAQl GPMBIWvcfMjxBf = HYAqOrVauuPwRd.Quest:AddToggle(_D("R1BNQklXdmNmTWp4QmY="), {AFotbYvafQTmWI = _D("QXV0byBLb2tv"), Default = false })

GPMBIWvcfMjxBf:OnChanged(SvQdlbfnjcMYYN(Value)
 Auto_Law = Value
end)
DIDKqcielyXJJu.GPMBIWvcfMjxBf:SetValue(false)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while wait() do
 if Auto_Law then
 if not game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("TWljcm9jaGlw")) and not game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("TWljcm9jaGlw")) and not game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("T3JkZXI=")) and not game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("T3JkZXI=")) then
 wait(0.3)
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="),_D("TWljcm9jaGlw"),_D("MQ=="))
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="),_D("TWljcm9jaGlw"),_D("Mg=="))
 end
 end
 end
 end)
end)

spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while wait(0.4) do
 if Auto_Law then
 if not game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("T3JkZXI=")) and not game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("T3JkZXI=")) then
 if game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("TWljcm9jaGlw")) or game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("TWljcm9jaGlw")) then
 fireclickdetector(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
 end
 end
 if game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("T3JkZXI=")) or game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("T3JkZXI=")) then
 if game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("T3JkZXI=")) then
 for i,v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == _D("T3JkZXI=") then
 repeat wait(0)
 
 AutoHaki()
 EquipTool(SelectWeapon)
 Tween(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(posX,posY,posZ))
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.gXZtrRuZYlsrdE.Size = Vector3.new(120, 120, 120)
 --Click
 until not v.Parent or v.KrlGhKjHesTsTl.Health <= 0 or Auto_Law == false
 end
 end
 elseif game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("T3JkZXI=")) then
 Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
 end
 end
 end
 end
 end)
end)


-- Cria o toggle KQyEiiaHJvvFUr
srOTmqcypZcejd = HYAqOrVauuPwRd.Quest:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBTYWJlcg=="), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoSaber = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 if getgenv().AutoSaber and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Data.Level.Value >= 200 then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl yOXFMjqnvTyvyo = XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl JALIhiwHjTAKBC = yOXFMjqnvTyvyo and yOXFMjqnvTyvyo:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if not JALIhiwHjTAKBC then return end
 phUThJKRWbVAQl FOunXhygxHZyxP = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map.Jungle
 phUThJKRWbVAQl tHCggsIEqlBWrw = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map.Desert
 phUThJKRWbVAQl sKKqiHHXKrclnW = CFrame.new(-1404.91, 29.97, 3.80) 
 if FOunXhygxHZyxP.Final.Part.Transparency == 0 then
 if FOunXhygxHZyxP.QuestPlates.Door.Transparency == 0 then
 phUThJKRWbVAQl DxPlQzRBcOKkeP = CFrame.new(-1612.55, 36.97, 148.71)
 if (DxPlQzRBcOKkeP.Position - JALIhiwHjTAKBC.Position).Magnitude <= 100 then
 for i = 1, 5 do
 phUThJKRWbVAQl ckKpYDgOOGXfKv = FOunXhygxHZyxP.QuestPlates:FindFirstChild(_D("UGxhdGU=") .. i)
 if ckKpYDgOOGXfKv and ckKpYDgOOGXfKv:FindFirstChild(_D("QnV0dG9u")) then
 JALIhiwHjTAKBC.CFrame = ckKpYDgOOGXfKv.Button.CFrame
 task.wait(0.5)
 end
 end
 else
 topos(DxPlQzRBcOKkeP)
 end
 else
 if tHCggsIEqlBWrw.Burn.Part.Transparency == 0 then
 if XPKQttDgjyuQHM.Backpack:FindFirstChild(_D("VG9yY2g=")) or yOXFMjqnvTyvyo:FindFirstChild(_D("VG9yY2g=")) then
 EquipWeapon(_D("VG9yY2g="))
 topos(CFrame.new(1114.61, 5.04, 4350.22))
 else
 topos(CFrame.new(-1610.00, 11.50, 164.00))
 end
 else
 phUThJKRWbVAQl uJLXBPZQrrYRnP = game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe
 if uJLXBPZQrrYRnP:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("U2lja01hbg==")) ~= 0 then
 uJLXBPZQrrYRnP:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("R2V0Q3Vw"))
 task.wait(0.1)
 EquipWeapon(_D("Q3Vw"))
 task.wait(0.1)
 uJLXBPZQrrYRnP:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("RmlsbEN1cA=="), yOXFMjqnvTyvyo:FindFirstChild(_D("Q3Vw")))
 task.wait(0.1)
 uJLXBPZQrrYRnP:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("U2lja01hbg=="))
 else
 if uJLXBPZQrrYRnP:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("UmljaFNvbg==")) == nil then
 uJLXBPZQrrYRnP:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("UmljaFNvbg=="))
 elseif uJLXBPZQrrYRnP:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("UmljaFNvbg==")) == 0 then
 phUThJKRWbVAQl PGmkxAWAcVwSMt = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("TW9iIExlYWRlcg=="))
 if not PGmkxAWAcVwSMt then
 PGmkxAWAcVwSMt = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("TW9iIExlYWRlcg=="))
 end 
 if PGmkxAWAcVwSMt then
 topos(PGmkxAWAcVwSMt.gXZtrRuZYlsrdE.CFrame)
 repeat
 task.wait()
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 PGmkxAWAcVwSMt.gXZtrRuZYlsrdE.CanCollide = false
 PGmkxAWAcVwSMt.KrlGhKjHesTsTl.WalkSpeed = 0
 topos(PGmkxAWAcVwSMt.gXZtrRuZYlsrdE.CFrame)
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):CaptureController()
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):Button1Down(Vector2.new(1280, 672))
 sethiddenproperty(XPKQttDgjyuQHM, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 until PGmkxAWAcVwSMt.KrlGhKjHesTsTl.Health <= 0 or not getgenv().AutoSaber
 end
 elseif uJLXBPZQrrYRnP:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("UmljaFNvbg==")) == 1 then
 uJLXBPZQrrYRnP:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("UmljaFNvbg=="))
 task.wait(0.1)
 EquipWeapon(_D("UmVsaWM="))
 task.wait(0.1)
 topos(sKKqiHHXKrclnW)
 end
 end
 end
 end
 else
 phUThJKRWbVAQl xzjzlLMMuKUhpR = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("U2FiZXIgRXhwZXJ0"))
 if not xzjzlLMMuKUhpR then
 xzjzlLMMuKUhpR = game:GetService(_D("enFHeGdoRHdRcG11VUo=")):FindFirstChild(_D("U2FiZXIgRXhwZXJ0"))
 end 
 if xzjzlLMMuKUhpR then
 repeat
 task.wait()
 EquipWeapon(getgenv().SelectWeapon)
 topos(xzjzlLMMuKUhpR.gXZtrRuZYlsrdE.CFrame)
 xzjzlLMMuKUhpR.gXZtrRuZYlsrdE.Size = Vector3.new(60, 60, 60)
 xzjzlLMMuKUhpR.gXZtrRuZYlsrdE.Transparency = 1
 xzjzlLMMuKUhpR.KrlGhKjHesTsTl.JumpPower = 0
 xzjzlLMMuKUhpR.KrlGhKjHesTsTl.WalkSpeed = 0
 xzjzlLMMuKUhpR.gXZtrRuZYlsrdE.CanCollide = false
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):CaptureController()
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):Button1Down(Vector2.new(1280, 672))
 until xzjzlLMMuKUhpR.KrlGhKjHesTsTl.Health <= 0 or not getgenv().AutoSaber 
 if xzjzlLMMuKUhpR.KrlGhKjHesTsTl.Health <= 0 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("UHJvUXVlc3RQcm9ncmVzcw=="), _D("UGxhY2VSZWxpYw=="))
 end
 end
 end
 end)
 end
 end
end)




-- ================================================
-- ============= TOGGLE AUTO WARDEN ==============
-- ================================================
phUThJKRWbVAQl MeYrLbPFaxzUCA = HYAqOrVauuPwRd.Quest:AddToggle(_D("TWVZckxiUEZheHpVQ0E="), {
 AFotbYvafQTmWI = _D("QXV0byBEUVZBRnB3clhBZUZQeA=="),
 Default = false
})

MeYrLbPFaxzUCA:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.AutoWarden = Value
end)

DIDKqcielyXJJu.MeYrLbPFaxzUCA:SetValue(false)


-- ================================================
-- ============= SISTEMA DE FOLLOW VOANDO ========
-- ================================================
phUThJKRWbVAQl bvOgQGqKflcGvY = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk="))
phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
phUThJKRWbVAQl RqUFftQvfaEeJR = XggXraBDqgnxkm.sFNhEnqNuaqEaG


-- Tween suave e rápido (não buga)
phUThJKRWbVAQl SvQdlbfnjcMYYN SmoothTween(xOSXsSCeZmnTbV, klQOnvyBQvWKYL)
 phUThJKRWbVAQl UFXhxBfefTmCUx = TweenInfo.new(
 0.15, -- bRyAHquJfRexwp curto evita bug
 Enum.EasingStyle.Linear
 )
 phUThJKRWbVAQl bRyAHquJfRexwp = bvOgQGqKflcGvY:Create(xOSXsSCeZmnTbV, UFXhxBfefTmCUx, { CFrame = klQOnvyBQvWKYL })
 bRyAHquJfRexwp:Play()
end


spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if _G.AutoWarden then

 phUThJKRWbVAQl SnoyCrHNCudlvC = RqUFftQvfaEeJR.aBYiproClLDecw or RqUFftQvfaEeJR.CharacterAdded:Wait()
 phUThJKRWbVAQl xOSXsSCeZmnTbV = SnoyCrHNCudlvC:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU="))

 -- Procura Chief DQVAFpwrXAeFPx
 phUThJKRWbVAQl DQVAFpwrXAeFPx = wExlmmqTxYIeST.Enemies:FindFirstChild(_D("Q2hpZWYgRFFWQUZwd3JYQWVGUHg="))

 if DQVAFpwrXAeFPx and DQVAFpwrXAeFPx:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl JALIhiwHjTAKBC = DQVAFpwrXAeFPx.gXZtrRuZYlsrdE

 -- Fica 20 studs acima do DQVAFpwrXAeFPx
 phUThJKRWbVAQl klQOnvyBQvWKYL = CFrame.new(
 JALIhiwHjTAKBC.Position.X,
 JALIhiwHjTAKBC.Position.Y + 20,
 JALIhiwHjTAKBC.Position.Z
 )

 SmoothTween(xOSXsSCeZmnTbV, klQOnvyBQvWKYL)
 end
 end
 end
end)

-- ================================================
-- ============= TOGGLE AUTO CACHICOL ============
-- ================================================
phUThJKRWbVAQl InBIyIDsuOaHvb = HYAqOrVauuPwRd.Quest:AddToggle(_D("SW5CSXlJRHN1T2FIdmI="), {
 AFotbYvafQTmWI = _D("QXV0byBDYXBhKFJvc2Ep"),
 Default = false
})

InBIyIDsuOaHvb:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.AutoCachicol = Value
end)

DIDKqcielyXJJu.InBIyIDsuOaHvb:SetValue(false)


-- ================================================
-- ============= SISTEMA TWEEN VOANDO ============
-- ================================================
phUThJKRWbVAQl bvOgQGqKflcGvY = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk="))
phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
phUThJKRWbVAQl RqUFftQvfaEeJR = XggXraBDqgnxkm.sFNhEnqNuaqEaG

-- Tween curto e suave
phUThJKRWbVAQl SvQdlbfnjcMYYN SmoothTween(xOSXsSCeZmnTbV, klQOnvyBQvWKYL)
 phUThJKRWbVAQl UFXhxBfefTmCUx = TweenInfo.new(
 0.15, -- pequeno, rápido, não buga
 Enum.EasingStyle.Linear
 )
 phUThJKRWbVAQl bRyAHquJfRexwp = bvOgQGqKflcGvY:Create(xOSXsSCeZmnTbV, UFXhxBfefTmCUx, { CFrame = klQOnvyBQvWKYL })
 bRyAHquJfRexwp:Play()
end

spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if _G.AutoCachicol then

 phUThJKRWbVAQl SnoyCrHNCudlvC = RqUFftQvfaEeJR.aBYiproClLDecw or RqUFftQvfaEeJR.CharacterAdded:Wait()
 phUThJKRWbVAQl xOSXsSCeZmnTbV = SnoyCrHNCudlvC:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU="))
 
 phUThJKRWbVAQl WxeLNItAYsauWm = wExlmmqTxYIeST.Enemies:FindFirstChild(_D("V3hlTE5JdEFZc2F1V20="))

 if WxeLNItAYsauWm and WxeLNItAYsauWm:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl JALIhiwHjTAKBC = WxeLNItAYsauWm.gXZtrRuZYlsrdE
 
 -- SEMPRE fica 20 studs acima, real-oBmcmqHpvoSedN
 phUThJKRWbVAQl klQOnvyBQvWKYL = CFrame.new(
 JALIhiwHjTAKBC.Position.X,
 JALIhiwHjTAKBC.Position.Y + 20,
 JALIhiwHjTAKBC.Position.Z
 ) * CFrame.Angles(0, math.rad(0), 0)

 SmoothTween(xOSXsSCeZmnTbV, klQOnvyBQvWKYL)
 end
 end
 end
end)



-- ================================================
-- ============= TOGGLE AUTO BOSS =================
-- ================================================
phUThJKRWbVAQl WrzzrrKHjpudlw = HYAqOrVauuPwRd.Quest:AddToggle(_D("V3J6enJyS0hqcHVkbHc="), {
 AFotbYvafQTmWI = _D("QXV0byBQb2xlIFYx"),
 Default = false
})

WrzzrrKHjpudlw:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.AutoBoss = Value
end)

DIDKqcielyXJJu.WrzzrrKHjpudlw:SetValue(false)


-- ================================================
-- ============= AUTO TWEEN VOANDO ===============
-- ================================================
phUThJKRWbVAQl bvOgQGqKflcGvY = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk="))
phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
phUThJKRWbVAQl RqUFftQvfaEeJR = XggXraBDqgnxkm.sFNhEnqNuaqEaG

-- Função segura de bRyAHquJfRexwp sem bug
phUThJKRWbVAQl SvQdlbfnjcMYYN TweenToCF(xOSXsSCeZmnTbV, klQOnvyBQvWKYL, aGFSyaabHAneYm)
 phUThJKRWbVAQl AIZewxPvNzJKJX = (xOSXsSCeZmnTbV.Position - klQOnvyBQvWKYL.Position).Magnitude
 phUThJKRWbVAQl oBmcmqHpvoSedN = AIZewxPvNzJKJX / aGFSyaabHAneYm

 phUThJKRWbVAQl UFXhxBfefTmCUx = TweenInfo.new(oBmcmqHpvoSedN, Enum.EasingStyle.Linear)
 phUThJKRWbVAQl bRyAHquJfRexwp = bvOgQGqKflcGvY:Create(xOSXsSCeZmnTbV, UFXhxBfefTmCUx, { CFrame = klQOnvyBQvWKYL })

 bRyAHquJfRexwp:Play()
 bRyAHquJfRexwp.Completed:Wait()
end

spawn(SvQdlbfnjcMYYN()
 while task.wait(0.3) do
 if _G.AutoBoss then

 phUThJKRWbVAQl SnoyCrHNCudlvC = RqUFftQvfaEeJR.aBYiproClLDecw or RqUFftQvfaEeJR.CharacterAdded:Wait()
 phUThJKRWbVAQl xOSXsSCeZmnTbV = SnoyCrHNCudlvC:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU="))

 -- gVEyZGGUYUxZzC Thunder God
 phUThJKRWbVAQl gVEyZGGUYUxZzC = wExlmmqTxYIeST._WorldOrigin.EnemySpawns:FindFirstChild(_D("VGh1bmRlciBHb2QgW0x2LiA1NzVdIFtnVkV5WkdHVVlVeFp6Q10="))

 if gVEyZGGUYUxZzC then
 -- Mantém posição 20 studs acima do WxSsBMOfCvieMq
 phUThJKRWbVAQl klQOnvyBQvWKYL = gVEyZGGUYUxZzC.CFrame + Vector3.new(0, 20, 0)

 -- Tween voando (velocidade 200)
 TweenToCF(xOSXsSCeZmnTbV, klQOnvyBQvWKYL, 200)
 end
 end
 end
end)


--SZHyJcyjWPDThK
-- Verificar qual CldCUQlgELuTwE o jogador está
phUThJKRWbVAQl hwZmpMreDbvJnG, Sea2, Sea3 = false, false, false
if game.PlaceId == 2753915549 then
 hwZmpMreDbvJnG = true
elseif game.PlaceId == 4442272183 then
 Sea2 = true
elseif game.PlaceId == 7449423635 then
 Sea3 = true
else
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG:Kick(_D("RG8gbm90IFN1cHBvcnQsIFBsZWFzZSB3YWl0Li4u"))
end

-- Inicializar a aba _D("U1pIeUpjeWpXUERUaEs=")
phUThJKRWbVAQl SZHyJcyjWPDThK = HYAqOrVauuPwRd.SZHyJcyjWPDThK:AddSection(_D("TW92ZQ=="))

-- Botões para trocar de CldCUQlgELuTwE
HYAqOrVauuPwRd.SZHyJcyjWPDThK:AddButton({
 AFotbYvafQTmWI = _D("Q2xkQ1VRbGdFTHVUd0UgMQ=="),
 Description = _D("U1pIeUpjeWpXUERUaEsgdG8gQ2xkQ1VRbGdFTHVUd0UgMQ=="),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("VHJhdmVsTWFpbg=="))
 end
})

HYAqOrVauuPwRd.SZHyJcyjWPDThK:AddButton({
 AFotbYvafQTmWI = _D("Q2xkQ1VRbGdFTHVUd0UgMg=="),
 Description = _D("U1pIeUpjeWpXUERUaEsgdG8gQ2xkQ1VRbGdFTHVUd0UgMg=="),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("VHJhdmVsRHJlc3Nyb3Nh"))
 end
})

HYAqOrVauuPwRd.SZHyJcyjWPDThK:AddButton({
 AFotbYvafQTmWI = _D("Q2xkQ1VRbGdFTHVUd0UgMw=="),
 Description = _D("U1pIeUpjeWpXUERUaEsgdG8gQ2xkQ1VRbGdFTHVUd0UgMw=="),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("VHJhdmVsWm91"))
 end
})

-- Lista de ilhas com base no CldCUQlgELuTwE atual
phUThJKRWbVAQl qhItUqvuTMutqU = {}
if hwZmpMreDbvJnG then
 qhItUqvuTMutqU = {
 _D("V2luZE1pbGw="), _D("TWFyaW5l"), _D("TWlkZGxlIFRvd24="), _D("SnVuZ2xl"), _D("UGlyYXRlIFZpbGxhZ2U="),
 _D("RGVzZXJ0"), _D("U25vdyBJc2xhbmQ="), _D("TWFyaW5lRm9yZA=="), _D("Q29sb3NzZXVt"), _D("U2t5IElzbGFuZCAx"),
 _D("U2t5IElzbGFuZCAy"), _D("U2t5IElzbGFuZCAz"), _D("UHJpc29u"), _D("TWFnbWEgVmlsbGFnZQ=="),
 _D("VW5kZXIgV2F0ZXIgSXNsYW5k"), _D("Rm91bnRhaW4gQ2l0eQ=="), _D("U2hhbmsgUm9vbQ=="), _D("TW9iIElzbGFuZA=="),
 }
elseif Sea2 then
 qhItUqvuTMutqU = {
 _D("VGhlIENhZmU="), _D("RnJpc3QgU3BvdA=="), _D("RGFyayBBcmVh"), _D("RmxhbWluZ28gTWFuc2lvbg=="),
 _D("RmxhbWluZ28gUm9vbQ=="), _D("R3JlZW4gWm9uZQ=="), _D("RmFjdG9yeQ=="), _D("Q29saXNldW0="),
 _D("Wm9tYmllIElzbGFuZA=="), _D("VHdvIFNub3cgTW91bnRhaW4="), _D("UHVuayBIYXphcmQ="), _D("Q3Vyc2VkIFNoaXA="),
 _D("SWNlIENhc3RsZQ=="), _D("Rm9yZ290dGVuIElzbGFuZA=="), _D("VXNzb3AgSXNsYW5k"),
 }
elseif Sea3 then
 qhItUqvuTMutqU = {
 _D("TWFuc2lvbg=="), _D("UG9ydCBUb3du"), _D("R3JlYXQgVHJlZQ=="), _D("Q2FzdGxlIE9uIFRoZSBDbGRDVVFsZ0VMdVR3RQ=="),
 _D("TWluaVNreQ=="), _D("SHlkcmEgSXNsYW5k"), _D("RmxvYXRpbmcgVHVydGxl"), _D("SGF1bnRlZCBDYXN0bGU="),
 _D("SWNlIENyZWFtIElzbGFuZA=="), _D("UGVhbnV0IElzbGFuZA=="), _D("Q2FrZSBJc2xhbmQ="), _D("Q29jb2EgSXNsYW5k"),
 _D("Q2FuZHkgSXNsYW5k"), _D("VGlraSBPdXRwb3N0"),
 }
end

-- oIjXnkPyzOwyWN para escolher a ilha
phUThJKRWbVAQl KLJIlhbnTwGhUH = HYAqOrVauuPwRd.SZHyJcyjWPDThK:AddDropdown(_D("S0xKSWxoYm5Ud0doVUg="), {
 AFotbYvafQTmWI = _D("Q2hvb3NlIElzbGFuZA=="),
 Description = _D("U2VsZWN0IGFuIGpaSkFrendBb21kalpFIHRvIHRlbGVwb3J0"),
 Values = qhItUqvuTMutqU,
 Multi = false,
 Default = 1,
})

-- Guardar a ilha selecionada
KLJIlhbnTwGhUH:OnChanged(SvQdlbfnjcMYYN(Value)
 _G.SelectedIsland = Value
 print(_D("U2VsZWN0ZWQgSXNsYW5kOg=="), Value)
end)

-- Função de Teleporte com Tween
SvQdlbfnjcMYYN TeleportToPosition(Pos)
 phUThJKRWbVAQl dpxibMmByOYbSz = (Pos.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.KrlGhKjHesTsTl.Sit and not _G.KillShark and not _G.KillPiranha and not _G.KillTerrorShark and not _G.KillFishCrew then
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.KrlGhKjHesTsTl.Sit = false
 end
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl bRyAHquJfRexwp = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk=")):Create(
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE,
 TweenInfo.new(dpxibMmByOYbSz/325, Enum.EasingStyle.Linear),
 {CFrame = Pos}
 )
 bRyAHquJfRexwp:Play()
 if dpxibMmByOYbSz <= 250 or _G.StopTween then
 bRyAHquJfRexwp:Cancel()
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame = Pos
 NoCLip = false
 end
 end)
end


-- Teleporte para a ilha selecionada
HYAqOrVauuPwRd.SZHyJcyjWPDThK:AddButton({
 AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgSXNsYW5k"),
 Description = _D("U1pIeUpjeWpXUERUaEsgdG8gdGhlIHNlbGVjdGVkIGpaSkFrendBb21kalpF"),
 Callback = SvQdlbfnjcMYYN()
 if _G.SelectedIsland == _D("V2luZE1pbGw=") then
 TeleportToPosition(CFrame.new(979.79895, 16.5516224, 1429.04663))
 elseif _G.SelectedIsland == _D("TWFyaW5l") then
 TeleportToPosition(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
 elseif _G.SelectedIsland == _D("TWlkZGxlIFRvd24=") then
 TeleportToPosition(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
 elseif _G.SelectedIsland == _D("SnVuZ2xl") then
 TeleportToPosition(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
 elseif _G.SelectedIsland == _D("UGlyYXRlIFZpbGxhZ2U=") then
 TeleportToPosition(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
 elseif _G.SelectedIsland == _D("RGVzZXJ0") then
 TeleportToPosition(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
 elseif _G.SelectedIsland == _D("U25vdyBJc2xhbmQ=") then
 TeleportToPosition(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
 elseif _G.SelectedIsland == _D("TWFyaW5lRm9yZA==") then
 TeleportToPosition(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
 elseif _G.SelectedIsland == _D("Q29sb3NzZXVt") then
 TeleportToPosition(CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
 elseif _G.SelectedIsland == _D("U2t5IElzbGFuZCAx") then
 TeleportToPosition(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
 elseif _G.SelectedIsland == _D("U2t5IElzbGFuZCAy") then 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"), Vector3.new(-4607.82275, 872.54248, -1667.55688))
 elseif _G.SelectedIsland == _D("U2t5IElzbGFuZCAz") then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"), Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
 elseif _G.SelectedIsland == _D("UHJpc29u") then
 TeleportToPosition(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
 elseif _G.SelectedIsland == _D("TWFnbWEgVmlsbGFnZQ==") then
 TeleportToPosition(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
 elseif _G.SelectedIsland == _D("VW5kZXIgV2F0ZXIgSXNsYW5k") then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"), Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
 elseif _G.SelectedIsland == _D("Rm91bnRhaW4gQ2l0eQ==") then
 TeleportToPosition(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
 elseif _G.SelectedIsland == _D("U2hhbmsgUm9vbQ==") then
 TeleportToPosition(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
 elseif _G.SelectedIsland == _D("TW9iIElzbGFuZA==") then
 TeleportToPosition(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
 elseif _G.SelectedIsland == _D("VGhlIENhZmU=") then
 TeleportToPosition(CFrame.new(-377.284424, 73.0550919, 291.670776))
 elseif _G.SelectedIsland == _D("RnJpc3QgU3BvdA==") then
 TeleportToPosition(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
 elseif _G.SelectedIsland == _D("RGFyayBBcmVh") then
 TeleportToPosition(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
 elseif _G.SelectedIsland == _D("RmxhbWluZ28gTWFuc2lvbg==") then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"), Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
 elseif _G.SelectedIsland == _D("RmxhbWluZ28gUm9vbQ==") then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"), Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
 elseif _G.SelectedIsland == _D("R3JlZW4gWm9uZQ==") then
 TeleportToPosition(CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
 elseif _G.SelectedIsland == _D("RmFjdG9yeQ==") then
 TeleportToPosition(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
 elseif _G.SelectedIsland == _D("Q29saXNldW0=") then
 TeleportToPosition(CFrame.new(-1834.78308, 45.8297157, 1365.29724))
 elseif _G.SelectedIsland == _D("Wm9tYmllIElzbGFuZA==") then
 TeleportToPosition(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
 elseif _G.SelectedIsland == _D("VHdvIFNub3cgTW91bnRhaW4=") then
 TeleportToPosition(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
 elseif _G.SelectedIsland == _D("UHVuayBIYXphcmQ=") then
 TeleportToPosition(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
 elseif _G.SelectedIsland == _D("Q3Vyc2VkIFNoaXA=") then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"), Vector3.new(923.40197753906, 125.05712890625, 32885.875))
 elseif _G.SelectedIsland == _D("SWNlIENhc3RsZQ==") then
 TeleportToPosition(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
 elseif _G.SelectedIsland == _D("Rm9yZ290dGVuIElzbGFuZA==") then
 TeleportToPosition(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
 elseif _G.SelectedIsland == _D("VXNzb3AgSXNsYW5k") then
 TeleportToPosition(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
 elseif _G.SelectedIsland == _D("R3JlYXQgVHJlZQ==") then
 TeleportToPosition(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
 elseif _G.SelectedIsland == _D("Q2FzdGxlIE9uIFRoZSBDbGRDVVFsZ0VMdVR3RQ==") then
 TeleportToPosition(CFrame.new(-4993.75879, 314.555542, -2996.44507, -0.374604046, 2.25014496e-09, 0.92718488, -1.82605771e-11, 1, -2.43423437e-09, -0.92718488, -9.28805033e-10, -0.374604046))
 elseif _G.SelectedIsland == _D("TWluaVNreQ==") then
 Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
 elseif _G.SelectedIsland == _D("UG9ydCBUb3du") then
 TeleportToPosition(CFrame.new(-301.832092, 20.6410122, 5558.41553))
 elseif _G.SelectedIsland == _D("SHlkcmEgSXNsYW5k") then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"),Vector3.new(5753.5478515625, 610.7880859375, -282.33172607421875))
 elseif _G.SelectedIsland == _D("RmxvYXRpbmcgVHVydGxl") then
 TeleportToPosition(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
 elseif _G.SelectedIsland == _D("TWFuc2lvbg==") then
 TeleportToPosition(CFrame.new(-12468.4482, 374.954041, -7540.47461, -0.999880493, -1.46357868e-08, -0.0154578825, -1.45267256e-08, 1, -7.16764781e-09, 0.0154578825, -6.94223878e-09, -0.999880493))
 elseif _G.SelectedIsland == _D("SGF1bnRlZCBDYXN0bGU=") then
 TeleportToPosition(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
 elseif _G.SelectedIsland == _D("SWNlIENyZWFtIElzbGFuZA==") then
 TeleportToPosition(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
 elseif _G.SelectedIsland == _D("UGVhbnV0IElzbGFuZA==") then
 TeleportToPosition(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
 elseif _G.SelectedIsland == _D("Q2FrZSBJc2xhbmQ=") then
 TeleportToPosition(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
 elseif _G.SelectedIsland == _D("Q29jb2EgSXNsYW5k") then
 TeleportToPosition(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
 elseif _G.SelectedIsland == _D("Q2FuZHkgSXNsYW5k") then
 TeleportToPosition(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
 elseif _G.SelectedIsland == _D("VGlraSBPdXRwb3N0") then
 TeleportToPosition(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
 end
 end
})

------wbvkmeVGHTmDiq----
phUThJKRWbVAQl wbvkmeVGHTmDiq = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddSection(_D("RnJ1dGE="))

phUThJKRWbVAQl RZMnggeHqcmlOG = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddToggle(_D("UmFuZG9tRnJ1aXQ="), {
 AFotbYvafQTmWI = _D("UmFuZG9tIHdidmttZVZHSFRtRGlx"),
 Default = false 
})

RZMnggeHqcmlOG:OnChanged(SvQdlbfnjcMYYN(value)
 _G.RandomFruit = value
 if _G.RandomFruit then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q291c2lu"), _D("QnV5"))
 end
end)

-- Define o valor inicial do toggle (sem usar DIDKqcielyXJJu, apenas com a variável)
RZMnggeHqcmlOG:SetValue(false)



-- srOTmqcypZcejd simples
phUThJKRWbVAQl DGlfubWysMrpty = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddToggle(_D("VHdlZW5Ub0ZydWl0"), {
 AFotbYvafQTmWI = _D("VHdlZW4gVG8gd2J2a21lVkdIVG1EaXE="),
 Default = false
})

-- Services
phUThJKRWbVAQl bvOgQGqKflcGvY = game:GetService(_D("YnZPZ1FHcUtmbGNHdlk="))
phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
phUThJKRWbVAQl RqUFftQvfaEeJR = XggXraBDqgnxkm.sFNhEnqNuaqEaG

-- Função de bRyAHquJfRexwp com BruVhFzuYVHipQ
phUThJKRWbVAQl SvQdlbfnjcMYYN TweenToPosition(xfZuKLmfyhKExb)
 phUThJKRWbVAQl aBYiproClLDecw = RqUFftQvfaEeJR.aBYiproClLDecw or RqUFftQvfaEeJR.CharacterAdded:Wait()
 phUThJKRWbVAQl gXZtrRuZYlsrdE = aBYiproClLDecw:WaitForChild(_D("Z1hadHJSdVpZbHNyZEU="))
 
 -- Adiciona BruVhFzuYVHipQ para não colidir com o fruto
 phUThJKRWbVAQl BruVhFzuYVHipQ = CFrame.new(0, 3, 0) 
 phUThJKRWbVAQl UFXhxBfefTmCUx = TweenInfo.new(1, Enum.EasingStyle.Linear)
 phUThJKRWbVAQl bRyAHquJfRexwp = bvOgQGqKflcGvY:Create(gXZtrRuZYlsrdE, UFXhxBfefTmCUx, {CFrame = xfZuKLmfyhKExb * BruVhFzuYVHipQ})
 bRyAHquJfRexwp:Play()
 bRyAHquJfRexwp.Completed:Wait() -- Espera o bRyAHquJfRexwp terminar antes de criar outro
end

-- Loop principal
spawn(SvQdlbfnjcMYYN()
 while wait(0.5) do -- aumenta o wait pra reduzir bug
 if DGlfubWysMrpty.Value then
 phUThJKRWbVAQl dQLVQskhljOIYL = {}
 for _, v in pairs(game.xkzLfqrlXOYczM:GetChildren()) do
 if v:IsA(_D("VG9vbA==")) and v:FindFirstChild(_D("SGFuZGxl")) and string.find(v.Name, _D("d2J2a21lVkdIVG1EaXE=")) then
 table.insert(dQLVQskhljOIYL, v.Handle)
 end
 end

 -- Tween para cada fruta
 for _, handle in pairs(dQLVQskhljOIYL) do
 if handle.Parent then
 TweenToPosition(handle.CFrame)
 end
 end
 end
 end
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gd2J2a21lVkdIVG1EaXEgWyBIb3AgU2VydmVyIF0="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().TeleportToFruitHop = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 if getgenv().TeleportToFruit and getgenv().TeleportToFruitHop then
 phUThJKRWbVAQl gZTYgAstlKYYHk = false
 for _, v in ipairs(xkzLfqrlXOYczM:GetChildren()) do
 if v:IsA(_D("TW9kZWw=")) and string.find(v.Name, _D("d2J2a21lVkdIVG1EaXE=")) and v:FindFirstChild(_D("SGFuZGxl")) then
 topos(v.Handle.CFrame)
 gZTYgAstlKYYHk = true
 break
 end
 end
 if not gZTYgAstlKYYHk then
 task.wait(1)
 StarterGui:SetCore(_D("U2VuZE5vdGlmaWNhdGlvbg=="), {
 AFotbYvafQTmWI = _D("U2VydmVyIEhvcC4u"),
 Text = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Duration = 5,
 })
 Hop()
 end
 end
 end
end)


phUThJKRWbVAQl srOTmqcypZcejd = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddToggle(_D("QXV0byBTdG9yZQ=="), {AFotbYvafQTmWI = _D("QXV0byBTdG9yZQ=="), Default = false})

phUThJKRWbVAQl wRiXDBIkIrzKbi

srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 print(_D("c3JPVG1xY3lwWmNlamQgY2hhbmdlZDo="), value)
 getgenv().AutoStoreFruits = value

 if value then
 phUThJKRWbVAQl SvQdlbfnjcMYYN Get_Fruit(wbvkmeVGHTmDiq)
 phUThJKRWbVAQl FuYRpZWNyZUivB = {
 [_D("Um9ja2V0IHdidmttZVZHSFRtRGlx")] = _D("Um9ja2V0LVJvY2tldA=="),
 [_D("U3BpbiB3YnZrbWVWR0hUbURpcQ==")] = _D("U3Bpbi1TcGlu"),
 [_D("Q2hvcCB3YnZrbWVWR0hUbURpcQ==")] = _D("Q2hvcC1DaG9w"),
 [_D("U3ByaW5nIHdidmttZVZHSFRtRGlx")] = _D("U3ByaW5nLVNwcmluZw=="),
 [_D("Qm9tYiB3YnZrbWVWR0hUbURpcQ==")] = _D("Qm9tYi1Cb21i"),
 [_D("U21va2Ugd2J2a21lVkdIVG1EaXE=")] = _D("U21va2UtU21va2U="),
 [_D("U3Bpa2Ugd2J2a21lVkdIVG1EaXE=")] = _D("U3Bpa2UtU3Bpa2U="),
 [_D("RmxhbWUgd2J2a21lVkdIVG1EaXE=")] = _D("RmxhbWUtRmxhbWU="),
 [_D("RWFnbGUgd2J2a21lVkdIVG1EaXE=")] = _D("RWFnbGUtRWFnbGU="),
 [_D("SWNlIHdidmttZVZHSFRtRGlx")] = _D("SWNlLUljZQ=="),
 [_D("U2FuZCB3YnZrbWVWR0hUbURpcQ==")] = _D("U2FuZC1TYW5k"),
 [_D("RGFyayB3YnZrbWVWR0hUbURpcQ==")] = _D("RGFyay1EYXJr"),
 [_D("R2hvc3Qgd2J2a21lVkdIVG1EaXE=")] = _D("R2hvc3QtR2hvc3Q="),
 [_D("RGlhbW9uZCB3YnZrbWVWR0hUbURpcQ==")] = _D("RGlhbW9uZC1EaWFtb25k"),
 [_D("TGlnaHQgd2J2a21lVkdIVG1EaXE=")] = _D("TGlnaHQtTGlnaHQ="),
 [_D("UnViYmVyIHdidmttZVZHSFRtRGlx")] = _D("UnViYmVyLVJ1YmJlcg=="),
 [_D("QmFycmllciB3YnZrbWVWR0hUbURpcQ==")] = _D("QmFycmllci1CYXJyaWVy"),
 [_D("TWFnbWEgd2J2a21lVkdIVG1EaXE=")] = _D("TWFnbWEtTWFnbWE="),
 [_D("UXVha2Ugd2J2a21lVkdIVG1EaXE=")] = _D("UXVha2UtUXVha2U="),
 [_D("QnVkZGhhIHdidmttZVZHSFRtRGlx")] = _D("QnVkZGhhLUJ1ZGRoYQ=="),
 [_D("TG92ZSB3YnZrbWVWR0hUbURpcQ==")] = _D("TG92ZS1Mb3Zl"),
 [_D("U3BpZGVyIHdidmttZVZHSFRtRGlx")] = _D("U3BpZGVyLVNwaWRlcg=="),
 [_D("U291bmQgd2J2a21lVkdIVG1EaXE=")] = _D("U291bmQtU291bmQ="),
 [_D("UGhvZW5peCB3YnZrbWVWR0hUbURpcQ==")] = _D("UGhvZW5peC1QaG9lbml4"),
 [_D("UG9ydGFsIHdidmttZVZHSFRtRGlx")] = _D("UG9ydGFsLVBvcnRhbA=="),
 [_D("UnVtYmxlIHdidmttZVZHSFRtRGlx")] = _D("UnVtYmxlLVJ1bWJsZQ=="),
 [_D("UGFpbiB3YnZrbWVWR0hUbURpcQ==")] = _D("UGFpbi1QYWlu"),
 [_D("QmxpenphcmQgd2J2a21lVkdIVG1EaXE=")] = _D("QmxpenphcmQtQmxpenphcmQ="),
 [_D("R3Jhdml0eSB3YnZrbWVWR0hUbURpcQ==")] = _D("R3Jhdml0eS1HcmF2aXR5"),
 [_D("TWFtbW90aCB3YnZrbWVWR0hUbURpcQ==")] = _D("TWFtbW90aC1NYW1tb3Ro"),
 [_D("RG91Z2ggd2J2a21lVkdIVG1EaXE=")] = _D("RG91Z2gtRG91Z2g="),
 [_D("U2hhZG93IHdidmttZVZHSFRtRGlx")] = _D("U2hhZG93LVNoYWRvdw=="),
 [_D("VmVub20gd2J2a21lVkdIVG1EaXE=")] = _D("VmVub20tVmVub20="),
 [_D("Q29udHJvbCB3YnZrbWVWR0hUbURpcQ==")] = _D("Q29udHJvbC1Db250cm9s"),
 [_D("R2FzIHdidmttZVZHSFRtRGlx")] = _D("R2FzLUdhcw=="),
 [_D("U3Bpcml0IHdidmttZVZHSFRtRGlx")] = _D("U3Bpcml0LVNwaXJpdA=="),
 [_D("TGVvcGFyZCB3YnZrbWVWR0hUbURpcQ==")] = _D("TGVvcGFyZC1MZW9wYXJk"),
 [_D("WWV0aSB3YnZrbWVWR0hUbURpcQ==")] = _D("WWV0aS1ZZXRp"),
 [_D("YmxGRnF2dGtBb01KZEkgd2J2a21lVkdIVG1EaXE=")] = _D("YmxGRnF2dGtBb01KZEktYmxGRnF2dGtBb01KZEk="),
 [_D("RHJhZ29uIEVhc3Qgd2J2a21lVkdIVG1EaXE=")] = _D("RHJhZ29uLURyYWdvbg=="),
 [_D("RHJhZ29uIFdlc3Qgd2J2a21lVkdIVG1EaXE=")] = _D("RHJhZ29uLURyYWdvbg==")
 }
 return FuYRpZWNyZUivB[wbvkmeVGHTmDiq] or nil
 end

 phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
 phUThJKRWbVAQl RqUFftQvfaEeJR = XggXraBDqgnxkm.sFNhEnqNuaqEaG

 -- garante que não tenha duas threads rodando
 if wRiXDBIkIrzKbi then return end

 wRiXDBIkIrzKbi = task.spawn(SvQdlbfnjcMYYN()
 while getgenv().AutoStoreFruits do
 task.wait(1)
 pcall(SvQdlbfnjcMYYN()
 if not RqUFftQvfaEeJR.aBYiproClLDecw then return end
 phUThJKRWbVAQl exywKOJIdDAHJI = RqUFftQvfaEeJR.Backpack
 phUThJKRWbVAQl fBdIysXwOaWcvU = RqUFftQvfaEeJR.aBYiproClLDecw

 phUThJKRWbVAQl SvQdlbfnjcMYYN StoreIfNotStored(wbvkmeVGHTmDiq)
 if wbvkmeVGHTmDiq:IsA(_D("VG9vbA==")) and wbvkmeVGHTmDiq:FindFirstChild(_D("d2J2a21lVkdIVG1EaXE=")) then
 phUThJKRWbVAQl syiUDMDseteYAj = Get_Fruit(wbvkmeVGHTmDiq.Name)
 if syiUDMDseteYAj then
 phUThJKRWbVAQl qxKWZtkYVwAEbj = game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Q2hlY2tGcnVpdA=="), syiUDMDseteYAj)
 if not qxKWZtkYVwAEbj then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U3RvcmVGcnVpdA=="), syiUDMDseteYAj, wbvkmeVGHTmDiq)
 end
 end
 end
 end

 for _, wbvkmeVGHTmDiq in pairs(fBdIysXwOaWcvU:GetChildren()) do
 StoreIfNotStored(wbvkmeVGHTmDiq)
 end
 for _, wbvkmeVGHTmDiq in pairs(exywKOJIdDAHJI:GetChildren()) do
 StoreIfNotStored(wbvkmeVGHTmDiq)
 end
 end)
 end
 wRiXDBIkIrzKbi = nil -- reset quando toggle desligar
 end)
 end
end)

phUThJKRWbVAQl eXyhubeelwMBlK = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddSection(_D("ZVh5aHViZWVsd01CbEs="))

oIjXnkPyzOwyWN = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddDropdown(_D("b0lqWG5rUHl6T3d5V04="), {
 AFotbYvafQTmWI = _D("U2VsZWN0IGVYeWh1YmVlbHdNQmxL"),
 Values = {
 _D("RGFyaw=="), _D("U2FuZA=="), _D("TWFnbWE="), _D("UnVtYmxl"), _D("RmxhbWU="), 
 _D("SWNl"), _D("TGlnaHQ="), _D("UXVha2U="), _D("QnVkZGhh"), _D("U3BpZGVy"), 
 _D("UGhvZW5peA=="), _D("RG91Z2g=")
 },
 Multi = false,
})
oIjXnkPyzOwyWN:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().SelectChip = Value
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("R2V0IHdidmttZVZHSFRtRGlxIEluIFV2ZHhyUGV5empGaFZCIExvdyBCZWxp"), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoGetFruit = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(.1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoGetFruit then
 phUThJKRWbVAQl dQLVQskhljOIYL = {_D("Um9ja2V0LVJvY2tldA=="), _D("U3Bpbi1TcGlu"), _D("Q2hvcC1DaG9w"), _D("U3ByaW5nLVNwcmluZw=="), _D("Qm9tYi1Cb21i"), _D("U21va2UtU21va2U="), 
 _D("U3Bpa2UtU3Bpa2U="), _D("RmxhbWUtRmxhbWU="), _D("RmFsY29uLUZhbGNvbg=="), _D("SWNlLUljZQ=="), _D("U2FuZC1TYW5k"), _D("RGFyay1EYXJr"), 
 _D("R2hvc3QtR2hvc3Q="), _D("RGlhbW9uZC1EaWFtb25k"), _D("TGlnaHQtTGlnaHQ="), _D("UnViYmVyLVJ1YmJlcg=="), _D("QmFycmllci1CYXJyaWVy")}

 for _, fruit in ipairs(dQLVQskhljOIYL) do
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {
 [1] = _D("TG9hZEZydWl0"),
 [2] = fruit
 }
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(pnvTUSLxDuQwJo))
 end
 end
 end)
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBlWHlodWJlZWx3TUJsSw=="), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().Auto_Dungeon = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 if getgenv().Auto_Dungeon then
 if not game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.TopHUDList.RaidTimer.Visible == false then
 phUThJKRWbVAQl WdqxhrsFMHvNoH = {_D("SXNsYW5kIDU="), _D("SXNsYW5kIDQ="), _D("SXNsYW5kIDM="), _D("SXNsYW5kIDI="), _D("SXNsYW5kIDE=")}
 for _, jZJAkzwAomdjZE in ipairs(WdqxhrsFMHvNoH) do
 phUThJKRWbVAQl mtwCUEbOaAvtcA = game:GetService(_D("eGt6TGZxcmxYT1ljek0="))[_D("X1dvcmxkT3JpZ2lu")].Locations:FindFirstChild(jZJAkzwAomdjZE)
 if mtwCUEbOaAvtcA then
 topos(mtwCUEbOaAvtcA.CFrame * CFrame.new(0, 70, 100))
 break
 end
 end
 end
 end
 end
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().Auto_Dungeon then
 if game:GetService(_D("WGdnWHJhQkRxZ254a20="))[_D("c0ZOaEVucU51YXFFYUc=")].XUBvNPokLCGyoF.Main.Timer.Visible == false then
 phUThJKRWbVAQl EXvRyTrlHnRivp = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("U3BlY2lhbCBNaWNyb2NoaXA=")) 
 or game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("U3BlY2lhbCBNaWNyb2NoaXA="))
 if EXvRyTrlHnRivp then
 if World2 then
 fireclickdetector(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
 elseif World3 then
 fireclickdetector(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map[_D("Qm9hdCBDYXN0bGU=")].RaidSummon2.Button.Main.ClickDetector)
 end
 end
 end
 end
 end)
 end
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 if getgenv().Auto_Dungeon then
 for i, v in pairs(game.xkzLfqrlXOYczM.Enemies:GetDescendants()) do
 if v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 pcall(SvQdlbfnjcMYYN()
 repeat task.wait(.001)
 v.KrlGhKjHesTsTl.Health = 0
 v.gXZtrRuZYlsrdE.CanCollide = false
 sethiddenproperty(game.XggXraBDqgnxkm.sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 until not getgenv().Auto_Dungeon or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end)
 end
 end
 end
 end
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 if getgenv().Auto_Dungeon then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {
 [1] = _D("UmFpZHNOcGM="),
 [2] = _D("U2VsZWN0"),
 [3] = getgenv().SelectChip
 }
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(pnvTUSLxDuQwJo))
 end)
 end
 end
end)
spawn(SvQdlbfnjcMYYN()
 while wait(1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().Auto_Dungeon then
 if game:GetService(_D("WGdnWHJhQkRxZ254a20="))[_D("c0ZOaEVucU51YXFFYUc=")].XUBvNPokLCGyoF.Main.Timer.Visible == false then
 phUThJKRWbVAQl EXvRyTrlHnRivp = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("U3BlY2lhbCBNaWNyb2NoaXA=")) 
 or game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("U3BlY2lhbCBNaWNyb2NoaXA="))
 if EXvRyTrlHnRivp then
 if World2 then
 fireclickdetector(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
 elseif World3 then
 fireclickdetector(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map[_D("Qm9hdCBDYXN0bGU=")].RaidSummon2.Button.Main.ClickDetector)
 end
 end
 end
 end
 end)
 end
end)

phUThJKRWbVAQl MpvJAqTUwJbosf = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddToggle(_D("TXB2SkFxVFV3SmJvc2Y="), {AFotbYvafQTmWI = _D("S2lsbCBBdXJh"), Default = false })
MpvJAqTUwJbosf:OnChanged(SvQdlbfnjcMYYN(Value)
 KillAura = Value
end)
DIDKqcielyXJJu.MpvJAqTUwJbosf:SetValue(false)
spawn(SvQdlbfnjcMYYN()
 while wait() do
 if KillAura then
 pcall(SvQdlbfnjcMYYN()
 for i,v in pairs(game.xkzLfqrlXOYczM.Enemies:GetDescendants()) do
 if v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 repeat task.wait()
 sethiddenproperty(game:GetService('XggXraBDqgnxkm').sFNhEnqNuaqEaG,_D("U2ltdWxhdGlvblJhZGl1cw=="),math.huge)
 v.KrlGhKjHesTsTl.Health = 0
 v.gXZtrRuZYlsrdE.CanCollide = false
 until not KillAura or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 end)
 end
 end
end)


srOTmqcypZcejd = HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBBd2FrZW4gd2J2a21lVkdIVG1EaXE="), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoAwaken = Value
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while wait(1) do
 if getgenv().AutoAwaken then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QXdha2VuZXI="), _D("Q2hlY2s="))
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QXdha2VuZXI="), _D("QXdha2Vu"))
 end
 end
 end)
end)
if World2 then
HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddButton({
 AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gTGFi"),
 Description = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Callback = SvQdlbfnjcMYYN()
 topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
 end
})
end
if World3 then
HYAqOrVauuPwRd.wbvkmeVGHTmDiq:AddButton({
 AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gTGFi"),
 Description = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Callback = SvQdlbfnjcMYYN()
 topos(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
 end
})
end

-----CldCUQlgELuTwE Event----

SetSpeedBoatSlider = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddSlider(_D("U2xpZGVyU3BlZWRCb2F0"), {
 AFotbYvafQTmWI = _D("U2hpcCBLZkpVeFlVTWNsQmFJcw=="),
 Default = 300,
 Min = 0,
 Max = 1000,
 Rounding = 1,
 Callback = SvQdlbfnjcMYYN(value)
 SetSpeedBoat = value
 end
})
SetSpeedBoatSlider:OnChanged(SvQdlbfnjcMYYN(value)
 SetSpeedBoat = value
end)
SetSpeedBoatSlider:SetValue(300) 
ListSeaZone = {
 _D("Wm9uZSAx"),
 _D("Wm9uZSAy"),
 _D("Wm9uZSAz"),
 _D("Wm9uZSA0"),
 _D("Wm9uZSA1"),
 _D("Wm9uZSA2")
}
zoneselect = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddDropdown(_D("em9uZXNlbGVjdA=="), {
 AFotbYvafQTmWI = _D("U2VsZWN0IFpvbmU="),
 Values = ListSeaZone,
 Multi = false,
 Default = false,
})
zoneselect:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().SelectedZone = value
end)
ListSeaBoat = {
 _D("R3VhcmRpYW4="),
 _D("UGlyYXRlR3JhbmRCcmlnYWRl"),
 _D("TWFyaW5lR3JhbmRCcmlnYWRl"),
 _D("UGlyYXRlQnJpZ2FkZQ=="),
 _D("TWFyaW5lQnJpZ2FkZQ=="),
 _D("UGlyYXRlU2xvb3A="),
 _D("TWFyaW5lU2xvb3A="),
 _D("QmVhc3RIdW50ZXI="),
}
selectthuyen = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddDropdown(_D("c2VsZWN0dGh1eWVu"), {
 AFotbYvafQTmWI = _D("U2VsZWN0IEJvYXQ="),
 Values = ListSeaBoat,
 Multi = false,
 Default = false,
})
selectthuyen:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().SelectedBoat = value
end)
boattween = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddDropdown(_D("Ym9hdHR3ZWVu"), {
 AFotbYvafQTmWI = _D("S2ZKVXhZVU1jbEJhSXMgVHdlZW4gQm9hdA=="),
 Values = {_D("MTgw"), _D("MjAw"), _D("MjUw"), _D("MzAw"), _D("MzI1"), _D("MzUw")},
 Multi = false,
 Default = 300,
})
boattween:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().SpeedBoat = Value
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while wait() do
 if getgenv().SelectedZone == _D("Wm9uZSAx") then
 CFrameSelectedZone = CFrame.new(
 -21998.375, 30.0006084, -682.309143,
 0.120013528, 0.00690158736, 0.99274826,
 -0.0574118942, 0.998350561, -2.36509201e-10,
 -0.991110802, -0.0569955558, 0.120211802
 )
 elseif getgenv().SelectedZone == _D("Wm9uZSAy") then
 CFrameSelectedZone = CFrame.new(
 -26779.5215, 30.0005474, -822.858032,
 0.307457417, 0.019647358, 0.951358974,
 -0.0637726262, 0.997964442, -4.15334017e-10,
 -0.949422479, -0.0606706589, 0.308084518
 )
 elseif getgenv().SelectedZone == _D("Wm9uZSAz") then
 CFrameSelectedZone = CFrame.new(
 -31171.957, 30.0001011, -2256.93774,
 0.37637493, 0.0150483791, 0.926345229,
 -0.0399504974, 0.999201655, 2.70896673e-11,
 -0.925605655, -0.0370079502, 0.376675636
 )
 elseif getgenv().SelectedZone == _D("Wm9uZSA0") then
 CFrameSelectedZone = CFrame.new(
 -34054.6875, 30.2187767, -2560.12012,
 0.0935864747, -0.00122954219, 0.995610416,
 0.0624034069, 0.998040259, -0.00463332096,
 -0.993653536, 0.062563099, 0.0934797972
 )
 elseif getgenv().SelectedZone == _D("Wm9uZSA1") then
 CFrameSelectedZone = CFrame.new(
 -38887.5547, 30.0004578, -2162.99023,
 -0.188895494, -0.00704088295, 0.981971979,
 -0.0372481011, 0.999306023, -1.39882339e-09,
 -0.981290519, -0.0365765914, -0.189026669
 )
 elseif getgenv().SelectedZone == _D("Wm9uZSA2") then
 CFrameSelectedZone = CFrame.new(
 -44541.7617, 30.0003204, -1244.8584,
 -0.0844199061, -0.00553312758, 0.9964149,
 -0.0654025897, 0.997858942, 2.02319411e-10,
 -0.99428153, -0.0651681125, -0.0846010372
 )
 end
 end
 end)
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBQZW5ldHJhdGUgUm9ja3MgV2hlbiBCb2F0IFJ1bnM="), Default = true })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().GoThroughRocks = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 if getgenv().GoThroughRocks or getgenv().SailBoat then
 for _, boat in ipairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Boats:GetChildren()) do
 for _, TbodWTnEaxuEJo in ipairs(boat:GetDescendants()) do
 if TbodWTnEaxuEJo:IsA(_D("QmFzZVBhcnQ=")) then
 TbodWTnEaxuEJo.CanCollide = false
 end
 end
 end
 else
 for _, boat in ipairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Boats:GetChildren()) do
 for _, TbodWTnEaxuEJo in ipairs(boat:GetDescendants()) do
 if TbodWTnEaxuEJo:IsA(_D("QmFzZVBhcnQ=")) then
 TbodWTnEaxuEJo.CanCollide = true
 end
 end
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBDbGRDVVFsZ0VMdVR3RSBFdmVudA=="),Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(state)
 getgenv().SailBoat = state
 StopTween(getgenv().SailBoat)
end)
SvQdlbfnjcMYYN CheckBoat()
 phUThJKRWbVAQl wExlmmqTxYIeST = game:GetService(_D("eGt6TGZxcmxYT1ljek0="))
 phUThJKRWbVAQl tBBtixjWbXTVwp = wExlmmqTxYIeST:FindFirstChild(_D("Qm9hdHM="))
 phUThJKRWbVAQl yXrzDOHWCZktBJ = getgenv().SelectedBoat
 if not (tBBtixjWbXTVwp and yXrzDOHWCZktBJ) then
 return false
 end
 for _, boat in pairs(tBBtixjWbXTVwp:GetChildren()) do
 if boat.Name == yXrzDOHWCZktBJ then
 if boat:FindFirstChild(_D("TXlCb2F0RXNw")) then
 return boat
 end
 end
 end
 return false
end
SvQdlbfnjcMYYN CheckEnemiesBoat()
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")):FindFirstChild(_D("RW5lbWllcw==")) 
 if not KTWBQhwktSkgEc then
 return false
 end
 return KTWBQhwktSkgEc:FindFirstChild(_D("RmlzaEJvYXQ=")) 
 or KTWBQhwktSkgEc:FindFirstChild(_D("UGlyYXRlQnJpZ2FkZQ==")) 
 or KTWBQhwktSkgEc:FindFirstChild(_D("UGlyYXRlR3JhbmRCcmlnYWRl")) 
 and true or false
end
SvQdlbfnjcMYYN CheckShark()
 phUThJKRWbVAQl wExlmmqTxYIeST = game:GetService(_D("eGt6TGZxcmxYT1ljek0="))
 phUThJKRWbVAQl KTWBQhwktSkgEc = wExlmmqTxYIeST:FindFirstChild(_D("RW5lbWllcw=="))
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM and XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl OdSSDwxKzrOmwX = KlPGYKwHNevVQC and KlPGYKwHNevVQC:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if not (KTWBQhwktSkgEc and OdSSDwxKzrOmwX) then
 return false
 end
 for _, v in pairs(KTWBQhwktSkgEc:GetChildren()) do
 phUThJKRWbVAQl lnhLIZpBaYGcBO = v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw="))
 phUThJKRWbVAQl RoXmJVvvmgGFsh = v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if v.Name == _D("U2hhcms=") and lnhLIZpBaYGcBO and RoXmJVvvmgGFsh and lnhLIZpBaYGcBO.Health > 0 then
 if (RoXmJVvvmgGFsh.Position - OdSSDwxKzrOmwX.Position).Magnitude <= 200 then
 return true
 end
 end
 end
 return false
end
SvQdlbfnjcMYYN CheckPiranha()
 phUThJKRWbVAQl wExlmmqTxYIeST = game:GetService(_D("eGt6TGZxcmxYT1ljek0="))
 phUThJKRWbVAQl KTWBQhwktSkgEc = wExlmmqTxYIeST:FindFirstChild(_D("RW5lbWllcw=="))
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl KlPGYKwHNevVQC = XPKQttDgjyuQHM and XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl OdSSDwxKzrOmwX = KlPGYKwHNevVQC and KlPGYKwHNevVQC:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if not (KTWBQhwktSkgEc and OdSSDwxKzrOmwX) then
 return false
 end
 for _, v in pairs(KTWBQhwktSkgEc:GetChildren()) do
 phUThJKRWbVAQl lnhLIZpBaYGcBO = v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw="))
 phUThJKRWbVAQl RoXmJVvvmgGFsh = v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if v.Name == _D("UGlyYW5oYQ==") and lnhLIZpBaYGcBO and RoXmJVvvmgGFsh and lnhLIZpBaYGcBO.Health > 0 then
 if (RoXmJVvvmgGFsh.Position - OdSSDwxKzrOmwX.Position).Magnitude <= 200 then
 return true
 end
 end
 end
 return false
end
SvQdlbfnjcMYYN AddEsp(Name, Parent)
 if not Parent or not Parent:IsA(_D("SW5zdGFuY2U=")) then
 return
 end
 phUThJKRWbVAQl sUPNRqFQzAXnSE = Instance.new(_D("c1VQTlJxRlF6QVhuU0U="))
 phUThJKRWbVAQl ezgwMyHkSukIsl = Instance.new(_D("ZXpnd015SGtTdWtJc2w="))
 sUPNRqFQzAXnSE.Name = Name
 sUPNRqFQzAXnSE.Parent = Parent
 sUPNRqFQzAXnSE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 sUPNRqFQzAXnSE.AlwaysOnTop = true
 sUPNRqFQzAXnSE.Size = UDim2.new(0, 200, 0, 50)
 sUPNRqFQzAXnSE.StudsOffset = Vector3.new(0, 2.5, 0)
 ezgwMyHkSukIsl.Parent = sUPNRqFQzAXnSE
 ezgwMyHkSukIsl.BackgroundTransparency = 1
 ezgwMyHkSukIsl.Size = UDim2.new(1, 0, 1, 0)
 ezgwMyHkSukIsl.Font = Enum.Font.GothamBold
 ezgwMyHkSukIsl.TextColor3 = Color3.new(1, 1, 1)
 ezgwMyHkSukIsl.TextSize = 15
 ezgwMyHkSukIsl.Text = _D("WU9VUiBCT0FUIElTIEhFUkXihpM=")
 return sUPNRqFQzAXnSE
end
spawn(SvQdlbfnjcMYYN()
 while wait(0.2) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().SailBoat then
 if not CheckBoat() then
 BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781) 
 if (BuyBoatCFrame.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude > 1000 then
 topos(CFrame.new(-16224, 9, 439))
 else
 buyb = topos(BuyBoatCFrame)
 end
 if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position 
 - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude <= 10 then 
 if buyb then buyb:Stop() end
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QnV5Qm9hdA=="), getgenv().SelectedBoat)
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Boats:GetChildren()) do
 if v.Name == getgenv().SelectedBoat then
 if (v.VehicleSeat.CFrame.Position 
 - game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude <= 100 then
 AddEsp('MyBoatEsp', v)
 end
 end
 end
 end
 elseif CheckBoat() then
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Boats:GetChildren()) do
 if v.Name == getgenv().SelectedBoat then
 if v:FindFirstChild(_D("TXlCb2F0RXNw")) then
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Sit == false then
 if ((CheckShark() and getgenv().AutoKillShark) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("VGVycm9yc2hhcms=")) and getgenv().AutoTerrorshark) 
 or (CheckPiranha() and getgenv().AutoKillPiranha) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RmlzaCBDcmV3IE1lbWJlcg==")) and getgenv().AutoKillFishCrew) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RmlzaEJvYXQ=")) and getgenv().RelzFishBoat) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("UGlyYXRlQnJpZ2FkZQ==")) and getgenv().RelzPirateBrigade) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("UGlyYXRlR3JhbmRCcmlnYWRl")) and getgenv().RelzPirateGrandBrigade) 
 or (CheckSeaBeast() and getgenv().AutoSeaBest)) then 
 if stoppos then stoppos:Stop() end
 else
 stoppos = topos(v.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
 end
 else
 repeat 
 wait()
 stopboat = TPB(CFrameSelectedZone, v.VehicleSeat)
 until ((CheckShark() and getgenv().AutoKillShark) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("VGVycm9yc2hhcms=")) and getgenv().AutoTerrorshark) 
 or (CheckPiranha() and getgenv().AutoKillPiranha) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RmlzaCBDcmV3IE1lbWJlcg==")) and getgenv().AutoKillFishCrew) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RmlzaEJvYXQ=")) and getgenv().RelzFishBoat) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("UGlyYXRlQnJpZ2FkZQ==")) and getgenv().RelzPirateBrigade) 
 or (game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("UGlyYXRlR3JhbmRCcmlnYWRl")) and getgenv().RelzPirateGrandBrigade) 
 or (CheckSeaBeast() and getgenv().AutoSeaBest)) 
 or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:WaitForChild(_D("S3JsR2hLakhlc1RzVGw=")).Sit == false 
 or getgenv().SailBoat == false 
 if stopboat then stopboat:Stop() end
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(true, 32, false, game)
 wait(0.1)
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(false, 32, false, game)
 end
 end
 end
 end
 end
 end
 end)
 end
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(0.2) do
 if not getgenv().SailBoat then continue end
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies
 phUThJKRWbVAQl JuYLKrHghwpguG = false
 if (CheckShark() and getgenv().AutoKillShark) or 
 (KTWBQhwktSkgEc:FindFirstChild(_D("VGVycm9yc2hhcms=")) and getgenv().AutoTerrorshark) or 
 (CheckPiranha() and getgenv().AutoKillPiranha) or 
 (KTWBQhwktSkgEc:FindFirstChild(_D("RmlzaCBDcmV3IE1lbWJlcg==")) and getgenv().AutoKillFishCrew) or 
 (KTWBQhwktSkgEc:FindFirstChild(_D("RmlzaEJvYXQ=")) and getgenv().RelzFishBoat) or 
 (KTWBQhwktSkgEc:FindFirstChild(_D("UGlyYXRlQnJpZ2FkZQ==")) and getgenv().RelzPirateBrigade) or 
 (KTWBQhwktSkgEc:FindFirstChild(_D("UGlyYXRlR3JhbmRCcmlnYWRl")) and getgenv().RelzPirateGrandBrigade) or 
 (CheckSeaBeast() and getgenv().AutoSeaBest) then
 JuYLKrHghwpguG = true
 end
 if JuYLKrHghwpguG then
 phUThJKRWbVAQl lnhLIZpBaYGcBO = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw="))
 if lnhLIZpBaYGcBO and lnhLIZpBaYGcBO.Sit then
 phUThJKRWbVAQl WOpShyEJqtvoAP = game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg=="))
 WOpShyEJqtvoAP:SendKeyEvent(true, 32, false, game)
 task.wait(0.1)
 WOpShyEJqtvoAP:SendKeyEvent(false, 32, false, game)
 end
 end
 end
 end)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 pcall(SvQdlbfnjcMYYN()
 if not getgenv().SailBoat then return end 
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()
 if getgenv().AutoKillFishCrew then
 for _, ksJlFEgkkErXbu in pairs(KTWBQhwktSkgEc) do
 if ksJlFEgkkErXbu.Name == _D("RmlzaCBDcmV3IE1lbWJlcg==") and ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health > 0 then
 StartBring = true
 repeat
 task.wait()
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 phUThJKRWbVAQl FyWnFFZakWhtDs = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 phUThJKRWbVAQl IPSvJfVXliKWYR = ksJlFEgkkErXbu.gXZtrRuZYlsrdE.Position
 if (IPSvJfVXliKWYR - FyWnFFZakWhtDs).Magnitude > 5 then
 topos(ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame * Pos)
 end
 getgenv().SeaSkill = false
 until not getgenv().AutoKillFishCrew or not ksJlFEgkkErXbu.Parent or ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health <= 0
 StartBring = false
 end
 end
 end
 if getgenv().RelzFishBoat then
 for _, ksJlFEgkkErXbu in pairs(KTWBQhwktSkgEc) do
 if ksJlFEgkkErXbu:FindFirstChild(_D("RW5naW5l")) then
 phUThJKRWbVAQl RKBVcCyLeZDlWi = ksJlFEgkkErXbu.Engine.CFrame
 repeat
 task.wait()
 phUThJKRWbVAQl FyWnFFZakWhtDs = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position 
 if (RKBVcCyLeZDlWi.Position - FyWnFFZakWhtDs).Magnitude > 5 then
 topos(RKBVcCyLeZDlWi)
 end
 getgenv().SeaSkill = (RKBVcCyLeZDlWi.Position - FyWnFFZakWhtDs).Magnitude <= 50
 Skillaimbot = true
 AimBotSkillPosition = RKBVcCyLeZDlWi.Position + Vector3.new(0, -15, 0)
 until not ksJlFEgkkErXbu.Parent or ksJlFEgkkErXbu.Health < 0 or not getgenv().RelzFishBoat
 Skillaimbot = false
 getgenv().SeaSkill = false
 end
 end
 end
 end)
 end
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 pcall(SvQdlbfnjcMYYN()
 if not getgenv().SailBoat then return end
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()
 if getgenv().AutoKillFishCrew then
 for _, ksJlFEgkkErXbu in pairs(KTWBQhwktSkgEc) do
 if ksJlFEgkkErXbu.Name == _D("RmlzaCBDcmV3IE1lbWJlcg==") and ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health > 0 then
 getgenv().StartMagnet = true
 repeat
 task.wait()
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 topos(ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CFrame * Pos)
 getgenv().SeaSkill = false
 until not getgenv().AutoKillFishCrew or not ksJlFEgkkErXbu.Parent or ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health <= 0
 getgenv().StartMagnet = false
 end
 end
 elseif getgenv().RelzFishBoat then
 for _, ksJlFEgkkErXbu in pairs(KTWBQhwktSkgEc) do
 if ksJlFEgkkErXbu:FindFirstChild(_D("RW5naW5l")) then
 phUThJKRWbVAQl RKBVcCyLeZDlWi = ksJlFEgkkErXbu.Engine.CFrame
 repeat
 task.wait()
 phUThJKRWbVAQl FyWnFFZakWhtDs = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 getgenv().SeaSkill = (RKBVcCyLeZDlWi.Position - FyWnFFZakWhtDs).Magnitude <= 50 
 if (RKBVcCyLeZDlWi.Position - FyWnFFZakWhtDs).Magnitude > 5 then
 topos(RKBVcCyLeZDlWi)
 end
 Skillaimbot = true
 AimBotSkillPosition = RKBVcCyLeZDlWi.Position + Vector3.new(0, -15, 0)
 until not ksJlFEgkkErXbu.Parent or ksJlFEgkkErXbu.Health < 0 or not getgenv().RelzFishBoat
 Skillaimbot = false
 getgenv().SeaSkill = false
 end
 end
 end
 end)
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBTaGFyaw=="),Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().AutoKillShark = value
 StopTween(getgenv().AutoKillShark)
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBQaXJhbmhh"),Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().AutoKillPiranha = value
 StopTween(getgenv().AutoKillPiranha)
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBGaXNoIENyZXc="),Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().AutoKillFishCrew = value
 StopTween(getgenv().AutoKillFishCrew)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl yOXFMjqnvTyvyo = XPKQttDgjyuQHM and XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl GQkSIbCAdorHvm = yOXFMjqnvTyvyo and yOXFMjqnvTyvyo:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if not GQkSIbCAdorHvm then return end 
 phUThJKRWbVAQl KTWBQhwktSkgEc = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()
 if getgenv().AutoKillShark and World3 then
 for _, v in pairs(KTWBQhwktSkgEc) do
 if v.Name == _D("U2hhcms=") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 if (v.gXZtrRuZYlsrdE.Position - GQkSIbCAdorHvm.Position).Magnitude <= 500 then
 EquipWeapon(getgenv().SelectWeapon)
 repeat
 task.wait(0.1)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.Size = Vector3.new(50, 50, 50)
 v.gXZtrRuZYlsrdE.CanCollide = false
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 until not getgenv().AutoKillShark or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 end
 end
 if getgenv().AutoKillPiranha and World3 then
 for _, v in pairs(KTWBQhwktSkgEc) do
 if v.Name == _D("UGlyYW5oYQ==") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 if (v.gXZtrRuZYlsrdE.Position - GQkSIbCAdorHvm.Position).Magnitude <= 500 then
 EquipWeapon(getgenv().SelectWeapon)
 repeat
 task.wait(0.1)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.Size = Vector3.new(50, 50, 50)
 v.gXZtrRuZYlsrdE.CanCollide = false
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 until not getgenv().AutoKillPiranha or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 end
 end
 if getgenv().AutoKillFishCrew and World3 then
 for _, v in pairs(KTWBQhwktSkgEc) do
 if v.Name == _D("RmlzaCBDcmV3IE1lbWJlcg==") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 if (v.gXZtrRuZYlsrdE.Position - GQkSIbCAdorHvm.Position).Magnitude <= 500 then
 EquipWeapon(getgenv().SelectWeapon)
 repeat
 task.wait(0.1)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.Size = Vector3.new(50, 50, 50)
 v.gXZtrRuZYlsrdE.CanCollide = false
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 MonFarm = v.Name
 PosMon = v.gXZtrRuZYlsrdE.CFrame
 until not getgenv().AutoKillFishCrew or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 end
 end
 if getgenv().AutoTerrorshark and World3 then
 for _, v in pairs(KTWBQhwktSkgEc) do
 if v.Name == _D("VGVycm9yc2hhcms=") and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 EquipWeapon(getgenv().SelectWeapon)
 repeat
 task.wait(0.1)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.gXZtrRuZYlsrdE.Size = Vector3.new(60, 60, 60)
 if yOXFMjqnvTyvyo.KrlGhKjHesTsTl.Health < 2000 then
 fastpos(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(0, 300, 0))
 task.wait(1)
 else
 topos(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(0, 55, 0))
 end
 TerrorSharkpos = v.gXZtrRuZYlsrdE.CFrame
 until not getgenv().AutoTerrorshark or not v.Parent or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 end
 end)
 end
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoTerrorshark then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl yOXFMjqnvTyvyo = XPKQttDgjyuQHM and XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl GQkSIbCAdorHvm = yOXFMjqnvTyvyo and yOXFMjqnvTyvyo:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if not GQkSIbCAdorHvm then return end 
 phUThJKRWbVAQl uIIwDcYRBVNUOB = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("VGVycm9yc2hhcms="))
 if uIIwDcYRBVNUOB and uIIwDcYRBVNUOB:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 if (uIIwDcYRBVNUOB.gXZtrRuZYlsrdE.Position - GQkSIbCAdorHvm.Position).Magnitude <= 150 then
 repeat
 task.wait()
 until not getgenv().AutoTerrorshark
 end
 end
 end
 end)
 end
end)
SvQdlbfnjcMYYN UpDownPos(pos)
 if typeof(pos) ~= _D("Q0ZyYW1l") then return end
 fastpos(pos * CFrame.new(0, 40, 0))
 task.wait(1)
 fastpos(pos * CFrame.new(0, 300, 0))
 task.wait(2)
end
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBHaG9zdCBTaGlw"),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().RelzFishBoat = value
 StopTween(getgenv().RelzFishBoat)
 if not getgenv().RelzFishBoat then
 getgenv().SeaSkill = false
 Skillaimbot = false
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBQaXJhdGUgQnJpZ2FkZQ=="),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().RelzPirateBrigade = value
 StopTween(getgenv().RelzPirateBrigade)
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBQaXJhdGUgR3JhbmQgQnJpZ2FkZQ=="),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().RelzPirateGrandBrigade = value
 StopTween(getgenv().RelzPirateGrandBrigade)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 pcall(SvQdlbfnjcMYYN()
 if not getgenv().RelzFishBoat then return end
 for _, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == _D("RmlzaEJvYXQ=") and v:FindFirstChild(_D("RW5naW5l")) then
 repeat task.wait(0.1)
 phUThJKRWbVAQl kHlyiBzakhMpEf = v.Engine.CFrame * CFrame.new(0, 10, 0)
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl yOXFMjqnvTyvyo = XPKQttDgjyuQHM and XPKQttDgjyuQHM.aBYiproClLDecw
 phUThJKRWbVAQl GQkSIbCAdorHvm = yOXFMjqnvTyvyo and yOXFMjqnvTyvyo:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if GQkSIbCAdorHvm and (v.Engine.Position - GQkSIbCAdorHvm.Position).Magnitude <= 50 then
 getgenv().SeaSkill = true
 else
 getgenv().SeaSkill = false
 end
 if GQkSIbCAdorHvm and (GQkSIbCAdorHvm.Position - kHlyiBzakhMpEf.Position).Magnitude > 2 then
 topos(kHlyiBzakhMpEf)
 end
 Skillaimbot = true
 AimBotSkillPosition = v.Engine.Position
 until 
 not v.Parent or v.Health.Value <= 0 or 
 not game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("RmlzaEJvYXQ=")) or 
 not v:FindFirstChild(_D("RW5naW5l")) or 
 not getgenv().RelzFishBoat
 Skillaimbot = false
 getgenv().SeaSkill = false
 end
 end
 end)
 end
end)
 
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBUZXJyb3IgU2hhcms="),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().AutoTerrorshark = value
 StopTween(getgenv().AutoTerrorshark)
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBDbGRDVVFsZ0VMdVR3RSBCZWFzdA=="),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().AutoSeaBest = value
 StopTween(getgenv().AutoSeaBest)
 if not getgenv().AutoSeaBest then
 getgenv().SeaSkill = false
 Skillaimbot = false
 end
end)
SvQdlbfnjcMYYN CheckSeaBeast()
 phUThJKRWbVAQl DrXkBwdGRTWduX = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")):FindFirstChild(_D("U2VhQmVhc3Rz"))
 if not DrXkBwdGRTWduX then return false end
 for _, beast in ipairs(DrXkBwdGRTWduX:GetChildren()) do
 phUThJKRWbVAQl lnhLIZpBaYGcBO = beast:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw="))
 phUThJKRWbVAQl OdSSDwxKzrOmwX = beast:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if lnhLIZpBaYGcBO and OdSSDwxKzrOmwX and lnhLIZpBaYGcBO.Health > 0 then
 return true
 end
 end
 return false
end
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 if getgenv().AutoSeaBest then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl wExlmmqTxYIeST = game:GetService(_D("eGt6TGZxcmxYT1ljek0="))
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 if wExlmmqTxYIeST:FindFirstChild(_D("U2VhQmVhc3Rz")) then
 for _, v in pairs(wExlmmqTxYIeST.SeaBeasts:GetChildren()) do
 if CheckSeaBeast() then
 repeat
 wait()
 CFrameSeaBeast = v.gXZtrRuZYlsrdE.CFrame * CFrame.new(0, 400, 0)
 if (CFrameSeaBeast.Position - XPKQttDgjyuQHM.aBYiproClLDecw.gXZtrRuZYlsrdE.CFrame.Position).Magnitude <= 50 then
 getgenv().SeaSkill = true
 else
 getgenv().SeaSkill = false
 end
 Skillaimbot = true
 AimBotSkillPosition = v.gXZtrRuZYlsrdE.CFrame.Position
 topos(CFrameSeaBeast)
 until 
 not getgenv().AutoSeaBest or 
 not v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) or 
 not v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) or 
 v.KrlGhKjHesTsTl.Health < 0 or 
 not v.Parent
 Skillaimbot = false
 getgenv().SeaSkill = false
 end
 end
 end
 end)
 end
 end
end)
phUThJKRWbVAQl SvQdlbfnjcMYYN UseSkill(key, holdTime)
 game:service('VirtualInputManager'):SendKeyEvent(true, key, false, game)
 task.wait(holdTime)
 game:service('VirtualInputManager'):SendKeyEvent(false, key, false, game)
end
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().SeaSkill then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl MfDHpsBmcoureQ = XPKQttDgjyuQHM.Backpack 
 if getgenv().UseSeaFruitSkill and not DoneSkillFruit then
 for _, v in pairs(MfDHpsBmcoureQ:GetChildren()) do
 if v:IsA(_D("VG9vbA==")) and v.ToolTip == _D("QmxveCB3YnZrbWVWR0hUbURpcQ==") then
 XPKQttDgjyuQHM.aBYiproClLDecw.KrlGhKjHesTsTl:EquipTool(v)
 end
 end 
 if getgenv().SkillFruitZ then UseSkill(_D("Wg=="), getgenv().SeaHoldSKillZ) end
 if getgenv().SkillFruitX then UseSkill(_D("WA=="), getgenv().SeaHoldSKillX) end
 if getgenv().SkillFruitC then UseSkill(_D("Qw=="), getgenv().SeaHoldSKillC) end
 if getgenv().SkillFruitV then UseSkill(_D("Vg=="), getgenv().SeaHoldSKillV) end
 if getgenv().SkillFruitF then UseSkill(_D("Rg=="), getgenv().SeaHoldSKillF) end 
 DoneSkillFruit = true
 end 
 if getgenv().UseSeaMeleeSkill and not DoneSkillMelee then
 for _, v in pairs(MfDHpsBmcoureQ:GetChildren()) do
 if v:IsA(_D("VG9vbA==")) and v.ToolTip == _D("TWVsZWU=") then
 XPKQttDgjyuQHM.aBYiproClLDecw.KrlGhKjHesTsTl:EquipTool(v)
 end
 end 
 if getgenv().SkillMeleeZ then UseSkill(_D("Wg=="), 0) end
 if getgenv().SkillMeleeX then UseSkill(_D("WA=="), 0) end
 if getgenv().SkillMeleeC then UseSkill(_D("Qw=="), 0) end 
 DoneSkillMelee = true
 end 
 if getgenv().UseSeaSwordSkill and not DoneSkillSword then
 for _, v in pairs(MfDHpsBmcoureQ:GetChildren()) do
 if v:IsA(_D("VG9vbA==")) and v.ToolTip == _D("U3dvcmQ=") then
 XPKQttDgjyuQHM.aBYiproClLDecw.KrlGhKjHesTsTl:EquipTool(v)
 end
 end 
 if getgenv().SkillSwordZ then UseSkill(_D("Wg=="), 0) end
 if getgenv().SkillSwordX then UseSkill(_D("WA=="), 0) end 
 DoneSkillSword = true
 end 
 if getgenv().UseSeaGunSkill and not DoneSkillGun then
 for _, v in pairs(MfDHpsBmcoureQ:GetChildren()) do
 if v:IsA(_D("VG9vbA==")) and v.ToolTip == _D("R3Vu") then
 XPKQttDgjyuQHM.aBYiproClLDecw.KrlGhKjHesTsTl:EquipTool(v)
 end
 end 
 if getgenv().SkillGunZ then UseSkill(_D("Wg=="), 0.1) end
 if getgenv().SkillGunX then UseSkill(_D("WA=="), 0.1) end
 
 DoneSkillGun = true
 end 
 task.wait(0.5)
 DoneSkillGun, DoneSkillSword, DoneSkillFruit, DoneSkillMelee = false, false, false, false
 end
 end)
 end
end) 

phUThJKRWbVAQl eBDwasoHcpYhDG = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddSection(_D("8J+Pne+4j2VCRHdhc29IY3BZaERHIElzbGFuZA=="))

srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), { AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gTWlnYXJlIElzbGFuZA=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().TeleportMigare = Value
 StopTween(getgenv().TeleportMigare)
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while wait(0.5) do
 if getgenv().TeleportMigare and World3 then
 phUThJKRWbVAQl jZJAkzwAomdjZE = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map:FindFirstChild(_D("SHByeG5DVkVXYm5qZng="))
 if jZJAkzwAomdjZE and jZJAkzwAomdjZE:FindFirstChild(_D("Q2VudGVy")) then
 phUThJKRWbVAQl GFenAgyQBtoxle = jZJAkzwAomdjZE.Center.Position
 phUThJKRWbVAQl vDHFcIOzgxuMXz = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 if vDHFcIOzgxuMXz and (Vector3.new(GFenAgyQBtoxle.X, 500, GFenAgyQBtoxle.Z) - vDHFcIOzgxuMXz).magnitude > 5 then
 topos(CFrame.new(GFenAgyQBtoxle.X, 500, GFenAgyQBtoxle.Z))
 end
 end
 end
 end
 end)
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), { AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gSGlnaGVzdCBQb2ludA=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().Tweentohighestpoint = Value
 if not Value then
 return
 end
 spawn(SvQdlbfnjcMYYN()
 while getgenv().Tweentohighestpoint do
 phUThJKRWbVAQl FAhHIaZHdxFIks = tweento_highestpoint()
 if FAhHIaZHdxFIks and FAhHIaZHdxFIks:FindFirstChild(_D("Q0ZyYW1l")) then
 phUThJKRWbVAQl GFenAgyQBtoxle = FAhHIaZHdxFIks.CFrame * CFrame.new(0, 211.88, 0)
 phUThJKRWbVAQl vDHFcIOzgxuMXz = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 if vDHFcIOzgxuMXz and (GFenAgyQBtoxle.Position - vDHFcIOzgxuMXz).magnitude > 5 then
 topos(GFenAgyQBtoxle)
 end
 end
 wait(0.5)
 end
 end)
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), { AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gQWR2YW5jZWQgd2J2a21lVkdIVG1EaXEgRGVhbGVy"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().TeleportAdvancedFruitDealer = Value
 if not Value then
 return
 end
 spawn(SvQdlbfnjcMYYN()
 while getgenv().TeleportAdvancedFruitDealer and wait(0.5) do
 phUThJKRWbVAQl HprxnCVEWbnjfx = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map:FindFirstChild(_D("SHByeG5DVkVXYm5qZng="))
 if HprxnCVEWbnjfx then
 phUThJKRWbVAQl WqdjbywJhOCfrC = {}
 for _, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).NPCs:GetChildren()) do
 table.insert(WqdjbywJhOCfrC, v)
 end
 for _, v in pairs(WqdjbywJhOCfrC) do
 if v.Name == _D("QWR2YW5jZWQgd2J2a21lVkdIVG1EaXEgRGVhbGVy") and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl GFenAgyQBtoxle = v.gXZtrRuZYlsrdE.CFrame
 phUThJKRWbVAQl vDHFcIOzgxuMXz = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 if vDHFcIOzgxuMXz and (GFenAgyQBtoxle.Position - vDHFcIOzgxuMXz).magnitude > 5 then
 topos(GFenAgyQBtoxle)
 end
 break
 end
 end
 end
 end
 end)
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), { AFotbYvafQTmWI = _D("TG9jayBNb29uIEFuZCBPbiBSYWNlIFYz"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().LockMoonAndOnRaceV3 = Value
 if not Value then
 return
 end
 spawn(SvQdlbfnjcMYYN()
 while getgenv().LockMoonAndOnRaceV3 and wait(0.5) do
 pcall(SvQdlbfnjcMYYN()
 if World3 then
 phUThJKRWbVAQl MRuQUtPkdnPGJh = game.Lighting:GetMoonDirection()
 if MRuQUtPkdnPGJh and MRuQUtPkdnPGJh.Magnitude > 0 then
 phUThJKRWbVAQl uTZiOqosigoxmN = game.xkzLfqrlXOYczM.CurrentCamera.CFrame.p + MRuQUtPkdnPGJh * 100
 game.xkzLfqrlXOYczM.CurrentCamera.CFrame = CFrame.lookAt(game.xkzLfqrlXOYczM.CurrentCamera.CFrame.p, uTZiOqosigoxmN)
 end
 end
 end)
 end
 end)
 spawn(SvQdlbfnjcMYYN()
 while getgenv().LockMoonAndOnRaceV3 and wait(3) do
 pcall(SvQdlbfnjcMYYN()
 if World3 then
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(true, _D("VA=="), false, game)
 wait(0.1)
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(false, _D("VA=="), false, game)
 end
 end)
 end
 end)
end)

srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), { AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gQmx1ZSBHZWFy"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().TeleportToGear = Value
 StopTween(getgenv().TeleportToGear)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if not getgenv().TeleportToGear or not World3 then continue end
 phUThJKRWbVAQl HprxnCVEWbnjfx = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map:FindFirstChild(_D("SHByeG5DVkVXYm5qZng="))
 if not HprxnCVEWbnjfx then continue end
 for _, v in ipairs(HprxnCVEWbnjfx:GetChildren()) do
 if v:IsA(_D("TWVzaFBhcnQ=")) and v.GzertedVoAvlZz == Enum.GzertedVoAvlZz.Neon then
 topos(v.CFrame)
 break
 end
 end
 end
end)

phUThJKRWbVAQl blFFqvtkAoMJdI = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddSection(_D("8J+mimJsRkZxdnRrQW9NSmRJIElzbGFuZA=="))

srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gYmxGRnF2dGtBb01KZEkgSXNsYW5k"),Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().TweenToKitsune = value
 StopTween(getgenv().TweenToKitsune)
end)
spawn(SvQdlbfnjcMYYN()
 while wait() do
 if getgenv().TweenToKitsune then
 phUThJKRWbVAQl HGHYXKqPfDHmgm = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map
 phUThJKRWbVAQl KcMcBYJnxEMjHN = HGHYXKqPfDHmgm:FindFirstChild(_D("S2l0c3VuZUlzbGFuZA=="))
 if KcMcBYJnxEMjHN then
 phUThJKRWbVAQl PcuJNUmrNKzJPU = KcMcBYJnxEMjHN.ShrineActive.NeonShrinePart
 topos(PcuJNUmrNKzJPU.CFrame * CFrame.new(0, 0, 10))
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBTdW1tb24gU291bCBFbUJlcg=="),Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().SummonKitsume = value 
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.6) do 
 if getgenv().SummonKitsume and World3 then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl Ltlkftgsxbqovb = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl AGYduskIGuARRB = Ltlkftgsxbqovb:FindFirstChild(_D("TW9kdWxlcw==")) and Ltlkftgsxbqovb.Modules:FindFirstChild(_D("TmV0"))
 phUThJKRWbVAQl xHzUghFPVpcEOa = AGYduskIGuARRB and AGYduskIGuARRB:FindFirstChild(_D("UkYvS2l0c3VuZVN0YXR1ZVByYXk=")) 
 if xHzUghFPVpcEOa then
 xHzUghFPVpcEOa:InvokeServer()
 end
 end)
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBDb2xsZWN0IEF6dXJlIFdpc3A="),Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().CollectAzure = value
 StopTween(getgenv().CollectAzure)
end)
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 if getgenv().CollectAzure then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl lnaVJMinOYlmZO = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")):FindFirstChild(_D("QXR0YWNoZWRBenVyZUVtYmVy"))
 phUThJKRWbVAQl onCyPKmFSsirwW = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")):FindFirstChild(_D("RW1iZXJUZW1wbGF0ZQ=="))
 if lnaVJMinOYlmZO and onCyPKmFSsirwW then
 phUThJKRWbVAQl TbodWTnEaxuEJo = onCyPKmFSsirwW:FindFirstChild(_D("UGFydA=="))
 if TbodWTnEaxuEJo then
 phUThJKRWbVAQl FyWnFFZakWhtDs = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 phUThJKRWbVAQl GFenAgyQBtoxle = TbodWTnEaxuEJo.Position 
 if (FyWnFFZakWhtDs - GFenAgyQBtoxle).Magnitude > 10 then
 fastpos(TbodWTnEaxuEJo.CFrame)
 end
 end
 end
 end)
 end
 end
end)
Slider = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddSlider(_D("U2xpZGVy"), {
 AFotbYvafQTmWI = _D("U2V0IEF6dXJlIEVtYmVy"),
 Default = 20,
 Min = 0,
 Max = 25,
 Rounding = 5,
 Callback = SvQdlbfnjcMYYN(state)
 getgenv().SetToTradeAureEmber = state
 end
})
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBUcmFkZSBBenVyZSBFbWJlcg=="),
 Default = false,
 Callback = SvQdlbfnjcMYYN (state)
 getgenv().TradeAureEmber = state
 end
})
SvQdlbfnjcMYYN GetCountMaterials(MaterialName)
 phUThJKRWbVAQl UvdxrPeyzjFhVB = game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("Z2V0SW52ZW50b3J5"))
 for _, v in pairs(UvdxrPeyzjFhVB) do
 if v.Name == MaterialName then
 return v[_D("Q291bnQ=")]
 end
 end
 return 0
end
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(3) do
 if getgenv().TradeAureEmber then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl arZgxQcXbeSLih = GetCountMaterials(_D("QXp1cmUgRW1iZXI=")) 
 if arZgxQcXbeSLih >= getgenv().SetToTradeAureEmber then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).Modules.Net:FindFirstChild(_D("UkYvS2l0c3VuZVN0YXR1ZVByYXk=")):InvokeServer()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("S2l0c3VuZVN0YXR1ZVByYXk=")) 
 task.wait(5)
 end
 end)
 end
 end
end)
 
HYAqOrVauuPwRd.CldCUQlgELuTwE:AddButton({
 AFotbYvafQTmWI = _D("VHJhZGUgQXp1cmUgV2lzcA=="),
 Callback = SvQdlbfnjcMYYN() 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")):WaitForChild(_D("TW9kdWxlcw==")):WaitForChild(_D("TmV0")):WaitForChild(_D("UkYvS2l0c3VuZVN0YXR1ZVByYXk=")):InvokeServer()
 end
})

phUThJKRWbVAQl CldCUQlgELuTwE = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddSection(_D("8J+MikxldmlhdGhhbg=="))

HYAqOrVauuPwRd.CldCUQlgELuTwE:AddButton({
 AFotbYvafQTmWI = _D("QnV5IFNweQ=="),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("SW5mb0xldmlhdGhhbg=="), _D("Mg=="))
 end
}) 
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gRnJvemVuIERpbWVuc2lvbg=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoFrozenDimension = Value
end)
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoFrozenDimension and World3 then
 phUThJKRWbVAQl jovYYfOPSZIjJZ = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map:FindFirstChild(_D("RnJvemVuRGltZW5zaW9u"))
 if jovYYfOPSZIjJZ then
 phUThJKRWbVAQl GFenAgyQBtoxle = jovYYfOPSZIjJZ.Center.Position
 phUThJKRWbVAQl FyWnFFZakWhtDs = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position 
 if (FyWnFFZakWhtDs - Vector3.new(GFenAgyQBtoxle.X, 500, GFenAgyQBtoxle.Z)).Magnitude > 10 then
 topos(CFrame.new(GFenAgyQBtoxle.X, 500, GFenAgyQBtoxle.Z))
 end
 end
 end
 end)
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBBdHRhY2sgTGV2aWF0aGFu"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(state)
 getgenv().KillLevi = state
end)
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 if getgenv().KillLevi and World3 then
 pcall(SvQdlbfnjcMYYN()
 for _, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).SeaBeasts:GetChildren()) do
 if v.Name == _D("TGV2aWF0aGFu") and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 repeat
 task.wait(0.2) 
 if (game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position - v.gXZtrRuZYlsrdE.Position).Magnitude > 10 then
 topos(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(0, 500, 0))
 end 
 if not getgenv().SeaSkill then
 getgenv().SeaSkill = true
 end 
 if not IsHakiActive() then
 AutoHaki()
 end 
 AimBotSkillPosition = v.gXZtrRuZYlsrdE
 Skillaimbot = true 
 until not v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) or not getgenv().KillLevi 
 getgenv().SeaSkill = false
 Skillaimbot = false
 end
 end
 end)
 end
 end
end)

phUThJKRWbVAQl CldCUQlgELuTwE = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddSection(_D("8J+Mi1ByZWhpc3RvcmljIElzbGFuZA=="))

HYAqOrVauuPwRd.CldCUQlgELuTwE:AddButton({
 AFotbYvafQTmWI = _D("RGVzdHJveSBMYXZhIEluIFByZWhpc3RvcmljIElzbGFuZA=="),
 Callback = SvQdlbfnjcMYYN()
 for i,v in pairs(game.xkzLfqrlXOYczM:GetDescendants()) do
 if v.Name == _D("TGF2YQ==") then 
 v:Destroy()
 end
 end
 for i,v in pairs(game.zqGxghDwQpmuUJ:GetDescendants()) do
 if v.Name == _D("TGF2YQ==") then 
 v:Destroy()
 end
 end
 end
})
HYAqOrVauuPwRd.CldCUQlgELuTwE:AddButton({
 AFotbYvafQTmWI = _D("Q3JhZnRpbmcgVm9sY2FuaWMgTWFnbmV0"),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl eXBqBSRttvqOHH = {
 [1] = _D("Q3JhZnRJdGVt"),
 [2] = _D("Q3JhZnQ="),
 [3] = _D("Vm9sY2FuaWMgTWFnbmV0")
 }
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(eXBqBSRttvqOHH))
 end
})
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("TXlUb2dnbGU="), {AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgUHJlaGlzdG9yaWMgSXNsYW5k"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().TweenPrehistoric = Value
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl jZJAkzwAomdjZE
 while not jZJAkzwAomdjZE do
 jZJAkzwAomdjZE = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map:FindFirstChild(_D("UHJlaGlzdG9yaWNJc2xhbmQ="))
 wait()
 end
 while wait() do
 if getgenv().TweenPrehistoric and World3 then
 phUThJKRWbVAQl hpoNCfXNsyRIcT = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map:FindFirstChild(_D("UHJlaGlzdG9yaWNJc2xhbmQ="))
 if hpoNCfXNsyRIcT then
 phUThJKRWbVAQl HwelbfgxKBOpQp = hpoNCfXNsyRIcT:FindFirstChild(_D("Q29yZQ==")) and hpoNCfXNsyRIcT.Core:FindFirstChild(_D("UHJlaGlzdG9yaWNSZWxpYw=="))
 phUThJKRWbVAQl KtvYsKmFrQiTbq = HwelbfgxKBOpQp and HwelbfgxKBOpQp:FindFirstChild(_D("U2t1bGw="))
 if KtvYsKmFrQiTbq then
 topos(CFrame.new(KtvYsKmFrQiTbq.Position))
 getgenv().TweenPrehistoric = false
 end
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBFdmVudCBWb2xjYW5vIElzbGFuZCBEZWZlbnNl"),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(value)
 getgenv().AutoDefendVolcano = value
end)
phUThJKRWbVAQl SvQdlbfnjcMYYN pressKey(key)
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(true, key, false, game)
 wait(0.1)
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(false, key, false, game)
end
phUThJKRWbVAQl SvQdlbfnjcMYYN removeLava()
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl RjylbYKtksDmWX = game.xkzLfqrlXOYczM.Map.PrehistoricIsland.Core:FindFirstChild(_D("SW50ZXJpb3JMYXZh"))
 if RjylbYKtksDmWX and RjylbYKtksDmWX:IsA(_D("TW9kZWw=")) then
 RjylbYKtksDmWX:Destroy()
 end
 phUThJKRWbVAQl FvOLcrHzkFluXP = game.xkzLfqrlXOYczM.Map:FindFirstChild(_D("UHJlaGlzdG9yaWNJc2xhbmQ="))
 if FvOLcrHzkFluXP then
 for _, obj in pairs(FvOLcrHzkFluXP:GetDescendants()) do
 if obj:IsA(_D("UGFydA==")) and obj.Name:lower():find(_D("bGF2YQ==")) then
 obj:Destroy()
 end
 if obj:IsA(_D("TWVzaFBhcnQ=")) and obj.Name:lower():find(_D("bGF2YQ==")) then
 obj:Destroy()
 end
 end
 end
 end)
end
phUThJKRWbVAQl SvQdlbfnjcMYYN findVolcanoRock()
 phUThJKRWbVAQl IhcIdsEMpsXnGW = game.xkzLfqrlXOYczM.Map.PrehistoricIsland.Core:FindFirstChild(_D("Vm9sY2Fub1JvY2tz"))
 if not IhcIdsEMpsXnGW then return nil end
 for _, model in pairs(IhcIdsEMpsXnGW:GetChildren()) do
 if model:IsA(_D("TW9kZWw=")) then
 phUThJKRWbVAQl AmIlAYlImtOTGW = model:FindFirstChild(_D("dm9sY2Fub3JvY2s="))
 if AmIlAYlImtOTGW and AmIlAYlImtOTGW:IsA(_D("TWVzaFBhcnQ=")) then
 phUThJKRWbVAQl GUubjFBLdoymLc = AmIlAYlImtOTGW.Color
 if GUubjFBLdoymLc == Color3.fromRGB(185, 53, 56) or GUubjFBLdoymLc == Color3.fromRGB(185, 53, 57) then
 return AmIlAYlImtOTGW
 end
 end
 end
 end
 return nil
end
phUThJKRWbVAQl SvQdlbfnjcMYYN equipAndUseWeapon(weaponType)
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl MfDHpsBmcoureQ = XPKQttDgjyuQHM:FindFirstChild(_D("QmFja3BhY2s="))
 if not MfDHpsBmcoureQ then return end
 for _, rhMaedwfiWfIfa in pairs(MfDHpsBmcoureQ:GetChildren()) do
 if rhMaedwfiWfIfa:IsA(_D("VG9vbA==")) and rhMaedwfiWfIfa.ToolTip == weaponType then
 rhMaedwfiWfIfa.Parent = XPKQttDgjyuQHM.aBYiproClLDecw
 for _, key in ipairs({_D("Wg=="), _D("WA=="), _D("Qw=="), _D("Vg=="), _D("Rg==")}) do
 wait(0.1)
 pcall(SvQdlbfnjcMYYN()
 pressKey(key)
 end)
 end
 rhMaedwfiWfIfa.Parent = MfDHpsBmcoureQ
 break
 end
 end
end
spawn(SvQdlbfnjcMYYN()
 while wait(0.1) do
 if getgenv().AutoDefendVolcano then
 if typeof(AutoHaki) == _D("U3ZRZGxiZm5qY01ZWU4=") then AutoHaki() end
 removeLava()
 phUThJKRWbVAQl AmIlAYlImtOTGW = findVolcanoRock()
 if AmIlAYlImtOTGW then
 phUThJKRWbVAQl LVuduhuXvHxWVT = CFrame.new(AmIlAYlImtOTGW.Position)
 if typeof(topos) == _D("U3ZRZGxiZm5qY01ZWU4=") then topos(LVuduhuXvHxWVT) end
 if AmIlAYlImtOTGW.Color == Color3.fromRGB(185, 53, 56) or AmIlAYlImtOTGW.Color == Color3.fromRGB(185, 53, 57) then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw
 phUThJKRWbVAQl OdSSDwxKzrOmwX = XPKQttDgjyuQHM and XPKQttDgjyuQHM:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if OdSSDwxKzrOmwX then
 phUThJKRWbVAQl AIZewxPvNzJKJX = (OdSSDwxKzrOmwX.Position - AmIlAYlImtOTGW.Position).Magnitude
 if AIZewxPvNzJKJX <= 1 then
 if getgenv().UseMelee then equipAndUseWeapon(_D("TWVsZWU=")) end
 if getgenv().UseSword then equipAndUseWeapon(_D("U3dvcmQ=")) end
 if getgenv().UseGun then equipAndUseWeapon(_D("R3Vu")) end
 end
 end
 getgenv().TweenToPrehistoric = false
 else
 AmIlAYlImtOTGW = findVolcanoRock()
 end
 else
 getgenv().TweenToPrehistoric = true
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBLaWxsIEF1cmEgR29sZW1z"),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(v413)
 getgenv().KillAura = v413
end)
spawn(SvQdlbfnjcMYYN()
 while wait(0.1) do
 if getgenv().KillAura then
 pcall(SvQdlbfnjcMYYN()
 sethiddenproperty(game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 for _, ksJlFEgkkErXbu in pairs(game.xkzLfqrlXOYczM.Enemies:GetChildren()) do
 phUThJKRWbVAQl lnhLIZpBaYGcBO = ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw="))
 phUThJKRWbVAQl OdSSDwxKzrOmwX = ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if lnhLIZpBaYGcBO and OdSSDwxKzrOmwX and lnhLIZpBaYGcBO.Health > 0 then
 lnhLIZpBaYGcBO.Health = 0
 OdSSDwxKzrOmwX.CanCollide = false
 end
 end
 end)
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBDb2xsZWN0IEJvbmU="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().CollectBone = Value
end)
spawn(SvQdlbfnjcMYYN()
 while wait(0.1) do
 if getgenv().AutoCollectBone and World3 then
 phUThJKRWbVAQl rloAqPHjmujVfA = {}
 for _, obj in ipairs(wExlmmqTxYIeST:GetDescendants()) do
 if obj:IsA(_D("QmFzZVBhcnQ=")) and obj.Name == _D("RGlub0JvbmU=") then
 table.insert(rloAqPHjmujVfA, obj)
 end
 end
 for _, bone in ipairs(rloAqPHjmujVfA) do
 if typeof(topos) == _D("U3ZRZGxiZm5qY01ZWU4=") then
 topos(CFrame.new(bone.Position))
 repeat
 wait(0.2)
 phUThJKRWbVAQl FyWnFFZakWhtDs = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 if not FyWnFFZakWhtDs then break end
 phUThJKRWbVAQl BDgZFaRBfrdKte = bone.Position
 phUThJKRWbVAQl AIZewxPvNzJKJX = (FyWnFFZakWhtDs - BDgZFaRBfrdKte).Magnitude
 until AIZewxPvNzJKJX <= 1
 end
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBDb2xsZWN0IEVnZw=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().CollectEgg = Value
end)
spawn(SvQdlbfnjcMYYN()
 while wait(0.1) do
 if getgenv().CollectEgg and World3 and wExlmmqTxYIeST:FindFirstChild(_D("TWFw")) and wExlmmqTxYIeST.Map:FindFirstChild(_D("UHJlaGlzdG9yaWNJc2xhbmQ=")) and wExlmmqTxYIeST.Map.PrehistoricIsland.Core:FindFirstChild(_D("U3Bhd25lZERyYWdvbkVnZ3M=")) then
 phUThJKRWbVAQl OXquclnrLDSbsE = wExlmmqTxYIeST.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()
 if #OXquclnrLDSbsE > 0 then
 phUThJKRWbVAQl TDpshfAhUZUXKq = OXquclnrLDSbsE[math.random(1, #OXquclnrLDSbsE)]
 if TDpshfAhUZUXKq:IsA(_D("TW9kZWw=")) and TDpshfAhUZUXKq.PrimaryPart and typeof(topos) == _D("U3ZRZGxiZm5qY01ZWU4=") then
 topos(TDpshfAhUZUXKq.PrimaryPart.CFrame)
 repeat
 wait(0.2)
 phUThJKRWbVAQl FyWnFFZakWhtDs = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 if not FyWnFFZakWhtDs then break end
 phUThJKRWbVAQl SbZGyzJNYYHHyl = TDpshfAhUZUXKq.PrimaryPart.Position
 phUThJKRWbVAQl AIZewxPvNzJKJX = (FyWnFFZakWhtDs - SbZGyzJNYYHHyl).Magnitude
 until AIZewxPvNzJKJX <= 1 
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(true, _D("RQ=="), false, game)
 wait(1)
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(false, _D("RQ=="), false, game)
 end
 end
 end
 end
end)
HYAqOrVauuPwRd.CldCUQlgELuTwE:AddParagraph({
 AFotbYvafQTmWI = _D("U2V0dGluZyBTa2lsbCBWb2xjYW5vIElzbGFuZA=="),
 Content = string.rep(_D("LQ=="), 21)
})
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBVc2UgU2tpbGwgTWVsZWU="),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(v402)
 getgenv().UseMelee = v402
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBVc2UgU2tpbGwgU3dvcmQ="),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(v403)
 getgenv().UseSword = v403
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.CldCUQlgELuTwE:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {
 AFotbYvafQTmWI = _D("QXV0byBVc2UgU2tpbGwgR3Vu"),
 Default = false
})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(v404)
 getgenv().UseGun = v404
end)

----XCQkKwxeUGHigE----
HYAqOrVauuPwRd.Other:AddParagraph({
 AFotbYvafQTmWI = _D("UXVlc3QgRHJhZ29u"),
 Content = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
})
HYAqOrVauuPwRd.Other:AddButton({
 AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gRHJhZ29uIERvam8="),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("cmVxdWVzdEVudHJhbmNl"), Vector3.new(5661.5322265625, 1013.0907592773438, - 334.9649963378906))
 topos(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
 end
})
srOTmqcypZcejd = HYAqOrVauuPwRd.Other:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBRdWVzdCBEb2pvIFRyYWluZXI="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().DojoClaimQuest = Value
 StopTween(getgenv().DojoClaimQuest)
end)
phUThJKRWbVAQl qYorTojGACIiHr = CFrame.new(5855.19629, 1208.32178, 872.713501, 0.606994748, -1.81058823e-09, -0.794705868, 5.72712722e-09, 1, 2.09605577e-09, 0.794705868, -5.82367621e-09, 0.606994748)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.2) do
 if getgenv().DojoClaimQuest and World3 then
 pcall(SvQdlbfnjcMYYN()
 if BypassTP then
 BTP(qYorTojGACIiHr)
 else
 topos(qYorTojGACIiHr)
 end
 phUThJKRWbVAQl AIZewxPvNzJKJX = (qYorTojGACIiHr.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude
 if AIZewxPvNzJKJX <= 5 then
 phUThJKRWbVAQl kajyDBKHnCiacF = {
 [_D("TlBD")] = _D("RG9qbyBUcmFpbmVy"),
 [_D("Q29tbWFuZA==")] = _D("Q2xhaW1RdWVzdA==")
 }
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).Modules.Net[_D("UkYvSW50ZXJhY3REcmFnb25RdWVzdA==")]:InvokeServer(kajyDBKHnCiacF)
 task.wait(1)
 phUThJKRWbVAQl VMzAcyYWjFStyH = {
 [_D("TlBD")] = _D("RG9qbyBUcmFpbmVy"),
 [_D("Q29tbWFuZA==")] = _D("UmVxdWVzdFF1ZXN0")
 }
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).Modules.Net[_D("UkYvSW50ZXJhY3REcmFnb25RdWVzdA==")]:InvokeServer(VMzAcyYWjFStyH)
 end
 end)
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Other:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBVcGdyYWRlIERyYWdvbiBUYWxvbg=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().DragonTalonUpgrade = Value
 StopTween(getgenv().DragonTalonUpgrade)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.2) do
 if getgenv().DragonTalonUpgrade and World3 then
 phUThJKRWbVAQl ZkrsWLnUsLfBWO = CFrame.new(5661.89014, 1211.31909, 864.836731, 0.811413169, -1.36805838e-08, -0.584473014, 4.75227395e-08, 1, 4.25682458e-08, 0.584473014, -6.23161966e-08, 0.811413169)
 phUThJKRWbVAQl AIZewxPvNzJKJX = (ZkrsWLnUsLfBWO.Position - game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude
 if AIZewxPvNzJKJX > 5 then
 topos(ZkrsWLnUsLfBWO)
 else
 phUThJKRWbVAQl yzhPkZPMWczHvC = {
 [_D("TlBD")] = _D("VXpvdGg="),
 [_D("Q29tbWFuZA==")] = _D("VXBncmFkZQ==")
 } 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).Modules.Net[_D("UkYvSW50ZXJhY3REcmFnb25RdWVzdA==")]:InvokeServer(yzhPkZPMWczHvC)
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Other:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBBdHRhY2sgSHlkcmEgTW9iIEFuZCBDb2xsZWN0IEVtYmVy"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().BlazeEmberFarm = Value
 StopTween(getgenv().BlazeEmberFarm)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.2) do
 if getgenv().BlazeEmberFarm and World3 then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl XTyoHBzkjsvwrL = game:GetService('xkzLfqrlXOYczM').Enemies
 phUThJKRWbVAQl HyUylSSXJuBRZM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 phUThJKRWbVAQl MMCqSTwvXqpKdP = XTyoHBzkjsvwrL:FindFirstChild('Ghost')
 phUThJKRWbVAQl jrHieTZYmsRAOw = XTyoHBzkjsvwrL:FindFirstChild('Hydra Enforcer')
 phUThJKRWbVAQl qqlqaXLKbNXOKm = XTyoHBzkjsvwrL:FindFirstChild('Venomous Assailant')
 if MMCqSTwvXqpKdP or jrHieTZYmsRAOw or qqlqaXLKbNXOKm then
 for _, v in pairs(XTyoHBzkjsvwrL:GetChildren()) do
 if v.Name == 'Hydra Enforcer' or v.Name == 'Venomous Assailant' then
 if v:FindFirstChild('KrlGhKjHesTsTl') and v:FindFirstChild('gXZtrRuZYlsrdE') and v.KrlGhKjHesTsTl.Health > 0 then
 repeat 
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Heartbeat:wait()
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 getgenv().StartMagnet = true
 if v.gXZtrRuZYlsrdE.CanCollide then
 v.gXZtrRuZYlsrdE.CanCollide = false
 end
 if v.gXZtrRuZYlsrdE.Size ~= Vector3.new(60, 60, 60) then
 v.gXZtrRuZYlsrdE.Size = Vector3.new(60, 60, 60)
 end
 if v.gXZtrRuZYlsrdE.Transparency ~= 1 then
 v.gXZtrRuZYlsrdE.Transparency = 1
 end
 MonFarm = v.Name
 PosMon = v.gXZtrRuZYlsrdE.CFrame
 until not getgenv().BlazeEmberFarm or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 end
 else
 topos(CFrame.new(5394.36475, 1082.71057, 561.993958, -0.62453711, 3.17826405e-08, -0.780995131, 6.77530991e-08, 1, -1.34849545e-08, 0.780995131, -6.13366922e-08, -0.62453711))
 end
 end)
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Other:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBDb2xsZWN0IEZpcmVGbG93ZXI="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoCollectFireFlowers = Value
end)
spawn(SvQdlbfnjcMYYN()
 while wait() do
 if getgenv().AutoCollectFireFlowers then
 phUThJKRWbVAQl VsLJPJnoLWjolE = wExlmmqTxYIeST:FindFirstChild(_D("RmlyZUZsb3dlcnM="))
 if VsLJPJnoLWjolE then
 for v903, v904 in pairs(VsLJPJnoLWjolE:GetChildren()) do
 if (v904:IsA(_D("TW9kZWw=")) and v904.PrimaryPart) then
 phUThJKRWbVAQl yyaWacKSftsPMI = v904.PrimaryPart.Position;
 phUThJKRWbVAQl RfTofbugeJWqRN = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 phUThJKRWbVAQl VjTjzDscTSXMUL = (yyaWacKSftsPMI - RfTofbugeJWqRN).Magnitude
 if (VjTjzDscTSXMUL <= 1) then
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(true, _D("RQ=="), false, game)
 wait(1.5)
 game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg==")):SendKeyEvent(false, _D("RQ=="), false, game)
 else
 topos(CFrame.new(yyaWacKSftsPMI))
 end
 end
 end
 end
 end
 end
end)

-----Race-----
phUThJKRWbVAQl XCQkKwxeUGHigE = HYAqOrVauuPwRd.Race:AddSection(_D("UmFjZSBYQ1FrS3d4ZVVHSGlnRQ=="))

phUThJKRWbVAQl dnDiHgYPQNdTCp = game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A="))
srOTmqcypZcejd = HYAqOrVauuPwRd.Race:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gVGhlIFhDUWtLd3hlVUdIaWdFIENsYW4gVHJpYWwgRG9vcg=="), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().TrialTeleportDraco = Value
end)
phUThJKRWbVAQl SvQdlbfnjcMYYN safeTeleport(xfZuKLmfyhKExb)
 if topos and typeof(xfZuKLmfyhKExb) == _D("Q0ZyYW1l") then
 topos(xfZuKLmfyhKExb)
 end
end
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl LSHSsSvvhpLQrH = wExlmmqTxYIeST:WaitForChild(_D("TWFw")):FindFirstChild(_D("UHJlaGlzdG9yaWNJc2xhbmQ="))
 if LSHSsSvvhpLQrH then
 LSHSsSvvhpLQrH = LSHSsSvvhpLQrH:FindFirstChild(_D("VHJpYWxUZWxlcG9ydA=="))
 end
 while task.wait(0.5) do
 if getgenv().TrialTeleportDraco and LSHSsSvvhpLQrH and LSHSsSvvhpLQrH:IsA(_D("UGFydA==")) then
 safeTeleport(CFrame.new(LSHSsSvvhpLQrH.Position))
 end
 end
end)
phUThJKRWbVAQl NDlrVrWNIYSGiH = HYAqOrVauuPwRd.Race:AddSection(_D("UmFjZSBORGxyVnJXTklZU0dpSA=="))

srOTmqcypZcejd = HYAqOrVauuPwRd.Race:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBVcGdyYWRlIFJhY2UgVjI="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().UpgradeRaceV2 = Value
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(0.2) do
 if not getgenv().UpgradeRaceV2 or not World2 then
 continue
 end 
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl UfXaCXGPsKitMs = XPKQttDgjyuQHM.aBYiproClLDecw and XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 phUThJKRWbVAQl MfDHpsBmcoureQ = XPKQttDgjyuQHM.Backpack
 phUThJKRWbVAQl GhdlspjKLjdyVJ = XPKQttDgjyuQHM.Data.Race 
 if GhdlspjKLjdyVJ:FindFirstChild(_D("RXZvbHZlZA==")) then
 continue
 end
 phUThJKRWbVAQl CNfTlFhrAdJRen = game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWxjaGVtaXN0"),_D("MQ=="))
 if CNfTlFhrAdJRen == 0 then
 phUThJKRWbVAQl GFenAgyQBtoxle = CFrame.new(-2779.83521, 72.9661407, -3574.02002)
 if UfXaCXGPsKitMs and (GFenAgyQBtoxle.Position - UfXaCXGPsKitMs.Position).Magnitude > 4 then
 topos(GFenAgyQBtoxle)
 else
 task.wait(1.1)
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWxjaGVtaXN0"),_D("Mg=="))
 end
 elseif CNfTlFhrAdJRen == 1 then
 if not (MfDHpsBmcoureQ:FindFirstChild(_D("Rmxvd2VyIDE=")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Rmxvd2VyIDE="))) then
 topos(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Flower1.CFrame)
 elseif not (MfDHpsBmcoureQ:FindFirstChild(_D("Rmxvd2VyIDI=")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Rmxvd2VyIDI="))) then
 topos(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Flower2.CFrame)
 elseif not (MfDHpsBmcoureQ:FindFirstChild(_D("Rmxvd2VyIDM=")) or XPKQttDgjyuQHM.aBYiproClLDecw:FindFirstChild(_D("Rmxvd2VyIDM="))) then
 phUThJKRWbVAQl dTceKCaNGgFVbi = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:FindFirstChild(_D("Wm9tYmll"))
 if dTceKCaNGgFVbi then
 for _, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetChildren()) do
 if v.Name == _D("Wm9tYmll") and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) then
 repeat
 task.wait()
 EquipWeapon(getgenv().SelectWeapon)
 AutoHaki()
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.gXZtrRuZYlsrdE.Size = Vector3.new(50, 50, 50)
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):CaptureController()
 game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M=")):Button1Down(Vector2.new(1280, 672))
 until MfDHpsBmcoureQ:FindFirstChild(_D("Rmxvd2VyIDM=")) or v.KrlGhKjHesTsTl.Health <= 0 or not v.Parent or not getgenv().UpgradeRaceV2
 end
 end
 else
 topos(CFrame.new(-5685.923, 48.48, -853.237))
 end
 end
 elseif CNfTlFhrAdJRen == 2 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWxjaGVtaXN0"),_D("Mw=="))
 end
 end
 end)
end)

phUThJKRWbVAQl iwCYOZwFbacJnm = HYAqOrVauuPwRd.Race:AddSection(_D("UmFjZSBpd0NZT1p3RmJhY0pubQ=="))

srOTmqcypZcejd = HYAqOrVauuPwRd.Race:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("Tm8gRnJvZw=="), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().NoFrog = Value
end)
spawn(SvQdlbfnjcMYYN()
 while true do
 if getgenv().NoFrog then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl fPHqGynQEIhKHR = game:GetService(_D("TGlnaHRpbmc="))
 if fPHqGynQEIhKHR:FindFirstChild(_D("TGlnaHRpbmdMYXllcnM=")) then
 fPHqGynQEIhKHR.LightingLayers:Destroy()
 end
 if fPHqGynQEIhKHR:FindFirstChild(_D("U2t5")) then
 fPHqGynQEIhKHR.Sky:Destroy()
 end
 end)
 end
 wait(1)
 while not getgenv().NoFrog do
 wait(1)
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Race:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgQW5jaWVudCBDbG9jaw=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().TeleportAcientClock = Value
 StopTween(getgenv().TeleportAcientClock)
end)
spawn(SvQdlbfnjcMYYN()
 while true do
 wait(0.5)
 if getgenv().TeleportAcientClock then
 topos(CFrame.new(29549, 15069, -88))
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Race:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBCdXkgR2Vhcg=="), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoBuyGear = Value 
end)
spawn(SvQdlbfnjcMYYN()
 pcall(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 if getgenv().AutoBuyGear and World3 then
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {_D("VXBncmFkZVJhY2U="), _D("QnV5")}
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")):WaitForChild(_D("b1dvYVpLdUhiRENpUkI=")):WaitForChild(_D("VklkamtpVEd1SnRxQWU=")):InvokeServer(unpack(pnvTUSLxDuQwJo))
 else
 repeat task.wait(1) until getgenv().AutoBuyGear
 end
 end
 end)
end)
phUThJKRWbVAQl srOTmqcypZcejd = HYAqOrVauuPwRd.Race:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBGaW5pc2ggVHJhaW4gUXVlc3Q="), Default = false})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().Race_1 = Value
 getgenv().QuestTrain_2 = Value
 if not Value then
 StopTween(getgenv().QuestTrain_2)
 end
end)
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().Race_1 and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw then
 phUThJKRWbVAQl yOXFMjqnvTyvyo = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw
 if yOXFMjqnvTyvyo:FindFirstChild(_D("UmFjZVRyYW5zZm9ybWVk")) and yOXFMjqnvTyvyo.RaceTransformed.Value then
 getgenv().QuestTrain_2 = false
 topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
 end
 end
 end)
 end
end)
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do 
 pcall(SvQdlbfnjcMYYN()
 if getgenv().QuestTrain_2 and World3 and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw then
 phUThJKRWbVAQl KTWBQhwktSkgEc = wExlmmqTxYIeST:FindFirstChild(_D("RW5lbWllcw=="))
 if KTWBQhwktSkgEc then
 for _, v in pairs(KTWBQhwktSkgEc:GetChildren()) do
 if v:IsA(_D("TW9kZWw=")) and (v.Name == _D("UmVib3JuIFNrZWxldG9u") or v.Name == _D("TGl2aW5nIFpvbWJpZQ==") or v.Name == _D("RGVtb25pYyBTb3Vs") or v.Name == _D("UG9zZXNzZWQgTXVtbXk=")) then
 if v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and v.KrlGhKjHesTsTl.Health > 0 then
 repeat
 task.wait(0.1)
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 v.gXZtrRuZYlsrdE.CanCollide = false
 v.KrlGhKjHesTsTl.WalkSpeed = 0
 v.Head.CanCollide = false
 topos(v.gXZtrRuZYlsrdE.CFrame * Pos)
 getgenv().BonesBring = true
 until not getgenv().QuestTrain_2 or v.Parent == nil or v.KrlGhKjHesTsTl.Health <= 0
 end
 end
 end
 end
 if BypassTP then
 phUThJKRWbVAQl FyWnFFZakWhtDs = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position
 phUThJKRWbVAQl AIZewxPvNzJKJX = (FyWnFFZakWhtDs - BonePos.Position).Magnitude
 if AIZewxPvNzJKJX > 1500 then
 BTP(BonePos)
 else
 topos(BonePos)
 end
 else
 topos(BonePos)
 end
 UnEquipWeapon(getgenv().SelectWeapon)
 getgenv().BonesBring = false
 topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
 phUThJKRWbVAQl UVYiTqQwsVuFwR = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 for _, v in pairs(UVYiTqQwsVuFwR:GetChildren()) do 
 if v:IsA(_D("TW9kZWw=")) and (v.Name == _D("UmVib3JuIFNrZWxldG9u") or v.Name == _D("TGl2aW5nIFpvbWJpZQ==") or v.Name == _D("RGVtb25pYyBTb3Vs") or v.Name == _D("UG9zZXNzZWQgTXVtbXk=")) then
 if v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 topos(v.gXZtrRuZYlsrdE.CFrame * CFrame.new(2, 20, 2))
 end
 end
 end
 end
 end)
 end
end)
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().Race_1 and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw then
 phUThJKRWbVAQl yOXFMjqnvTyvyo = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw
 if yOXFMjqnvTyvyo:FindFirstChild(_D("UmFjZVRyYW5zZm9ybWVk")) and not yOXFMjqnvTyvyo.RaceTransformed.Value then
 getgenv().QuestTrain_2 = true
 end
 end
 end)
 end
end)
task.spawn(SvQdlbfnjcMYYN()
 while task.wait(0.5) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().Race_1 and game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw then
 phUThJKRWbVAQl yOXFMjqnvTyvyo = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw
 if yOXFMjqnvTyvyo:FindFirstChild(_D("UmFjZUVuZXJneQ==")) and yOXFMjqnvTyvyo.RaceEnergy.Value >= 1 and not yOXFMjqnvTyvyo.RaceTransformed.Value then
 phUThJKRWbVAQl zhsHvjqynAllcW = game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg=="))
 zhsHvjqynAllcW:SendKeyEvent(true, _D("WQ=="), false, game)
 task.wait(0.1)
 zhsHvjqynAllcW:SendKeyEvent(false, _D("WQ=="), false, game)
 end
 end
 end)
 end
end)
Pullever = HYAqOrVauuPwRd.Race:AddParagraph({
 AFotbYvafQTmWI = _D("UHVsbCBMZXZlciBEb25l"),
 Content = _D("U3RhdHVzOiA=")
})
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl cFGFlNLvuGdaKY = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 while task.wait(1) do
 phUThJKRWbVAQl RXzgrgTZNDtJxy, dNdVwXmfAugeai = pcall(SvQdlbfnjcMYYN()
 return game.zqGxghDwQpmuUJ.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("dGVtcGxlZG9vcmNoZWNr"))
 end)
 if RXzgrgTZNDtJxy then
 phUThJKRWbVAQl vwEVFCfzALlPzm = dNdVwXmfAugeai and _D("4pyF") or _D("4p2M")
 if vwEVFCfzALlPzm ~= cFGFlNLvuGdaKY then
 Pullever:SetDesc(_D("U3RhdHVzOiA=") .. vwEVFCfzALlPzm)
 cFGFlNLvuGdaKY = vwEVFCfzALlPzm
 end
 end
 end
end)


HYAqOrVauuPwRd.Race:AddButton({
 AFotbYvafQTmWI = _D("U1pIeUpjeWpXUERUaEsgVG8gVHJpYWwgRG9vcg=="),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 if not XPKQttDgjyuQHM or not XPKQttDgjyuQHM:FindFirstChild(_D("RGF0YQ==")) or not XPKQttDgjyuQHM.Data:FindFirstChild(_D("UmFjZQ==")) then
 return
 end
 phUThJKRWbVAQl CXAtLyfJMsyXOE = XPKQttDgjyuQHM.Data.Race.Value
 phUThJKRWbVAQl NxDoRCzCwXHNoK = {
 Human = CFrame.new(29221.822, 14890.975, -205.991),
 Skypiea = CFrame.new(28960.158, 14919.624, 235.039),
 Fishman = CFrame.new(28231.175, 14890.975, -211.641),
 Cyborg = CFrame.new(28502.681, 14895.975, -423.727),
 Ghoul = CFrame.new(28674.244, 14890.676, 445.431),
 Mink = CFrame.new(29012.341, 14890.975, -380.149)
 }
 if NxDoRCzCwXHNoK[CXAtLyfJMsyXOE] and typeof(topos) == _D("U3ZRZGxiZm5qY01ZWU4=") then
 topos(NxDoRCzCwXHNoK[CXAtLyfJMsyXOE])
 end
 end
})
srOTmqcypZcejd = HYAqOrVauuPwRd.Race:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBUcmlhbCBSYWNl"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoTrialRace = Value
 StopTween(getgenv().AutoTrialRace)
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 phUThJKRWbVAQl CXAtLyfJMsyXOE = XPKQttDgjyuQHM.Data.Race
 phUThJKRWbVAQl QTFXoUeYYfxRyM = game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg=="))
 while getgenv().AutoTrialRace do
 wait(0.5)
 if CXAtLyfJMsyXOE.Value == _D("SHVtYW4=") then
 for _, ksJlFEgkkErXbu in pairs(game.xkzLfqrlXOYczM.Enemies:GetChildren()) do
 if ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health > 0 then
 pcall(SvQdlbfnjcMYYN()
 repeat
 wait()
 ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health = 0
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CanCollide = false
 sethiddenproperty(XPKQttDgjyuQHM, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 until not getgenv().AutoTrialRace or not ksJlFEgkkErXbu.Parent or ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health <= 0
 end)
 end
 end
 elseif CXAtLyfJMsyXOE.Value == _D("U2t5cGllYQ==") then
 phUThJKRWbVAQl igqQoWdaNGFXGa = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Map.SkyTrial.Model
 if igqQoWdaNGFXGa then
 for _, obj in pairs(igqQoWdaNGFXGa:GetDescendants()) do
 if obj.Name == _D("c25vd2lzbGFuZF9DeWxpbmRlci4wODE=") then
 BTPZ(obj.CFrame)
 break
 end
 end
 end
 elseif CXAtLyfJMsyXOE.Value == _D("RmlzaG1hbg==") then
 phUThJKRWbVAQl YeejzTYxdynVHQ = game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).SeaBeasts:FindFirstChild(_D("U2VhQmVhc3Qx"))
 if YeejzTYxdynVHQ then
 phUThJKRWbVAQl GQkSIbCAdorHvm = YeejzTYxdynVHQ:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if GQkSIbCAdorHvm then
 topos(GQkSIbCAdorHvm.CFrame)
 phUThJKRWbVAQl MfDHpsBmcoureQ = XPKQttDgjyuQHM.Backpack
 phUThJKRWbVAQl SvQdlbfnjcMYYN equipTool(toolType)
 for _, rhMaedwfiWfIfa in pairs(MfDHpsBmcoureQ:GetChildren()) do
 if rhMaedwfiWfIfa:IsA(_D("VG9vbA==")) and rhMaedwfiWfIfa.ToolTip == toolType then
 XPKQttDgjyuQHM.aBYiproClLDecw.KrlGhKjHesTsTl:EquipTool(rhMaedwfiWfIfa)
 wait(0.2)
 QTFXoUeYYfxRyM:SendKeyEvent(true, 122, false, game)
 QTFXoUeYYfxRyM:SendKeyEvent(false, 122, false, game)
 wait(0.2)
 QTFXoUeYYfxRyM:SendKeyEvent(true, 120, false, game)
 QTFXoUeYYfxRyM:SendKeyEvent(false, 120, false, game)
 wait(0.2)
 QTFXoUeYYfxRyM:SendKeyEvent(true, 99, false, game)
 QTFXoUeYYfxRyM:SendKeyEvent(false, 99, false, game)
 end
 end
 end
 equipTool(_D("TWVsZWU="))
 equipTool(_D("QmxveCB3YnZrbWVWR0hUbURpcQ=="))
 equipTool(_D("U3dvcmQ="))
 equipTool(_D("R3Vu"))
 end
 end
 elseif CXAtLyfJMsyXOE.Value == _D("Q3lib3Jn") then
 topos(CFrame.new(28654, 14898.7832, -30))
 elseif CXAtLyfJMsyXOE.Value == _D("R2hvdWw=") then
 for _, ksJlFEgkkErXbu in pairs(game.xkzLfqrlXOYczM.Enemies:GetChildren()) do
 if ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) and ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health > 0 then
 pcall(SvQdlbfnjcMYYN()
 repeat
 wait()
 ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health = 0
 ksJlFEgkkErXbu.gXZtrRuZYlsrdE.CanCollide = false
 sethiddenproperty(XPKQttDgjyuQHM, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 until not getgenv().AutoTrialRace or not ksJlFEgkkErXbu.Parent or ksJlFEgkkErXbu.KrlGhKjHesTsTl.Health <= 0
 end)
 end
 end
 elseif CXAtLyfJMsyXOE.Value == _D("TWluaw==") then
 for _, obj in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")):GetDescendants()) do
 if obj.Name == _D("U3RhcnRQb2ludA==") then
 topos(obj.CFrame * CFrame.new(0, 10, 0))
 break
 end
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Race:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBLaWxsIFJxVUZmdFF2ZmFFZUpSIEFmdGVyIFRyaWFsIGl3Q1lPWndGYmFjSm5t"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoKillPlayerAfterTrial = Value
 StopTween(getgenv().AutoKillPlayerAfterTrial)
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.2) do
 if getgenv().AutoKillPlayerAfterTrial and World3 then
 pcall(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl XPKQttDgjyuQHM = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
 phUThJKRWbVAQl yOXFMjqnvTyvyo = XPKQttDgjyuQHM.aBYiproClLDecw
 if not yOXFMjqnvTyvyo or not yOXFMjqnvTyvyo:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then return end 
 for _, v in ipairs(game.xkzLfqrlXOYczM.Characters:GetChildren()) do
 if v.Name ~= XPKQttDgjyuQHM.Name and v:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and v:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl lnhLIZpBaYGcBO = v.KrlGhKjHesTsTl
 phUThJKRWbVAQl OdSSDwxKzrOmwX = v.gXZtrRuZYlsrdE
 if lnhLIZpBaYGcBO.Health > 0 and (yOXFMjqnvTyvyo.gXZtrRuZYlsrdE.Position - OdSSDwxKzrOmwX.Position).Magnitude <= 230 then
 task.spawn(SvQdlbfnjcMYYN()
 AutoHaki()
 EquipWeapon(getgenv().SelectWeapon)
 topos(OdSSDwxKzrOmwX.CFrame * CFrame.new(1, 1, 2))
 OdSSDwxKzrOmwX.Size = Vector3.new(60, 60, 60)
 OdSSDwxKzrOmwX.CanCollide = false
 if v:FindFirstChild(_D("SGVhZA==")) then
 v.Head.CanCollide = false
 end
 lnhLIZpBaYGcBO.WalkSpeed = 0
 sethiddenproperty(XPKQttDgjyuQHM, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 while getgenv().AutoKillPlayerAfterTrial and lnhLIZpBaYGcBO.Health > 0 and v.Parent and OdSSDwxKzrOmwX and lnhLIZpBaYGcBO do
 task.wait(0.1)
 end
 end)
 end
 end
 end
 end)
 end
 end
end)

 sex = {
 _D("V2lsZERhcmVz"),
 _D("Qm9zc0J1aWxk"),
 _D("R2V0UHJhbmtlZA=="),
 _D("U3ViMk9mZmljaWFsTm9vYmll"),
 _D("U3ViMkRhaWdyb2Nr"),
 _D("U3ViMk5vb2JNYXN0ZXIxMjM="),
 _D("Qmx1eHh5"),
 _D("SkNXSw=="),
 _D("RW55dV9pc19Qcm8="),
 _D("U3ViMkZlcjk5OQ=="),
 _D("a2l0dGdhbWluZw=="),
 _D("VGhlR3JlYXRBY2U="),
 _D("U3RyYXdIYXRNYWluZQ=="),
 _D("VGFudGFpR2FtaW5n"),
 _D("QXhpb3Jl"),
 _D("U1VCMkdBTUVSUk9CT1RfRVhQMQ=="),
 _D("TWFnaWNCdXM="),
 _D("U3RhcmNvZGVIRU8="),
 _D("U3ViMkNhcHRhaW5NYXVp"),
 _D("RklHSFQ0RlJVSVQ="),
 _D("RUFSTl9GUlVJVFM="),
}
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("UmVkZWVtIENvZGU="),
 Callback = SvQdlbfnjcMYYN()
 SvQdlbfnjcMYYN RedeemCode(Value)
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.Redeem:InvokeServer(Value)
 end
 phUThJKRWbVAQl UpLQOJtMtPhNgQ = 0.5
 for i, v in pairs(sex) do
 spawn(SvQdlbfnjcMYYN()
 RedeemCode(v)
 wait(UpLQOJtMtPhNgQ)
 end)
 end
 end
})

HYAqOrVauuPwRd.Shop:AddParagraph({
 AFotbYvafQTmWI = _D("RmlnaHRpbmcgU2hvcA=="),
 Content = string.rep(_D("LQ=="), 21)
})
phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
phUThJKRWbVAQl oWoaZKuHbDCiRB = zqGxghDwQpmuUJ:WaitForChild(_D("b1dvYVpLdUhiRENpUkI="))
phUThJKRWbVAQl OglAPLWNJKMEXR = oWoaZKuHbDCiRB:WaitForChild(_D("VklkamtpVEd1SnRxQWU="))
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("QmxhY2sgTGVn"),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl RXzgrgTZNDtJxy, dNdVwXmfAugeai = pcall(SvQdlbfnjcMYYN()
 return OglAPLWNJKMEXR:InvokeServer(_D("QnV5QmxhY2tMZWc="))
 end)
 if not RXzgrgTZNDtJxy then 
 end
 end
})
phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
phUThJKRWbVAQl oWoaZKuHbDCiRB = zqGxghDwQpmuUJ:WaitForChild(_D("b1dvYVpLdUhiRENpUkI="))
phUThJKRWbVAQl OglAPLWNJKMEXR = oWoaZKuHbDCiRB:WaitForChild(_D("VklkamtpVEd1SnRxQWU="))
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("RmlzaG1hbiBLYXJhdGU="),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl RXzgrgTZNDtJxy, dNdVwXmfAugeai = pcall(SvQdlbfnjcMYYN()
 return OglAPLWNJKMEXR:InvokeServer(_D("QnV5RmlzaG1hbkthcmF0ZQ=="))
 end)
 if not RXzgrgTZNDtJxy then 
 end
 end
})
phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
phUThJKRWbVAQl oWoaZKuHbDCiRB = zqGxghDwQpmuUJ:WaitForChild(_D("b1dvYVpLdUhiRENpUkI="))
phUThJKRWbVAQl OglAPLWNJKMEXR = oWoaZKuHbDCiRB:WaitForChild(_D("VklkamtpVEd1SnRxQWU="))
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("RWxlY3Rybw=="),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl RXzgrgTZNDtJxy, dNdVwXmfAugeai = pcall(SvQdlbfnjcMYYN()
 return OglAPLWNJKMEXR:InvokeServer(_D("QnV5RWxlY3Rybw=="))
 end)
 if not RXzgrgTZNDtJxy then 
 end
 end
})
phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
phUThJKRWbVAQl oWoaZKuHbDCiRB = zqGxghDwQpmuUJ:WaitForChild(_D("b1dvYVpLdUhiRENpUkI="))
phUThJKRWbVAQl OglAPLWNJKMEXR = oWoaZKuHbDCiRB:WaitForChild(_D("VklkamtpVEd1SnRxQWU="))
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("RHJhZ29uIEJyZWF0aA=="),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl IUlLhetCpOsvZw, result1 = pcall(SvQdlbfnjcMYYN()
 return OglAPLWNJKMEXR:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="), _D("RHJhZ29uQ2xhdw=="), _D("MQ=="))
 end)
 if not IUlLhetCpOsvZw then
 return
 end
 phUThJKRWbVAQl joOtTdfXRVlPXe, result2 = pcall(SvQdlbfnjcMYYN()
 return OglAPLWNJKMEXR:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="), _D("RHJhZ29uQ2xhdw=="), _D("Mg=="))
 end)
 if not joOtTdfXRVlPXe then
 return
 end
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("U3VwZXJIdW1hbg=="),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl VIdjkiTGuJtqAe = zqGxghDwQpmuUJ.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe
 VIdjkiTGuJtqAe:InvokeServer(_D("QnV5U3VwZXJodW1hbg=="))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("SktLWHlKa2NsWEhkeFQgU3RlcA=="),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl VIdjkiTGuJtqAe = zqGxghDwQpmuUJ.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe
 VIdjkiTGuJtqAe:InvokeServer(_D("QnV5RGVhdGhTdGVw"))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("U2hhcmttYW4gS2FyYXRl"),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl VIdjkiTGuJtqAe = zqGxghDwQpmuUJ.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe
 VIdjkiTGuJtqAe:InvokeServer(_D("QnV5U2hhcmttYW5LYXJhdGU="), true)
 wait(0.2)
 VIdjkiTGuJtqAe:InvokeServer(_D("QnV5U2hhcmttYW5LYXJhdGU="))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("RWxlY3RyaWMgQ2xhdw=="),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl VIdjkiTGuJtqAe = zqGxghDwQpmuUJ.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe
 VIdjkiTGuJtqAe:InvokeServer(_D("QnV5RWxlY3RyaWNDbGF3"))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("RHJhZ29uIFRhbG9u"),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl VIdjkiTGuJtqAe = zqGxghDwQpmuUJ.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe
 VIdjkiTGuJtqAe:InvokeServer(_D("QnV5RHJhZ29uVGFsb24="))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("R29kIEh1bWFu"),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl VIdjkiTGuJtqAe = zqGxghDwQpmuUJ.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe
 VIdjkiTGuJtqAe:InvokeServer(_D("QnV5R29kaHVtYW4="))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("U2FuZ3VpbmUgQXJ0"),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl zqGxghDwQpmuUJ = game:GetService(_D("enFHeGdoRHdRcG11VUo="))
 phUThJKRWbVAQl VIdjkiTGuJtqAe = zqGxghDwQpmuUJ.oWoaZKuHbDCiRB.VIdjkiTGuJtqAe
 VIdjkiTGuJtqAe:InvokeServer(_D("QnV5U2FuZ3VpbmVBcnQ="), true)
 wait(0.2)
 VIdjkiTGuJtqAe:InvokeServer(_D("QnV5U2FuZ3VpbmVBcnQ="))
 end
})
HYAqOrVauuPwRd.Shop:AddParagraph({
 AFotbYvafQTmWI = _D("QWJpbGl0aWVzIFNob3A="),
 Content = string.rep(_D("LQ=="), 21)
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("U2t5anVtcCBbICQxMCwwMDAgQmVsaSBd"),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QnV5SGFraQ=="),_D("R2VwcG8="))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("QnVzbyBIYWtpIFsgJDI1LDAwMCBCZWxpIF0="),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QnV5SGFraQ=="),_D("QnVzbw=="))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("T2JzZXJ2YXRpb24gaGFraSBbICQ3NTAsMDAwIEJlbGkgXQ=="),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("S2VuVGFsaw=="),_D("QnV5"))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("U29ydSBbICQxMDAsMDAwIEJlbGkgXQ=="),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QnV5SGFraQ=="),_D("U29ydQ=="))
 end
})
HYAqOrVauuPwRd.Shop:AddParagraph({
 AFotbYvafQTmWI = _D("TWlzYyBTaG9w"),
 Content = string.rep(_D("LQ=="), 21)
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("QnV5IFJlZnVuZCBTdGF0ICgyNTAwRik="),
 Callback = SvQdlbfnjcMYYN() 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="),_D("UmVmdW5k"),_D("MQ=="))
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="),_D("UmVmdW5k"),_D("Mg=="))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("QnV5IFJlcm9sbCBSYWNlICgzMDAwRik="),
 Callback = SvQdlbfnjcMYYN() 
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="),_D("UmVyb2xs"),_D("MQ=="))
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QmxhY2tiZWFyZFJld2FyZA=="),_D("UmVyb2xs"),_D("Mg=="))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("QnV5IEdob3VsIFJhY2U="),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl CpzeKHiWcgsaQC = {[1] = _D("RWN0b3BsYXNt"), [2] = _D("QnV5Q2hlY2s="), [3] = 4}
 phUThJKRWbVAQl ZZtrbptJEIghpO = {[1] = _D("RWN0b3BsYXNt"), [2] = _D("Q2hhbmdl"), [3] = 4}
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(CpzeKHiWcgsaQC)) 
 wait(0.5)
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(ZZtrbptJEIghpO))
 end
})
HYAqOrVauuPwRd.Shop:AddButton({
 AFotbYvafQTmWI = _D("QnV5IEN5Ym9yZyBSYWNlICgyNTAwRik="),
 Callback = SvQdlbfnjcMYYN()
 if not isBuying then
 isBuying = true
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {[1] = _D("Q3lib3JnVHJhaW5lcg=="), [2] = _D("QnV5")}
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(pnvTUSLxDuQwJo)) 
 wait(0.5)
 isBuying = false
 end
 end
})

phUThJKRWbVAQl bVlasztoRArrvM = false

phUThJKRWbVAQl hMsmcMbNjWDryS = HYAqOrVauuPwRd.Misc:AddToggle(_D("aE1zbWNNYk5qV0RyeVM="), {
 AFotbYvafQTmWI = _D("V2FsayBPbiBXYXRlcg=="),
 Default = false
})

hMsmcMbNjWDryS:OnChanged(SvQdlbfnjcMYYN(v)
 bVlasztoRArrvM = v

 if not v then
 if wExlmmqTxYIeST:FindFirstChild(_D("V2Fsa09uV2F0ZXJQbGF0Zm9ybQ==")) then
 wExlmmqTxYIeST.WalkOnWaterPlatform:Destroy()
 end
 end
end)

phUThJKRWbVAQl dnDiHgYPQNdTCp = game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A="))
phUThJKRWbVAQl RqUFftQvfaEeJR = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG

dnDiHgYPQNdTCp.RenderStepped:Connect(SvQdlbfnjcMYYN()
 if not bVlasztoRArrvM then return end

 -- Cria plataforma caso não exista
 phUThJKRWbVAQl UUGKnBSDdaYZot = wExlmmqTxYIeST:FindFirstChild(_D("V2Fsa09uV2F0ZXJQbGF0Zm9ybQ=="))
 if not UUGKnBSDdaYZot then
 UUGKnBSDdaYZot = Instance.new(_D("UGFydA=="))
 UUGKnBSDdaYZot.Name = _D("V2Fsa09uV2F0ZXJQbGF0Zm9ybQ==")
 UUGKnBSDdaYZot.Size = Vector3.new(12, 1, 12)
 UUGKnBSDdaYZot.Anchored = true
 UUGKnBSDdaYZot.CanCollide = true
 UUGKnBSDdaYZot.Transparency = 1
 UUGKnBSDdaYZot.Parent = wExlmmqTxYIeST
 end

 phUThJKRWbVAQl yOXFMjqnvTyvyo = RqUFftQvfaEeJR.aBYiproClLDecw
 if not yOXFMjqnvTyvyo then return end
 phUThJKRWbVAQl JALIhiwHjTAKBC = yOXFMjqnvTyvyo:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if not JALIhiwHjTAKBC then return end

 -- ALTURA REAL da água do Blox Fruits
 phUThJKRWbVAQl cyCypXkMHDlpZL = 0.5

 -- Move a plataforma para baixo do XPKQttDgjyuQHM (na água)
 UUGKnBSDdaYZot.Position = Vector3.new(JALIhiwHjTAKBC.Position.X, cyCypXkMHDlpZL, JALIhiwHjTAKBC.Position.Z)
end)

HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("U3RvcCBUd2Vlbg=="),
 Callback = SvQdlbfnjcMYYN()
 StopTween()
 end
})
HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("U2hvdyBJdGVt"),
 Description = _D("SSdtIFN0aWxsIEZpeGluZy4uLi4="),
 Callback = SvQdlbfnjcMYYN() 
 end
})
HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("QXdha2VuaW5nIE1lbnU="),
 Description = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.AwakeningToggler.Visible = true
 end
})
HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("Q29sb3IgSGFraSBNZW51"),
 Description = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Callback = SvQdlbfnjcMYYN()
 game.XggXraBDqgnxkm.VCcJFezvnLGNZv.XUBvNPokLCGyoF.Main.Colors.Visible = true
 end
})
phUThJKRWbVAQl YepnUYJOdtejQE = HYAqOrVauuPwRd.Misc:AddSection(_D("VGVhbQ=="))


HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("Sm9pbiBQaXJhdGVzIFRlYW0="),
 Description = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U2V0VGVhbQ=="),_D("UGlyYXRlcw==")) 
 end
})


HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("Sm9pbiBNYXJpbmVzIFRlYW0="),
 Description = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Callback = SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U2V0VGVhbQ=="),_D("TWFyaW5lcw==")) 
 end
})

HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("T3BlbiBBRm90Yll2YWZRVG1XSQ=="),
 Callback = SvQdlbfnjcMYYN()
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {_D("Z2V0VGl0bGVz")}
 phUThJKRWbVAQl RXzgrgTZNDtJxy, dNdVwXmfAugeai = pcall(SvQdlbfnjcMYYN()
 return game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(pnvTUSLxDuQwJo))
 end)
 if RXzgrgTZNDtJxy then
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Titles.Visible = true
 end
 end
})
phUThJKRWbVAQl SjUfbKFKiWCkSQ = 0
phUThJKRWbVAQl RVCeABgRCvlRdO = 2
HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("T3BlbiBDb2xvcg=="),
 Callback = SvQdlbfnjcMYYN()
 if tick() - SjUfbKFKiWCkSQ >= RVCeABgRCvlRdO then
 SjUfbKFKiWCkSQ = tick()
 phUThJKRWbVAQl EzoqMuqqtgJSYP = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main:FindFirstChild(_D("Q29sb3Jz"))
 if EzoqMuqqtgJSYP then
 EzoqMuqqtgJSYP.Visible = true
 end
 end
 end
})
HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("Qm9vc3QgRlBT"),
 Callback = SvQdlbfnjcMYYN()
 FPSBooster()
 end
})
SvQdlbfnjcMYYN FPSBooster()
 phUThJKRWbVAQl nrXtyzLlHwNPCM = true
 phUThJKRWbVAQl rQebPBiSoFVwDa = game
 phUThJKRWbVAQl XGnreoLKTRtKpu = rQebPBiSoFVwDa.xkzLfqrlXOYczM
 phUThJKRWbVAQl gbdFyGgXXawatF = rQebPBiSoFVwDa.Lighting
 phUThJKRWbVAQl aPQpUsPkBdaTUw = XGnreoLKTRtKpu.Terrain 
 sethiddenproperty(gbdFyGgXXawatF, _D("VGVjaG5vbG9neQ=="), 2)
 sethiddenproperty(aPQpUsPkBdaTUw, _D("RGVjb3JhdGlvbg=="), false)
 aPQpUsPkBdaTUw.WaterWaveSize = 0
 aPQpUsPkBdaTUw.WaterWaveSpeed = 0
 aPQpUsPkBdaTUw.WaterReflectance = 0
 aPQpUsPkBdaTUw.WaterTransparency = 0
 gbdFyGgXXawatF.GlobalShadows = false
 gbdFyGgXXawatF.FogEnd = 9e9
 gbdFyGgXXawatF.Brightness = 0
 settings().Rendering.QualityLevel = _D("TGV2ZWwwMQ==") 
 phUThJKRWbVAQl SvQdlbfnjcMYYN optimizePart(v)
 if v:IsA(_D("UGFydA==")) or v:IsA(_D("VW5pb24=")) or v:IsA(_D("Q29ybmVyV2VkZ2VQYXJ0")) or v:IsA(_D("VHJ1c3NQYXJ0")) then
 v.GzertedVoAvlZz = _D("UGxhc3RpYw==")
 v.Reflectance = 0
 elseif v:IsA(_D("RGVjYWw=")) or v:IsA(_D("VGV4dHVyZQ==")) and nrXtyzLlHwNPCM then
 v.Transparency = 1
 elseif v:IsA(_D("UGFydGljbGVFbWl0dGVy")) or v:IsA(_D("VHJhaWw=")) then
 v.Lifetime = NumberRange.new(0)
 elseif v:IsA(_D("RXhwbG9zaW9u")) then
 v.BlastPressure = 1
 v.BlastRadius = 1
 elseif v:IsA(_D("RmlyZQ==")) or v:IsA(_D("U3BvdExpZ2h0")) or v:IsA(_D("U21va2U=")) or v:IsA(_D("U3BhcmtsZXM=")) then
 v.vykoDNNQtWQdhW = false
 elseif v:IsA(_D("TWVzaFBhcnQ=")) then
 v.GzertedVoAvlZz = _D("UGxhc3RpYw==")
 v.Reflectance = 0
 v.TextureID = 10385902758728957
 end
 end 
 for i, v in pairs(XGnreoLKTRtKpu:GetDescendants()) do
 if v:IsA(_D("UGFydA==")) or v:IsA(_D("VW5pb24=")) or v:IsA(_D("Q29ybmVyV2VkZ2VQYXJ0")) or v:IsA(_D("VHJ1c3NQYXJ0")) or v:IsA(_D("TWVzaFBhcnQ=")) then
 optimizePart(v)
 end
 end
 for i, e in pairs(gbdFyGgXXawatF:GetChildren()) do
 if e:IsA(_D("Qmx1ckVmZmVjdA==")) or e:IsA(_D("U3VuUmF5c0VmZmVjdA==")) or e:IsA(_D("Q29sb3JDb3JyZWN0aW9uRWZmZWN0")) or e:IsA(_D("Qmxvb21FZmZlY3Q=")) or e:IsA(_D("RGVwdGhPZkZpZWxkRWZmZWN0")) then
 e.vykoDNNQtWQdhW = false
 end
 end
end




srOTmqcypZcejd = HYAqOrVauuPwRd.Misc:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QmxhY2sgU2NyZWVu"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().StartBlackScreen = Value
end)
phUThJKRWbVAQl bdbKEcbTMQDZKe = 0
phUThJKRWbVAQl gBOYupSOqWWUtV = 0.5
spawn(SvQdlbfnjcMYYN()
 while task.wait() do
 if tick() - bdbKEcbTMQDZKe >= gBOYupSOqWWUtV then
 bdbKEcbTMQDZKe = tick()
 if getgenv().StartBlackScreen then
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
 else
 game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Misc:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("V2hpdGUgU2NyZWVu"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().WhiteScreen = Value
 if getgenv().WhiteScreen == true then
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")):Set3dRenderingEnabled(false)
 elseif getgenv().WhiteScreen == false then
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")):Set3dRenderingEnabled(true)
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Misc:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("SGlkZSBNb2I="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().HideMob = Value 
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait() do
 if getgenv().HideMob then
 pcall(SvQdlbfnjcMYYN()
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetDescendants()) do
 if v.ClassName == _D("TWVzaFBhcnQ=") then
 v.Transparency = 1
 end
 end
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetDescendants()) do
 if v.Name == _D("SGVhZA==") then
 v.Transparency = 1
 end
 end
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetDescendants()) do
 if v.ClassName == _D("QWNjZXNzb3J5") then
 v.Handle.Transparency = 1
 end
 end
 for i, v in pairs(game:GetService(_D("eGt6TGZxcmxYT1ljek0=")).Enemies:GetDescendants()) do
 if v.ClassName == _D("RGVjYWw=") then
 v.Transparency = 1
 end
 end
 end)
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Misc:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("UmVtb3ZlIERhbWUgVGV4dA=="), Default = true })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().RemoveText = Value
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).Assets.GUI.DamageCounter.vykoDNNQtWQdhW = not getgenv().RemoveText
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Misc:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("UmVtb3ZlIE5vdGlmaWNhdGlvbg=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().RemoveNotification = Value
 game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.XUBvNPokLCGyoF.Notifications.vykoDNNQtWQdhW = not getgenv().RemoveNotification
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Misc:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBSZWpvaW4gT24gS2ljaw=="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoRejoinKick = Value
 if Value then
 getgenv().rejoin = game:GetService(_D("Q29yZUd1aQ==")).RobloxPromptGui.promptOverlay.ChildAdded:Connect(SvQdlbfnjcMYYN(child)
 if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild(_D("RXJyb3JGcmFtZQ==")) then
 game:GetService(_D("VGVsZXBvcnRTZXJ2aWNl")):SZHyJcyjWPDThK(game.PlaceId)
 end
 end)
 else
 if getgenv().rejoin then
 getgenv().rejoin:Disconnect()
 getgenv().rejoin = nil
 end
 end
end)

Input = HYAqOrVauuPwRd.Misc:AddInput(_D("SW5wdXQ="), {
 AFotbYvafQTmWI = _D("SW5wdXQgSm9iIElk"),
 Default = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Placeholder = _D("UGFzdGUgSm9iIElk"),
 Numeric = false,
 Finished = false,
 Callback = SvQdlbfnjcMYYN(Value)
 getgenv().Job = Value
 end
}) 
srOTmqcypZcejd = HYAqOrVauuPwRd.Misc:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("U3BhbSBKb2lu"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
getgenv().Join = Value
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl NymbzSuTAbZXRl = 0
 phUThJKRWbVAQl FvpkJxESGBxjIb = 1 
 while task.wait() do
 if getgenv().Join and tick() - NymbzSuTAbZXRl >= FvpkJxESGBxjIb then
 NymbzSuTAbZXRl = tick()
 game:GetService(_D("VGVsZXBvcnRTZXJ2aWNl")):TeleportToPlaceInstance(game.zpGgOKqVcvDuYZ, getgenv().Job, game.XggXraBDqgnxkm.sFNhEnqNuaqEaG)
 end
 end
end)
phUThJKRWbVAQl NymbzSuTAbZXRl = 0
phUThJKRWbVAQl FvpkJxESGBxjIb = 5
HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("Sm9pbiBTZXJ2ZXI="),
 Callback = SvQdlbfnjcMYYN()
 if tick() - NymbzSuTAbZXRl >= FvpkJxESGBxjIb then
 NymbzSuTAbZXRl = tick()
 game:GetService(_D("VGVsZXBvcnRTZXJ2aWNl")):TeleportToPlaceInstance(game.zpGgOKqVcvDuYZ, getgenv().Job, game.XggXraBDqgnxkm.sFNhEnqNuaqEaG) 
 end
 end
})
phUThJKRWbVAQl lIEmzkKawkynqg = 0
phUThJKRWbVAQl AexWBybjNtKvje = 2
HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("Q29weSBKb2JJZA=="),
 Callback = SvQdlbfnjcMYYN()
 if tick() - lIEmzkKawkynqg >= AexWBybjNtKvje then
 lIEmzkKawkynqg = tick()
 setclipboard(tostring(game.JobId))
 print(_D("Sm9iSWQgQ29waWVkIQ=="))
 else
 print(_D("UGxlYXNlIHRyeSBhZ2FpbiBpbiBhIG1vbWVudCE="))
 end
 end
})
phUThJKRWbVAQl NymbzSuTAbZXRl = 0
phUThJKRWbVAQl FvpkJxESGBxjIb = 3
HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("UmVqb2luIFNlcnZlcg=="),
 Callback = SvQdlbfnjcMYYN()
 if tick() - NymbzSuTAbZXRl >= FvpkJxESGBxjIb then
 NymbzSuTAbZXRl = tick()
 game:GetService(_D("VGVsZXBvcnRTZXJ2aWNl")):SZHyJcyjWPDThK(game.PlaceId, game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG) 
 end
 end
})
HYAqOrVauuPwRd.Misc:AddButton({
 AFotbYvafQTmWI = _D("SG9wIFNlcnZlcg=="),
 Callback = SvQdlbfnjcMYYN()
 Hop()
 end
})
SvQdlbfnjcMYYN Hop()
 phUThJKRWbVAQl smSvHPgNVDZNEr = game.PlaceId
 phUThJKRWbVAQl vzBupEVaIdhpTr = {}
 phUThJKRWbVAQl aWROwHGZsxpcjC = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 phUThJKRWbVAQl jdtezTvTCZFCDY = os.hvaozCDqNOzGec(_D("ISphUFFwVXNQa0JkYVRVdw==")).AwuEFVcgkaYTZY
 phUThJKRWbVAQl DIlQpuYEcYGVoM = false
 SvQdlbfnjcMYYN TPReturner()
 phUThJKRWbVAQl ahRcBXVQaKPzim;
 if aWROwHGZsxpcjC == _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))) then
 ahRcBXVQaKPzim = game.pnuwrbCcjHdtJG:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. smSvHPgNVDZNEr .. '/servers/Public?sortOrder=Asc&limit=100'))
 else
 ahRcBXVQaKPzim = game.pnuwrbCcjHdtJG:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. smSvHPgNVDZNEr .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. aWROwHGZsxpcjC))
 end 
 phUThJKRWbVAQl SKdvOtPrJVqXpI = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D("")))))))))))))))))))))))))))))))))
 if ahRcBXVQaKPzim.nextPageCursor and ahRcBXVQaKPzim.nextPageCursor ~= _D("bnVsbA==") and ahRcBXVQaKPzim.nextPageCursor ~= nil then
 aWROwHGZsxpcjC = ahRcBXVQaKPzim.nextPageCursor
 end 
 phUThJKRWbVAQl DlYEBsbqQTqbxO = 0
 for i,v in pairs(ahRcBXVQaKPzim.bAPNsTNoWsRtuV) do
 phUThJKRWbVAQl GxxeoWqqsJwhBr = true
 SKdvOtPrJVqXpI = tostring(v.qwaPIJGnXfeUHT) 
 if tonumber(v.maxPlayers) > tonumber(v.playing) then
 for _,Existing in pairs(vzBupEVaIdhpTr) do
 if DlYEBsbqQTqbxO ~= 0 then
 if SKdvOtPrJVqXpI == tostring(Existing) then
 GxxeoWqqsJwhBr = false
 end
 else
 if tonumber(jdtezTvTCZFCDY) ~= tonumber(Existing) then
 phUThJKRWbVAQl YLMmMkugiogEUz = pcall(SvQdlbfnjcMYYN()
 vzBupEVaIdhpTr = {}
 table.insert(vzBupEVaIdhpTr, jdtezTvTCZFCDY)
 end)
 end
 end
 DlYEBsbqQTqbxO = DlYEBsbqQTqbxO + 1
 end
 if GxxeoWqqsJwhBr == true then
 table.insert(vzBupEVaIdhpTr, SKdvOtPrJVqXpI)
 wait(0.1)
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("VGVsZXBvcnRTZXJ2aWNl")):TeleportToPlaceInstance(smSvHPgNVDZNEr, SKdvOtPrJVqXpI, game.XggXraBDqgnxkm.sFNhEnqNuaqEaG)
 end)
 wait(1)
 break
 end
 end
 end
 end
 SvQdlbfnjcMYYN SZHyJcyjWPDThK() 
 while true do
 pcall(SvQdlbfnjcMYYN()
 TPReturner()
 if aWROwHGZsxpcjC ~= _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))) then
 TPReturner()
 end
 end)
 wait(2)
 end
 end
 SZHyJcyjWPDThK()
end


srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBUdXJuIE9uIEJ1c28="), Default = true })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AUTOHAKI = Value
end)
spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl hGSuvQodJMvPmj = true
 phUThJKRWbVAQl yPjaxIdZKSjHrT = 2
 while task.wait(0.1) do
 if getgenv().AUTOHAKI then
 if not game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("SGFzQnVzbw==")) and hGSuvQodJMvPmj then
 hGSuvQodJMvPmj = false
 phUThJKRWbVAQl pnvTUSLxDuQwJo = {
 [1] = _D("QnVzbw==")
 }
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(unpack(pnvTUSLxDuQwJo))
 end)
 wait(yPjaxIdZKSjHrT)
 hGSuvQodJMvPmj = true
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), { AFotbYvafQTmWI = _D("QXV0byBUdXJuIE9uIFJhY2UgaXdDWU9ad0ZiYWNKbm0="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoTurnOnV4 = Value
end)
task.spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl KacvTFMJoFOTkg = 0
 while true do
 task.wait(0.1)
 if getgenv().AutoTurnOnV4 then
 phUThJKRWbVAQl vwQmFqKggWtPsY = tick()
 if vwQmFqKggWtPsY - KacvTFMJoFOTkg >= 0.5 then
 KacvTFMJoFOTkg = vwQmFqKggWtPsY
 phUThJKRWbVAQl KlPGYKwHNevVQC = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw
 if KlPGYKwHNevVQC and KlPGYKwHNevVQC:FindFirstChild(_D("UmFjZUVuZXJneQ==")) and
 KlPGYKwHNevVQC.RaceEnergy.Value >= 1 and
 not KlPGYKwHNevVQC.RaceTransformed.Value then
 phUThJKRWbVAQl zhsHvjqynAllcW = game:GetService(_D("VmlydHVhbElucHV0TWFuYWdlcg=="))
 zhsHvjqynAllcW:SendKeyEvent(true, _D("WQ=="), false, game)
 task.wait(0.1)
 zhsHvjqynAllcW:SendKeyEvent(false, _D("WQ=="), false, game)
 end
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBUdXJuIE9uIFJhY2UgVjM="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AutoTurnOnV3 = Value
end)
task.spawn(SvQdlbfnjcMYYN()
 phUThJKRWbVAQl oxoHjCPjkKADfe = false 
 while true do
 task.wait(0.1) 
 pcall(SvQdlbfnjcMYYN()
 if getgenv().AutoTurnOnV3 ~= oxoHjCPjkKADfe then
 if getgenv().AutoTurnOnV3 then
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.CommE:FireServer(_D("QWN0aXZhdGVBYmlsaXR5"))
 end
 oxoHjCPjkKADfe = getgenv().AutoTurnOnV3
 end
 end)
 end
end)
phUThJKRWbVAQl srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBTZXQgU3Bhd24gUG9pbnQ="), Default = false })
phUThJKRWbVAQl DajPvUrJYcTkTL = false
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().Set = Value
 if Value ~= DajPvUrJYcTkTL then
 DajPvUrJYcTkTL = Value
 if Value then
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("U2V0U3Bhd25Qb2ludA=="))
 end)
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QW50aSBBRks="), Default = true })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().AntiAFK = Value 
end)
task.spawn(SvQdlbfnjcMYYN()
 while true do
 if getgenv().AntiAFK then
 phUThJKRWbVAQl cGXOvGEStsFxCy = game:GetService(_D("aFN3ZEZ2UWJBc0FMV0M="))
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG
 XPKQttDgjyuQHM.Idled:Connect(SvQdlbfnjcMYYN()
 cGXOvGEStsFxCy:Button2Down(Vector2.new(0, 0), wExlmmqTxYIeST.CurrentCamera.CFrame)
 wait(1)
 cGXOvGEStsFxCy:Button2Up(Vector2.new(0, 0), wExlmmqTxYIeST.CurrentCamera.CFrame)
 end)
 end
 game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A=")).Heartbeat:wait()
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("UmVzZXQgU1pIeUpjeWpXUERUaEs="), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 BypassTP = Value 
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("QnlwYXNzIFRQ"), { AFotbYvafQTmWI = _D("U3RvcCBSZXNldCBTWkh5SmN5aldQRFRoSyBXaGVuIEhhdmUgTGVnZW5kYXJ5"), Default = false })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().StopTP = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(1) do
 if getgenv().StopTP then
 if game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("RmlzdCBvZiBEYXJrbmVzcw==")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("RmlzdCBvZiBEYXJrbmVzcw==")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.Backpack:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) or game.XggXraBDqgnxkm.sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("R29kJ3MgQ2hhbGljZQ==")) then
 BypassTP = false
 end
 end
 end
end)
getgenv().ytaoFlHyvcARaM = false
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("RmFzdCBBdHRhY2s="), Default = true})
phUThJKRWbVAQl kFzpwhzolMXQqg
phUThJKRWbVAQl SvQdlbfnjcMYYN FastAttackLoop()
 while getgenv().ytaoFlHyvcARaM do
 if type(AttackNoCoolDown) == _D("U3ZRZGxiZm5qY01ZWU4=") then
 AttackNoCoolDown()
 end
 task.wait(0.1)
 end
end
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().ytaoFlHyvcARaM = Value
 if Value and not kFzpwhzolMXQqg then
 kFzpwhzolMXQqg = task.spawn(FastAttackLoop)
 end
 if not Value and kFzpwhzolMXQqg then
 kFzpwhzolMXQqg = nil
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QnJpbmcgTW9i"), Default = true})
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().BringMonster = Value
end)
phUThJKRWbVAQl dnDiHgYPQNdTCp = game:GetService(_D("ZG5EaUhnWVBRTmRUQ3A="))
phUThJKRWbVAQl XggXraBDqgnxkm = game:GetService(_D("WGdnWHJhQkRxZ254a20="))
phUThJKRWbVAQl xkzLfqrlXOYczM = game:GetService(_D("eGt6TGZxcmxYT1ljek0="))
phUThJKRWbVAQl sFNhEnqNuaqEaG = XggXraBDqgnxkm.sFNhEnqNuaqEaG
spawn(SvQdlbfnjcMYYN()
 while task.wait(0.1) do
 pcall(SvQdlbfnjcMYYN()
 CheckQuest()
 phUThJKRWbVAQl KTWBQhwktSkgEc = xkzLfqrlXOYczM.Enemies:GetChildren()
 phUThJKRWbVAQl KpnOxYRwbVgacz = 0
 for _, ksJlFEgkkErXbu in ipairs(KTWBQhwktSkgEc) do
 if KpnOxYRwbVgacz >= 2 then
 break
 end 
 if getgenv().BringMonster and ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw=")) and ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl lnhLIZpBaYGcBO = ksJlFEgkkErXbu:FindFirstChild(_D("S3JsR2hLakhlc1RzVGw="))
 phUThJKRWbVAQl OdSSDwxKzrOmwX = ksJlFEgkkErXbu:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU="))
 if lnhLIZpBaYGcBO and OdSSDwxKzrOmwX and sFNhEnqNuaqEaG.aBYiproClLDecw and sFNhEnqNuaqEaG.aBYiproClLDecw:FindFirstChild(_D("Z1hadHJSdVpZbHNyZEU=")) then
 phUThJKRWbVAQl AIZewxPvNzJKJX = (OdSSDwxKzrOmwX.Position - sFNhEnqNuaqEaG.aBYiproClLDecw.gXZtrRuZYlsrdE.Position).Magnitude
 if getgenv().StartMagnet and (ksJlFEgkkErXbu.Name == MonFarm or ksJlFEgkkErXbu.Name == Mon) and lnhLIZpBaYGcBO.Health > 0 and AIZewxPvNzJKJX <= 350 then
 if ksJlFEgkkErXbu.Name == _D("RmFjdG9yeSBTdGFmZg==") and PosMon and (OdSSDwxKzrOmwX.Position - PosMon.Position).Magnitude <= 5000 then
 if OdSSDwxKzrOmwX.Parent then
 OdSSDwxKzrOmwX.CanCollide = false
 OdSSDwxKzrOmwX.Size = Vector3.new(60, 60, 60)
 OdSSDwxKzrOmwX.CFrame = PosMon
 ksJlFEgkkErXbu.Head.CanCollide = false
 phUThJKRWbVAQl giEMvrVBbZfGRa = lnhLIZpBaYGcBO:FindFirstChild(_D("QW5pbWF0b3I="))
 if giEMvrVBbZfGRa then
 pcall(SvQdlbfnjcMYYN()
 giEMvrVBbZfGRa:Destroy()
 end)
 end
 sethiddenproperty(sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 KpnOxYRwbVgacz = KpnOxYRwbVgacz + 1
 end
 elseif (ksJlFEgkkErXbu.Name == MonFarm or ksJlFEgkkErXbu.Name == Mon) and PosMon and (OdSSDwxKzrOmwX.Position - PosMon.Position).Magnitude <= 4500 then
 if OdSSDwxKzrOmwX.Parent then
 OdSSDwxKzrOmwX.CanCollide = false
 OdSSDwxKzrOmwX.Size = Vector3.new(60, 60, 60)
 OdSSDwxKzrOmwX.CFrame = PosMon
 ksJlFEgkkErXbu.Head.CanCollide = false
 phUThJKRWbVAQl giEMvrVBbZfGRa = lnhLIZpBaYGcBO:FindFirstChild(_D("QW5pbWF0b3I="))
 if giEMvrVBbZfGRa then
 pcall(SvQdlbfnjcMYYN()
 giEMvrVBbZfGRa:Destroy()
 end)
 end
 sethiddenproperty(sFNhEnqNuaqEaG, _D("U2ltdWxhdGlvblJhZGl1cw=="), math.huge)
 KpnOxYRwbVgacz = KpnOxYRwbVgacz + 1
 end
 end
 end
 end
 end
 end
 end)
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("U3BpbiBQb3NpdGlvbg=="), Description = _D("U3BpbiBQb3NpdGlvbiBXaGVuIEZhcm0="), Default = true })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().SpinPos = Value
end)
spawn(SvQdlbfnjcMYYN()
 while wait() do
 if getgenv().SpinPos then
 Pos = CFrame.new(0, PosY, -20)
 wait(0.1)
 Pos = CFrame.new(-20, PosY, 0)
 wait(0.1)
 Pos = CFrame.new(0, PosY, 20)
 wait(0.1)
 Pos = CFrame.new(20, PosY, 0)
 else
 Pos = CFrame.new(0, PosY, 0)
 end
 end
end)
Slider = HYAqOrVauuPwRd.Settings:AddSlider(_D("U2xpZGVy"), {
 AFotbYvafQTmWI = _D("RmFybSBkcHhpYk1tQnlPWWJTeg=="),
 Default = 15,
 Min = 0,
 Max = 30,
 Rounding = 5,
 Callback = SvQdlbfnjcMYYN(Value)
 PosY = Value
 end
})
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QXV0byBSZWR1Y2UgTGFnIEZhcm0gU2FmZWx5"), Default = true })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().ReduceLag = Value
end)
spawn(SvQdlbfnjcMYYN()
 while wait(0.1) do
 if getgenv().ReduceLag then
 for i, v in pairs(game.xkzLfqrlXOYczM[_D("X1dvcmxkT3JpZ2lu")]:GetChildren()) do
 if v and (v.Name == _D("Q3VydmVkUmluZw==") or v.Name == _D("U2xhc2hIaXQ=") or v.Name == _D("U3dvcmRTbGFzaA==") or v.Name == _D("U2xhc2hUYWls") or v.Name == _D("U291bmRz")) then
 pcall(SvQdlbfnjcMYYN()
 v:Destroy()
 end)
 end
 end
 end
 end
end)
srOTmqcypZcejd = HYAqOrVauuPwRd.Settings:AddToggle(_D("c3JPVG1xY3lwWmNlamQ="), {AFotbYvafQTmWI = _D("QW50aSBDaGVhdCBGYXJtaW5n"), Description = _D("VGhpcyBmZWF0dXJlIGhlbHBzIHlvdSBGYXJtIHNhZmVseSB3aXRob3V0IGJlaW5nIGRldGVjdGVk"), Default = true })
srOTmqcypZcejd:OnChanged(SvQdlbfnjcMYYN(Value)
 getgenv().ResetFlags = Value
end)
spawn(SvQdlbfnjcMYYN()
 while task.wait(5) do
 pcall(SvQdlbfnjcMYYN()
 if getgenv().ResetFlags then
 phUThJKRWbVAQl XPKQttDgjyuQHM = game:GetService(_D("WGdnWHJhQkRxZ254a20=")).sFNhEnqNuaqEaG 
 for _, v in pairs(XPKQttDgjyuQHM.aBYiproClLDecw:GetDescendants()) do
 if v:IsA(_D("TG9jYWxTY3JpcHQ=")) then
 phUThJKRWbVAQl faIoPlMXAhENgf = {
 _D("R2VuZXJhbA=="), _D("U2hpZnRsb2Nr"), _D("RmFsbERhbWFnZQ=="), _D("NDQ0NA=="), 
 _D("Q2FtQm9i"), _D("SnVtcENE"), _D("TG9va2luZw=="), _D("UnVu")
 }
 if table.find(faIoPlMXAhENgf, v.Name) then
 v:Destroy()
 end
 end
 end
 for _, v in pairs(XPKQttDgjyuQHM.PlayerScripts:GetDescendants()) do
 if v:IsA(_D("TG9jYWxTY3JpcHQ=")) then
 phUThJKRWbVAQl faIoPlMXAhENgf = {
 _D("Um9ibG94TW90b3I2REJ1Z0ZpeA=="), _D("Q2xhbnM="), _D("Q29kZXM="), _D("Q3VzdG9tRm9yY2VGaWVsZA=="),
 _D("TWVudUJsb29kU3A="), _D("UGxheWVyTGlzdA==")
 }
 if table.find(faIoPlMXAhENgf, v.Name) then
 v:Destroy()
 end
 end
 end
 end
 end)
 end
end)

-- Auto Melee
HYAqOrVauuPwRd.Settings:AddToggle(_D("QXV0b01lbGVl"), { 
 AFotbYvafQTmWI = _D("QXV0byBNZWxlZQ=="), 
 Default = false -- Carrega o valor salvo ou usa false
}):OnChanged(SvQdlbfnjcMYYN(aPQpUsPkBdaTUw)
 _G.Melee = aPQpUsPkBdaTUw
 spawn(SvQdlbfnjcMYYN()
 while _G.Melee do
 wait(0.1)
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWRkUG9pbnQ="), _D("TWVsZWU="), Point)
 end)
 end
 end)
end)

-- Auto Defense
HYAqOrVauuPwRd.Settings:AddToggle(_D("QXV0b0RlZmVuc2U="), { 
 AFotbYvafQTmWI = _D("QXV0byBEZWZlbnNl"), 
 Default = false 
}):OnChanged(SvQdlbfnjcMYYN(aPQpUsPkBdaTUw)
 _G.Defense = aPQpUsPkBdaTUw
 spawn(SvQdlbfnjcMYYN()
 while _G.Defense do
 wait(0.1)
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWRkUG9pbnQ="), _D("RGVmZW5zZQ=="), Point)
 end)
 end
 end)
end)

-- Auto Sword
HYAqOrVauuPwRd.Settings:AddToggle(_D("QXV0b1N3b3Jk"), { 
 AFotbYvafQTmWI = _D("QXV0byBTd29yZA=="), 
 Default = false 
}):OnChanged(SvQdlbfnjcMYYN(aPQpUsPkBdaTUw)
 _G.Sword = aPQpUsPkBdaTUw
 spawn(SvQdlbfnjcMYYN()
 while _G.Sword do
 wait(0.1)
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWRkUG9pbnQ="), _D("U3dvcmQ="), Point)
 end)
 end
 end)
end)

-- Auto Gun
HYAqOrVauuPwRd.Settings:AddToggle(_D("QXV0b0d1bg=="), { 
 AFotbYvafQTmWI = _D("QXV0byBHdW4="), 
 Default = false 
}):OnChanged(SvQdlbfnjcMYYN(aPQpUsPkBdaTUw)
 _G.Gun = aPQpUsPkBdaTUw

 spawn(SvQdlbfnjcMYYN()
 while _G.Gun do
 wait(0.1)
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWRkUG9pbnQ="), _D("R3Vu"), Point)
 end)
 end
 end)
end)

-- Auto Blox wbvkmeVGHTmDiq
HYAqOrVauuPwRd.Settings:AddToggle(_D("QXV0b0ZydWl0"), { 
 AFotbYvafQTmWI = _D("QXV0byBCbG94IHdidmttZVZHSFRtRGlx"), 
 Default = false 
}):OnChanged(SvQdlbfnjcMYYN(aPQpUsPkBdaTUw)
 _G.wbvkmeVGHTmDiq = aPQpUsPkBdaTUw

 spawn(SvQdlbfnjcMYYN()
 while _G.wbvkmeVGHTmDiq do
 wait(0.1)
 pcall(SvQdlbfnjcMYYN()
 game:GetService(_D("enFHeGdoRHdRcG11VUo=")).oWoaZKuHbDCiRB.VIdjkiTGuJtqAe:InvokeServer(_D("QWRkUG9pbnQ="), _D("RGVtb24gd2J2a21lVkdIVG1EaXE="), Point)
 end)
 end
 end)
end)

--------------------------------------------------------------------
-- BOTÃO PERSONALIZADO
--------------------------------------------------------------------
phUThJKRWbVAQl RqUFftQvfaEeJR = game.XggXraBDqgnxkm.sFNhEnqNuaqEaG
phUThJKRWbVAQl lEsPcyvnnDqaeY = game:GetService(_D("bEVzUGN5dm5uRHFhZVk="))

-- Criando a ScreenGui do botão
phUThJKRWbVAQl VATxBuTUsxYMbS = Instance.new(_D("U2NyZWVuR3Vp"))
VATxBuTUsxYMbS.Name = _D("VkFUeEJ1VFVzeFlNYlM=")
VATxBuTUsxYMbS.Parent = RqUFftQvfaEeJR:WaitForChild(_D("WFVCdk5Qb2tMQ0d5b0Y="))
VATxBuTUsxYMbS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Criando o UbavlHQbVyIRmT
phUThJKRWbVAQl UbavlHQbVyIRmT = Instance.new(_D("VWJhdmxIUWJWeUlSbVQ="))
UbavlHQbVyIRmT.Parent = VATxBuTUsxYMbS
UbavlHQbVyIRmT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UbavlHQbVyIRmT.BorderSizePixel = 0
UbavlHQbVyIRmT.Size = UDim2.new(0, 45, 0, 45)
UbavlHQbVyIRmT.Position = UDim2.new(0.91, 0, 0.07, 0)
UbavlHQbVyIRmT.Image = _D("cmJ4YXNzZXRpZDovLzkxMDYyNzIxNzUwNDg3")

phUThJKRWbVAQl hGMYifvNsPDpIi = Instance.new(_D("aEdNWWlmdk5zUERwSWk="))
hGMYifvNsPDpIi.CornerRadius = UDim.new(1,0)
hGMYifvNsPDpIi.Parent = UbavlHQbVyIRmT

-- Função para alternar a GUI KQyEiiaHJvvFUr
phUThJKRWbVAQl SvQdlbfnjcMYYN ToggleFluent()
 if ppQRnwKLXqRIGw and ppQRnwKLXqRIGw.xOSXsSCeZmnTbV then
 ppQRnwKLXqRIGw.xOSXsSCeZmnTbV.Visible = not ppQRnwKLXqRIGw.xOSXsSCeZmnTbV.Visible
 end
end

-- Clique / toque para alternar GUI
UbavlHQbVyIRmT.MouseButton1Click:Connect(ToggleFluent)
UbavlHQbVyIRmT.InputBegan:Connect(SvQdlbfnjcMYYN(input)
 if input.UserInputType == Enum.UserInputType.Touch then
 ToggleFluent()
 end
end)

-- Tecla P para alternar GUI (PC)
lEsPcyvnnDqaeY.InputBegan:Connect(SvQdlbfnjcMYYN(input, gameProcessed)
 if gameProcessed then return end
 if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.P then
 ToggleFluent()
 end
end)

-- === Código de arrastar ===
phUThJKRWbVAQl KrJTmqCOFlMGPI = false
phUThJKRWbVAQl tfWEmxJijJriLM, startPos, startMousePos

UbavlHQbVyIRmT.InputBegan:Connect(SvQdlbfnjcMYYN(input)
 if input.UserInputType == Enum.UserInputType.MouseButton1 then
 KrJTmqCOFlMGPI = true
 startPos = UbavlHQbVyIRmT.Position
 startMousePos = lEsPcyvnnDqaeY:GetMouseLocation()

 input.Changed:Connect(SvQdlbfnjcMYYN()
 if input.UserInputState == Enum.UserInputState.End then
 KrJTmqCOFlMGPI = false
 end
 end)
 end
end)

UbavlHQbVyIRmT.InputChanged:Connect(SvQdlbfnjcMYYN(input)
 if input.UserInputType == Enum.UserInputType.MouseMovement then
 tfWEmxJijJriLM = input
 end
end)

lEsPcyvnnDqaeY.InputChanged:Connect(SvQdlbfnjcMYYN(input)
 if input == tfWEmxJijJriLM and KrJTmqCOFlMGPI then
 phUThJKRWbVAQl gvGufIHugtEufW = lEsPcyvnnDqaeY:GetMouseLocation() - startMousePos
 UbavlHQbVyIRmT.Position = UDim2.new(
 startPos.X.Scale, startPos.X.Offset + gvGufIHugtEufW.X,
 startPos.Y.Scale, startPos.Y.Offset + gvGufIHugtEufW.Y
 )
 end
end)

--\\ ♡VIP♡
----------------------------------------------------------------------------------------------------
print(_D("LS1bW0hvcCBTZXJ2ZXIgSWYgWW91IE1lZXQgR2FtZSBBZG1pbl1dLS0="))
phUThJKRWbVAQl YEhDVrfNGlRUSH = {
 [_D("cmVkX2dhbWU0Mw==")] = true,
 [_D("cmlwX2luZHJh")] = true,
 [_D("QXhpb3Jl")] = true,
 [_D("UG9sa3N0ZXI=")] = true,
 [_D("d2VubG9ja3RvYWQ=")] = true,
 [_D("RGFpZ3JvY2s=")] = true,
 [_D("dG9pbGFtdmlkYW1tZQ==")] = true,
 [_D("b29mZmljaWFsbm9vYmll")] = true,
 [_D("VXpvdGg=")] = true,
 [_D("QXphcnRo")] = true,
 [_D("YXJsdGhtZXRpYw==")] = true,
 [_D("RGVhdGhfS2luZw==")] = true,
 [_D("THVub3Zlbg==")] = true,
 [_D("VGhlR3JlYXRlQWNlZA==")] = true,
 [_D("cmlwX2Z1ZA==")] = true,
 [_D("ZHJpcF9tYW1h")] = true,
 [_D("bGF5YW5kaWtpdDEy")] = true,
 [_D("SGluZ29p")] = true
}
spawn(SvQdlbfnjcMYYN()
 while true do
 wait(1)
 for _, v in pairs(game.XggXraBDqgnxkm:GetPlayers()) do
 if YEhDVrfNGlRUSH[v.Name] then
 Hop()
 break
 end
 end
 end
end)

KQyEiiaHJvvFUr:Notify({
 AFotbYvafQTmWI = _D("U2xheWVyIEh1Yg=="),
 Content = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 SubContent = _D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(_D(""))))))))))))))))))))))))))))))))),
 Duration = 5 
})
