gg.setVisible(false)

gg.alert("╭──────────────────────────────────────────╮\n│                                          │\n│       ⚡ ADIL BAJWA VIP SCRIPT ⚡        │\n│                                          │\n│     [ 100% FREE | AVOID SCAMMERS ]       │\n│                                          │\n│       Discord: @adilbajwa03              │\n╰──────────────────────────────────────────╯") 

-- ✦ ───────────────────────────────────── ✦
-- │        𝐀 𝐃 𝐈 𝐋   𝐁 𝐀 𝐉 𝐖 𝐀            │
-- │          DEVIL 👿 SCRIPT              │
-- ✦ ───────────────────────────────────── ✦

menuuuvis = 1
gg.clearResults()
gg.clearList()

-- ==========================================
-- 🔔 PREMIUM NOTIFICATIONS
-- ==========================================
function showSuccess() 
    gg.toast("✓ [ SUCCESS ] \n✦ Mod Activated Successfully") 
end

function showDisabled()
    gg.toast("⏾ [ DEACTIVATED ] \n✦ Mod Turned Off")
end

function showError(msg)
    gg.toast("⨯ [ ERROR ] \n⚠ " .. tostring(msg or "Value Not Found or Blocked"))
end

toast = {
    success = function(msg) gg.toast(msg) end,
    hint = function(msg) gg.toast(msg) end,
    error = function(msg) gg.toast(msg) end
}

--╔══════════════════╗
--║GLOBAL VARIABLES & SETUP                       
--╚═════════════════╝

fg = {}
Write = {}
fg.clean = gg.clearResults
Z = {}
ts = gg.toast
alert = gg.alert

-- Memory Flags Configuration
A = 32        -- ARM
As = 524288   -- Anonymous
B = 131072    -- BSS
Xa = 16384    -- Executable
Xs = 32768    -- Executable
Ca = 4        -- C++ Data (a)
Cb = 16       -- C++ Data (b)
Cd = 8        -- C++ Data (d)
Ch = 1        -- C++ Heap
J = 65536     -- Java
Jh = 2        -- Java Heap
O = -2080896  -- Other
Ps = 262144   -- Primary Stack
S = 64        -- Stack
V = 1048576   -- View
F = 16        -- Float Type
D = 4         -- Dword Type
E = 64        -- Qword Type
Q = 32        -- Qword Type
W = 2         -- Word Type
X = 8         -- XOR
Byte = 1      -- Byte Type

--╔════════════════════════╗
--║        CORE FUNCTIONS   ║
--╚════════════════════════╝

function setvalue(add, value, flags, dj)
    local WY = {}
    WY[1] = {}
    WY[1].address = add
    WY[1].value = value
    WY[1].flags = flags
    if dj == true then
        WY[1].freeze = true
        gg.addListItems(WY)
    else
        gg.setValues(WY)
    end
end

function Z.S(num, ty, nc, mb, qs, zd)
    gg.clearResults()
    gg.setRanges(nc)
    gg.searchNumber(num, ty, false, gg.SIGN_EQUAL, qs or 1, zd or -1)
    if mb ~= nil and mb ~= false and mb then
        gg.refineAddress(mb)
    end
    Result = gg.getResults(gg.getResultCount())
end

function Z.C(num, C, ty)
    if (Result and #Result ~= 0) then
        t = {}
        for i, v in ipairs(Result) do
            t[i] = {}
            t[i].address = v.address + C
            t[i].flags = ty
        end
        t = gg.getValues(t)
        for i, v in ipairs(t) do
            if v.value ~= num then
                Result[i] = nil
            end
        end
        local Z2 = {}
        for i, v in pairs(Result) do
            Z2[#Z2 + 1] = v
        end
        Result = Z2
    end
end

function Z.bc()
    data = {}
    if Result == nil or #Result == 0 then
        gg.toast("╔══════════════════════╗\n║ 🔍 NO VALUES FOUND 🔍 ║\n╚═════════════════════╝")
    else
        for i, v in pairs(Result) do
            data[#data + 1] = v.address
        end
        gg.loadResults(Result)
    end
    Result = nil
end
function Z.W(nn, off, ty, dj)
    if (Result) then Z.bc() end
    if #data > 0 then
        for i, v in ipairs(data) do
            local val = nn
            if val == "" then
                local t = {{address = v + off, flags = ty}}
                t = gg.getValues(t)
                val = t[1].value
            end
            setvalue(v + off, val, ty, dj or false)
        end
    end
end

function Z.A(varName, offset, baseAddr)
    if not baseAddr then
        local results = gg.getResults(9999)
        if #results == 0 then
            gg.clearResults()
            showError()
            return
        end
        baseAddr = results[1].address
    end
    
    local targetAddr = baseAddr + (offset or 0)
    
    if varName and type(varName) == "string" then
        _G[varName] = targetAddr
    end
    
    return targetAddr
end

-- ==========================================
-- FIXED HOOK PLAYER ENGINE
-- ==========================================
function hookPLAYER(q1w, w2e, e3r, r4t)
    Z.S("100.14399719238", F, Ca|O)
    
    if not Result or #Result == 0 then
        showError()
        return false
    end
    
    local off = tonumber(q1w) or 0
    for i, v in ipairs(Result) do
        local val = e3r
        
        -- THE BUG FIX: Agar Infinite Ammo ne "" (empty string) bheja hai, 
        -- toh game memory se current ammo count read karke usko freeze karega!
        if val == "" then
            local t = {{address = v.address + off, flags = w2e}}
            t = gg.getValues(t)
            val = t[1].value
        end
        
        setvalue(v.address + off, val, w2e, r4t or false)
    end
    
    gg.clearResults()
    return true
end

function doTeleport(x, y, z)
    Z.S("4575657250219098112", Q, Ca|O)
    if #Result ~= 0 then
        setvalue(Z.A(nil, 132), x, F)
        setvalue(Z.A(nil, 136), y, F)
        setvalue(Z.A(nil, 140), z, F)
        showSuccess()
    else
        showError()
    end
    gg.clearResults()
end

--╔═════════════════════════╗
--║        TOGGLE VARIABLES           ║
--╚═════════════════════════╝

-- Player Mods
gm4 = "❌"
gm9 = "❌"
gm5 = "❌"
shv222 = "❌"
mbq = "❌"
suic = "❌"
walg = "❌"
fastkil = "❌"
hjj = "❌"
whh = "❌"
graviq = "❌"
graviqq = "❌"

-- Visual Mods
chamsiwhite = "❌"
chamsired = "❌"
fovv = "❌"
ulfovq = "❌"
esplol = "❌"
invwal = "❌"

-- Car Mods
gmcarchik = "❌"
shcar = "❌"
mopsh = "❌"
nitr = "❌"
gidraa = "❌"
upmotor = "❌"
perevorot1 = "❌"
carkoles1 = "❌"

-- Weapon Mods
shshq = "❌"
sc = "❌"
fsk = "❌"
avty = "❌"
alertr = "❌"
relodgper = "❌"
relom4per = "❌"
reloakper = "❌"
relompper = "❌"
bdg = "❌"
bmka = "❌"
bkal = "❌"
bdrobq = "❌"
bmp5q = "❌"
frzsl1 = "❌"
frzsl2 = "❌"
frzsl3 = "❌"
frzsl4 = "❌"
frzsl5 = "❌"
frzsl6 = "❌"
frzsl7 = "❌"

--╔══════════════════════╗
--║    Adil AIMBOT SYSTEM        ║
--╚══════════════════════╝
-- Helper function to format toggle status (ON/OFF)
function TOG(state)
    if state then
        return " [ON]"
    else
        return " [OFF]"
    end
end

-- Table defining the new aim options (Name 'n', Value 'v', State 's')
-- Table defining the new aim options (Name 'n', Value 'v', State 's')
aim_st = {
    {n = "Ultra Legit", v = "1051999999", s = false},
    {n = "Legit",       v = "1055999999", s = false},
    {n = "Medium",      v = "1076999999", s = false},
    {n = "Ultra",       v = "1080999999", s = false},
    {n = "HvH",         v = "1089999999", s = false},
    {n = "Brutal (Safe)", v = "1092616192", s = false}, -- Float 10.0 limit test
    {n = "Godlike (Safe)",v = "1094713344", s = false}  -- Float 12.0 limit test
}

function aimnew()
    local inNewAim = true
    while inNewAim do
        gg.setVisible(false)
        local names = {}
        for i, v in ipairs(aim_st) do 
            table.insert(names, "► " .. v.n .. TOG(v.s)) 
        end
        table.insert(names, "⬅️ BACK")
        
        local r = gg.choice(names, nil, '【 🎯 NEW AIM MODELS 】')
        if r and r <= #aim_st then
            aim_st[r].s = not aim_st[r].s
            local old = "1042536202"
            
            gg.clearResults()
            if aim_st[r].s then
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
                gg.searchNumber(old, gg.TYPE_DWORD)
                if gg.getResultCount() > 0 then
                    local res = gg.getResults(10000)
                    gg.editAll(aim_st[r].v, gg.TYPE_DWORD)
                    showSuccess()
                else
                    showError("Value Not Found")
                end
            else
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
                gg.searchNumber(aim_st[r].v, gg.TYPE_DWORD)
                if gg.getResultCount() > 0 then
                    local res = gg.getResults(10000)
                    gg.editAll(old, gg.TYPE_DWORD)
                    showDisabled()
                else
                    showError("Value Not Found")
                end
            end
            gg.clearResults()
        elseif r == #aim_st + 1 then 
            break
        elseif r == nil then 
            inNewAim = false 
        end
    end
end

function aimold()
    local aims = {
        {"Ultra Legit", "1051999999", "1042536202"}, 
        {"Legit",       "1055999999", "1042536202"}, 
        {"Medium",      "1076999999", "1042536202"}, 
        {"Ultra",       "1080999999", "1042536202"}, 
        {"HvH",         "1089999999", "1042536202"},
        {"Brutal (Safe)", "1092616192", "1042536202"},
        {"Godlike (Safe)","1094713344", "1042536202"}
    }
    local names = {}
    for i, v in ipairs(aims) do 
        table.insert(names, "► " .. v[1]) 
    end
    table.insert(names, "⬅️ BACK")
    
    local s = gg.choice(names, nil, '【 🎯 OLD AIM MODELS 】')
    if s and s <= #aims then
        gg.setVisible(false)
        gg.toast("⏳ Running... To turn off, click the GG icon")
        for i = 1, 10000 do
            if gg.isVisible() then break end
            gg.clearResults()
            gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
            gg.searchNumber(aims[s][3], gg.TYPE_DWORD)
            if gg.getResultCount() > 0 then
                gg.getResults(10000)
                gg.editAll(aims[s][2], gg.TYPE_DWORD)
            end
            gg.clearResults()
            
            for j = 1, 20 do
                if gg.isVisible() then
                    gg.setVisible(false)
                    gg.clearResults()
                    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_OTHER)
                    gg.searchNumber(aims[s][2], gg.TYPE_DWORD)
                    if gg.getResultCount() > 0 then
                        gg.getResults(10000)
                        gg.editAll(aims[s][3], gg.TYPE_DWORD)
                    end
                    gg.clearResults()
                    gg.toast("⏾ Deactivated, returning to menu")
                    return aimold()
                end
                gg.sleep(200)
            end 
        end
        gg.setVisible(true)
        gg.clearResults()
    elseif s == #aims + 1 then 
        return
    end
end

function AdilAimMenu()
    local inAimMenu = true
    while inAimMenu do
        gg.setVisible(false)
        local aChoice = gg.choice({
            "► Old Aim Models",
            "► New Aim Models",
            "⬅️ RETURN TO MAIN MENU"
        }, nil, "【 🎯 AIMBOT MENU 】")
        
        if aChoice == 1 then 
            aimold()
        elseif aChoice == 2 then 
            aimnew()
        elseif aChoice == 3 then 
            break
        elseif aChoice == nil then 
            inAimMenu = false 
        end
    end
end

--╔═════════════════════════════════════╗
--║                    PLAYER MODS                                                          ║
--╚═════════════════════════════════════╝

-- ==========================================
-- Player Mod Functions
-- ==========================================
function toggleGodMode()
    local isActive = (gm4 == "✅")
    if hookPLAYER(-4, F, isActive and 100 or 505050) then
        gm4 = isActive and "❌" or "✅"
        if gm4 == "✅" then showSuccess() else showDisabled() end
    end
    gg.clearResults()
    playerMenu()
end

function toggleGodModeV2()
    local isActive = (gm9 == "✅")
    if isActive then gg.clearList() end
    if hookPLAYER(-4, F, isActive and 100 or 9999989.0, not isActive) then
        gm9 = isActive and "❌" or "✅"
        if gm9 == "✅" then showSuccess() else showDisabled() end
    end
    playerMenu()
end

function toggleArmor()
    if gm5 == "❌" then
        if hookPLAYER(4, F, 9990, true) then
            gm5 = "✅"
            showSuccess()
        end
    else
        gm5 = "❌"
        gg.clearList()
        showDisabled()
    end
    gg.clearResults()
    playerMenu()
end

function restoreHealth()
    if hookPLAYER(-4, F, 100) then showSuccess() end
    playerMenu()
end

function toggleSuicide()
    if hookPLAYER(-4, F, 0) then showSuccess() end
    playerMenu()
end

function toggleSpeed()
    local isActive = (shv222 == "✅")
    Z.S("4647714816510698455", Q, Cd|O|Ca)
    Z.W(isActive and "4489188110482223923" or "4489188112626352128", 0x18, Q)
    gg.clearResults()
    shv222 = isActive and "❌" or "✅"
    if shv222 == "✅" then showSuccess() else showDisabled() end
    playerMenu()
end

function toggleSpeedV2()
    local isActive = (mbq == "✅")
    Z.S(isActive and "4489188110498131456" or "4489188110487257088", Q, Ca|Cd|O)
    if #Result ~= 0 then
        gg.editAll(isActive and "4489188110487257088" or "4489188110498131456", Q)
        mbq = isActive and "❌" or "✅"
        if mbq == "✅" then showSuccess() else showDisabled() end
    else
        showError()
    end
    gg.clearResults()
    playerMenu()
end
-- ==========================================
-- CUSTOM SPEED HACKS (WITH USER INPUT)
-- ==========================================

function customPlayerSpeed()
    -- GG prompt popup for user input
    local p = gg.prompt(
        {"🏃 Enter Player Speed [1 to 10X]:"}, 
        {"2"}, -- Default value
        {"number"}
    )
    
    if not p then return playerMenu() end -- Agar user cancel kare toh wapas menu me
    
    local speedMultiplier = tonumber(p[1])
    
    if speedMultiplier < 1 or speedMultiplier > 10 then
        gg.toast("❌ Please enter a valid number between 1 and 10!")
        return playerMenu()
    end

    -- Yahan function name fix kar diya gaya hai (setSpeed)
    gg.setSpeed(speedMultiplier)
    gg.toast("✅ Speed set to " .. speedMultiplier .. "X")
    
    playerMenu()
end

function customCarSpeed()
    -- Car ki speed limit set karne ke liye popup
    local p = gg.prompt(
        {"🚗 Set Max Car Speed Limit (e.g., 1.5 to 10.0):"}, 
        {"2.5"}, -- Default value jo tumhari script me thi
        {"number"}
    )
    
    if not p then return carMenu() end
    
    local carSpeedVal = tonumber(p[1])
    
    -- Tumhara purana car speed memory pointer logic
    Z.S("4575243612898721792", Q, Cd|O)
    
    if #Result ~= 0 then
        Z.W(carSpeedVal, -0x8, F) -- F = Float type
        gg.clearResults()
        gg.toast("✅ Car Speed Limit set to: " .. carSpeedVal)
    else
        showError()
    end
    
    carMenu()
end
function toggleHighJump()
    local isActive = (hjj == "✅")
    Z.S("4798022456217645875", Q, Cd|O)
    Z.W(isActive and "-150" or "-0.10000000149", -0x4, F)
    gg.clearResults()

    hjj = isActive and "❌" or "✅"
    if hjj == "✅" then showSuccess() else showDisabled() end
    playerMenu()
end

-- ==========================================
-- NEW ADDED FEATURES (SIZE, TANK, AUTO-KILL)
-- ==========================================

function setPlayerSize()
    -- Prompt se poochega ki kitna bada/chota hona hai
    local p = gg.prompt(
        {"🧍 Enter Player Size (0.5 = Mini, 2.0 = Big, 5.0 = Giant):"}, 
        {"2.0"}, 
        {"number"}
    )
    if not p then return playerMenu() end
    
    local size = tonumber(p[1])
    
    -- Player Base Search (Tumhare Teleport logic se uthaya)
    Z.S("4575657250219098112", Q, Ca|O)
    if #Result ~= 0 then
        -- Scale offsets (Coordinates ke turant baad hote hain)
        setvalue(Z.A(nil, 144), size, F) -- X Scale
        setvalue(Z.A(nil, 148), size, F) -- Y Scale
        setvalue(Z.A(nil, 152), size, F) -- Z Scale
        gg.toast("✅ Player Size set to " .. size)
    else
        showError()
    end
    gg.clearResults()
    playerMenu()
end

-- Global variable Tank mode ke liye
tankmod = "❌"
-- ==========================================
-- CUSTOM TANK / BULLDOZER MODE
-- ==========================================
function toggleTankMode()
    local isActive = (tankmod == "✅")
    
    if not isActive then
        -- Jab ON kar rahe hain toh prompt aayega
        local p = gg.prompt(
            {"🚜 Enter Car Weight (Normal = 1500):\nTip: Try 2000, 2500, or 3000. Agar gaadi dhase, toh value thodi kam kar lena."}, 
            {"2500"}, 
            {"number"}
        )
        if not p then return carMenu() end
        
        local massVal = tonumber(p[1])
        
        Z.S("4812096201845506048", Q, Ca|Cd|O)
        if #Result ~= 0 then
            Z.W(massVal, 0x58, F) 
            tankmod = "✅"
            gg.toast("✅ TANK MODE ON (Weight: " .. massVal .. ")")
        else
            showError()
        end
    else
        -- Jab OFF kar rahe hain toh wapas default 1500 kar dega
        Z.S("4812096201845506048", Q, Ca|Cd|O)
        if #Result ~= 0 then
            Z.W(1500.0, 0x58, F) 
            tankmod = "❌"
            gg.toast("❌ TANK MODE OFF")
        else
            showError()
        end
    end
    
    gg.clearResults()
    carMenu()
end

function autoKillAll()
    gg.toast("⚠️ MAKE SURE 'FAST KILL' IS ON!")
    gg.sleep(1500)

    local points = {}
    -- Enemy/Markers search (Tumhare ESP/Teleport logic se)
    for _, q in ipairs({"13950255104", "5360320512"}) do
        if #points == 0 then
            Z.S(q, Q, O)
            if Result then
                for _, v in ipairs(Result) do
                    local vals = gg.getValues({
                        {address = v.address + 32, flags = F},
                        {address = v.address + 36, flags = F},
                        {address = v.address + 40, flags = F},
                        {address = v.address + 48, flags = F}
                    })
                    local x, y, z, active = vals[1].value, vals[2].value, vals[3].value, vals[4].value
                    -- Sirf valid zinda players filter karega
                    if x ~= 0 and y ~= 0 and active == 1 then
                        table.insert(points, {x, y, z})
                    end
                end
            end
        end
    end

    if #points == 0 then
        gg.toast("❌ No Enemies Found Nearby!")
        return playerMenu()
    end

    gg.toast("🔪 AUTO-KILL STARTED! Found " .. #points .. " Targets")
    
    -- Ek-ek karke sabke peeche teleport hoga (2 second delay ke sath)
    for i, target in ipairs(points) do
        -- Enemy ke Y coordinate me thoda minus kiya taaki uske theek piche spawn ho
        doTeleport(target[1], target[2] - 1.5, target[3]) 
        gg.toast("🎯 Target " .. i .. " / " .. #points)
        gg.sleep(2000) -- 2 Second rukega taaki Fast Kill target ko mar sake
    end
    
    gg.toast("✅ Auto-Kill Complete!")
    playerMenu()
end

function toggleWallhack()
    local isActive = (walg == "✅")
    Z.S(isActive and "1114767360" or "1114636288", Q, Ca|O|Cd)
    if #Result ~= 0 then
        gg.editAll(isActive and "1114636288" or "1114767360", Q)
        walg = isActive and "❌" or "✅"
        if walg == "✅" then showSuccess() else showDisabled() end
    else
        showError()
    end
    gg.clearResults()
    playerMenu()
end

-- ==========================================
-- ONE-HIT FAST KILL (UPDATED)
-- ==========================================
function toggleFastKill()
    local isActive = (fastkil == "✅")
    
    -- Weapon / Melee Base Pointer Search
    Z.S("4584664420663165927", Q, Ca|O|Cd)
    
    if #Result ~= 0 then
        -- Game engine me Damage Float offsets usually 32 (0x20) aur 36 (0x24) par hote hain
        -- Agar pehle se ON hai (isActive = true), toh normal damage 25.0 par wapas layega
        -- Agar OFF hai, toh One-Hit Kill 99999.0 damage set karega
        
        Z.W(not isActive and 99999.0 or 25.0, 32, F)
        Z.W(not isActive and 99999.0 or 25.0, 36, F)
        
        fastkil = not isActive and "✅" or "❌"
        
        if fastkil == "✅" then 
            gg.toast("✅ FAST KILL (1-HIT KO) ACTIVATED") 
        else 
            gg.toast("❌ FAST KILL DEACTIVATED") 
        end
    else
        -- Fallback: Agar memory nahi mili
        gg.toast("❌ Error: Weapon/Fist Base Not Found! Hath me weapon pakdo ya unequip karo.")
    end
    
    gg.clearResults()
    playerMenu()
end

function toggleSharpTurns()
    local isActive = (whh == "✅")
    if not isActive then gg.clearList() end
    if hookPLAYER(28, F, isActive and "7.5" or "65", not isActive) then
        whh = isActive and "❌" or "✅"
        if whh == "✅" then showSuccess() else showDisabled() end
    end
    playerMenu()
end

function flipUp()
    Z.S("4575657250219098112", Q, Ca|O)
    if #Result ~= 0 then
        local t = {}
        for i, v in ipairs(Result) do
            t[i] = {address = v.address + 140, flags = F}
        end
        t = gg.getValues(t)
        for i, v in ipairs(t) do
            v.value = v.value + 7
        end
        gg.setValues(t)
        showSuccess()
    else
        showError()
    end
    gg.clearResults()
    playerMenu()
end

function flipDown()
    Z.S("4575657250219098112", Q, Ca|O)
    if #Result ~= 0 then
        local t = {}
        for i, v in ipairs(Result) do
            t[i] = {address = v.address + 140, flags = F}
        end
        t = gg.getValues(t)
        for i, v in ipairs(t) do
            v.value = v.value - 7
        end
        gg.setValues(t)
        showSuccess()
    else
        showError()
    end
    gg.clearResults()
    playerMenu()
end

function toggleGravity()
    local isActive = (graviq == "✅")
    Z.S("-4 651 317 692 702 523 392", Q, Cd|O|Cd)
    Z.W(isActive and "-1140649361" or "-1164854368", -0x4, D)
    gg.clearResults()
    graviq = isActive and "❌" or "✅"
    if graviq == "✅" then showSuccess() else showDisabled() end
    playerMenu()
end

function toggleGravityV2()
    local isActive = (graviqq == "✅")
    Z.S("-4 651 317 692 702 523 392", Q, Cd|O|Cd)
    Z.W(isActive and "-1140649361" or "-1164859368", -0x4, D)
    gg.clearResults()
    graviqq = isActive and "❌" or "✅"
    if graviqq == "✅" then showSuccess() else showDisabled() end
    playerMenu()
end

-- ==========================================
-- Player Menu UI
-- ==========================================
function playerMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 🏃 SPEED HACK"            .. (shv222 == "✅" and " [ON]" or ""),
        "► 🏃 SPEED HACK V2"         .. (mbq == "✅" and " [ON]" or ""),
        "► 🎛️ CUSTOM SPEED (1X-10X)",  
        "► 🦍 PLAYER SIZE MODIFIER", 
        "► 🔪 AUTO-KILL ALL",        
        "► 💚 GOD MODE"             .. (gm4 == "✅" and " [ON]" or ""),
        "► 💚 GOD MODE V2"          .. (gm9 == "✅" and " [ON]" or ""),
        "► 🛡️ ARMOR PACIFIER"        .. (gm5 == "✅" and " [ON]" or ""),
        "► ❤️ RESTORE HEALTH",
        "► 💀 SUICIDE",
        "► 🧱 WALK THROUGH WALLS"    .. (walg == "✅" and " [ON]" or ""),
        "► ⬆️ FLIP UP",
        "► ⬇️ FLIP DOWN",
        "► 👊 FAST KILL (Fists)"     .. (fastkil == "✅" and " [ON]" or ""),
        "► 🦘 HIGH JUMP"             .. (hjj == "✅" and " [ON]" or ""),
        "► 🔄 SHARP TURNS"           .. (whh == "✅" and " [ON]" or ""),
        "► 🌎 GRAVITY V1"            .. (graviq == "✅" and " [ON]" or ""),
        "► 🌎 GRAVITY V2"            .. (graviqq == "✅" and " [ON]" or ""),
        "⬅️ RETURN TO MAIN MENU"
    }, nil, "【 👤 PLAYER MODS 】")
    
    if not choice or choice == 19 then 
        mainMenu()
        return 
    end
    
    if choice == 1 then toggleSpeed()
    elseif choice == 2 then toggleSpeedV2()
    elseif choice == 3 then customPlayerSpeed() 
    elseif choice == 4 then setPlayerSize() 
    elseif choice == 5 then autoKillAll() 
    elseif choice == 6 then toggleGodMode()
    elseif choice == 7 then toggleGodModeV2()
    elseif choice == 8 then toggleArmor()
    elseif choice == 9 then restoreHealth()
    elseif choice == 10 then toggleSuicide()
    elseif choice == 11 then toggleWallhack()
    elseif choice == 12 then flipUp()
    elseif choice == 13 then flipDown()
    elseif choice == 14 then toggleFastKill()
    elseif choice == 15 then toggleHighJump()
    elseif choice == 16 then toggleSharpTurns()
    elseif choice == 17 then toggleGravity()
    elseif choice == 18 then toggleGravityV2()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                      CAR MODS                                      ║
--╚═══════════════════════════════════════════════════════════════════╝

function toggleCarGodMode()
    local isActive = (gmcarchik == "✅")
    
    -- Agar ON tha aur ab OFF kar rahe hain, toh frozen memory list ko clear karna hoga
    if isActive then gg.clearList() end 
    
    Z.S("4812096201845506048", Q, Ca|Cd|O)
    
    if #Result ~= 0 then
        -- Z.W function me 4th parameter "not isActive" bheja gaya hai value freeze karne ke liye
        Z.W(isActive and 1000.0 or 999999.0, 0x5DC, F, not isActive)
        
        gmcarchik = isActive and "❌" or "✅"
        if gmcarchik == "✅" then 
            gg.toast("✅ CAR GOD MODE ACTIVATED") 
        else 
            gg.toast("❌ CAR GOD MODE DEACTIVATED") 
        end
    else
        showError()
    end
    
    gg.clearResults()
    carMenu()
end

function restoreCarHealth()
    Z.S("4812096201845506048", Q, Ca|Cd|O)
    Z.W(1000, 0x5DC, F)
    gg.clearResults()
    showSuccess()
    carMenu()
end

function breakCar()
    Z.S("4812096201845506048", Q, Ca|Cd|O)
    Z.W(20, 0x5DC, F)
    gg.clearResults()
    showSuccess()
    carMenu()
end

function toggleCarSpeed()
    local oldState = shcar == "✅"
    Z.S("4575243612898721792", Q, Cd|O)
    Z.W(oldState and 2.5 or 0.00001, -0x8, F)
    gg.clearResults()
    shcar = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    carMenu()
end

function toggleNitro()
    local oldState = nitr == "✅"
    gg.clearList()
    Z.S("-4647714812178464768", Q, Cd|O|Ca)
    Z.W(oldState and 24772608 or 24772608, 0x2C, D, oldState)
    Z.W(oldState and -2145353216 or -2145353216, 0x634, D, oldState)
    if not oldState then gg.clearList() end
    gg.clearResults()
    nitr = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    carMenu()
end

function toggleHydraulics()
    local oldState = gidraa == "✅"
    Z.S("-4647714812178464768", Q, Cd|O|Ca)
    Z.W(oldState and 655361 or -16777215, 0x160, D, false)
    gg.clearResults()
    gidraa = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    carMenu()
end

function toggleMopedSpeed()
    local oldState = mopsh == "✅"
    Z.S(oldState and "4539628425391341620" or "4539628427538825268", Q, Ca|O|Cd)
    gg.editAll(oldState and "4539628427538825268" or "4539628425391341620", Q)
    gg.clearResults()
    mopsh = oldState and "✅" or "❌"
    if oldState then 
        toast.hint("╔══════════════════════════════════╗\n║   🛵 PRESS BRAKE TO ACCELERATE 🛵  ║\n╚══════════════════════════════════╝")
        showSuccess() 
    else 
        showDisabled() 
    end
    carMenu()
end

function toggleEngineBoost()
    local oldState = upmotor == "✅"
    Z.S("4812096201845506048", Q, Ca|O|Cd)
    Z.W(oldState and -0.00179999997 or 0.0013, 0x64, F)
    gg.clearResults()
    upmotor = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    carMenu()
end

-- ==========================================
-- 🚗 ULTIMATE CAR TELEPORT SYSTEM (3 METHODS)
-- ==========================================

myCarAddress = nil -- Global variable car ka address save karne ke liye

-- 🟢 METHOD 1: Aage-Peeche (Movement Based)
function setupCarMethod1()
    gg.toast("Setup 1 running: Stop car, then move little, then stop.")
    gg.sleep(600)

    local p1x, p1y, p1z = getCurrentCoords()
    if not p1x then
        gg.toast("Error: Could not read start coords.")
        return carTeleportMenu()
    end

    gg.alert("Step 1 done.\nNow move car slightly (2-3 sec) and stop, then press OK.")

    local p2x, p2y, p2z = getCurrentCoords()
    if not p2x then
        gg.toast("Error: Could not read moved coords.")
        return carTeleportMenu()
    end

    local dx = p2x - p1x
    local dy = p2y - p1y
    local dz = p2z - p1z
    local moved = (math.abs(dx) + math.abs(dy) + math.abs(dz)) > 0.20

    if not moved then
        gg.toast("Setup 1 fail: Movement not detected. Move car more and try again.")
        return carTeleportMenu()
    end

    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_OTHER)

    -- Search around new X coordinate after movement
    gg.searchNumber(string.format("%.3f~%.3f", p2x - 5.0, p2x + 5.0), gg.TYPE_FLOAT)

    local count = gg.getResultCount()
    if count == 0 then
        gg.clearResults()
        gg.toast("Setup 1 fail: No candidates found.")
        return carTeleportMenu()
    end

    local candidates = gg.getResults(math.min(count, 800))
    local bestAddr = nil
    local bestScore = 99999999

    for _, v in ipairs(candidates) do
        local addr = v.address
        local vals = gg.getValues({
            {address = addr, flags = F},           -- X
            {address = addr + 4, flags = F},       -- Y
            {address = addr + 8, flags = F},       -- Z
            {address = addr + 0x58, flags = F},    -- Mass
            {address = addr + 0x5DC, flags = F}    -- Vehicle Health
        })

        local x = vals[1].value
        local y = vals[2].value
        local z = vals[3].value
        local mass = vals[4].value
        local hp = vals[5].value

        local validPos = (x > -5000 and x < 5000 and y > -5000 and y < 5000 and z > -200 and z < 2000)
        local validMass = (mass > 80 and mass < 20000)
        local validHp = (hp > 10 and hp < 100000000)

        if validPos and validMass and validHp then
            local distNow = math.abs(x - p2x) + math.abs(y - p2y) + math.abs(z - p2z)

            -- Check if candidate also matches old position after reversing movement vector
            local backX = x - dx
            local backY = y - dy
            local backZ = z - dz
            local distBack = math.abs(backX - p1x) + math.abs(backY - p1y) + math.abs(backZ - p1z)

            local score = (distNow * 2.0) + distBack
            if score < bestScore then
                bestScore = score
                bestAddr = addr
            end
        end
    end

    gg.clearResults()

    if not bestAddr then
        gg.toast("Setup 1 fail: Correct car not found.")
        return carTeleportMenu()
    end

    -- Final verification: locked address should be near current player/car position
    gg.sleep(120)
    local verify = gg.getValues({
        {address = bestAddr, flags = F},
        {address = bestAddr + 4, flags = F},
        {address = bestAddr + 8, flags = F}
    })

    local vx, vy, vz = verify[1].value, verify[2].value, verify[3].value
    local px, py, pz = getCurrentCoords()
    if not px then
        gg.toast("Setup 1 fail: Verification read failed.")
        return carTeleportMenu()
    end

    local verifyDist = math.abs(vx - px) + math.abs(vy - py) + math.abs(vz - pz)
    if verifyDist > 20 then
        gg.toast("Setup 1 fail: Wrong lock. Sit in car and retry.")
        return carTeleportMenu()
    end

    myCarAddress = bestAddr
    gg.toast("Setup 1 success: Car locked with verification.")
    return carTeleportMenu()
end

-- 🟡 METHOD 2: Specific Location (Hardcoded)
function setupCarMethod2()
    local choice = gg.choice({
        "🏦 Arzamas Bank (Bahar park karo)",
        "🎰 Casino (Main gate ke paas)",
        "🔙 BACK"
    }, nil, "Gaadi ko inme se ek jagah khadi karo aur select karo:")
    
    if not choice or choice == 3 then return carTeleportMenu() end
    
    local targetX, targetY
    if choice == 1 then targetX, targetY = -143, 593 end -- Arzamas Bank Coords
    if choice == 2 then targetX, targetY = 327, 2762 end -- Casino Coords
    
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
    gg.toast("🔍 Searching Location...")
    gg.searchNumber(tostring(targetX - 10) .. "~" .. tostring(targetX + 10), gg.TYPE_FLOAT)
    
    if gg.getResultCount() > 0 then
        local res = gg.getResults(10)
        myCarAddress = res[1].address
        gg.toast("✅ SETUP 2 SUCCESS! Car Locked.")
    else
        gg.toast("❌ SETUP 2 FAIL: Tum sahi jagah par nahi ho.")
    end
    gg.clearResults()
    carTeleportMenu()
end

-- 🔵 METHOD 3: Smart Sync (Player Coords)
function setupCarMethod3()
    gg.toast("Smart setup running... stay seated in your car.")
    gg.sleep(300)

    local p1x, p1y, p1z = getCurrentCoords()
    if not p1x then
        gg.toast("Error: Could not read player coords.")
        return carTeleportMenu()
    end

    gg.sleep(250)
    local p2x, p2y, p2z = getCurrentCoords()
    if not p2x then
        gg.toast("Error: Could not refresh player coords.")
        return carTeleportMenu()
    end

    local dx = p2x - p1x
    local dy = p2y - p1y
    local dz = p2z - p1z
    local moved = (math.abs(dx) + math.abs(dy) + math.abs(dz)) > 0.15

    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_OTHER)

    -- Slightly wider search window for stability
    gg.searchNumber(string.format("%.3f~%.3f", p2x - 4.0, p2x + 4.0), gg.TYPE_FLOAT)

    local count = gg.getResultCount()
    if count == 0 then
        gg.clearResults()
        gg.toast("Setup 3 fail: No nearby candidates found.")
        return carTeleportMenu()
    end

    local candidates = gg.getResults(math.min(count, 600))
    local bestAddr = nil
    local bestScore = 99999999

    for _, v in ipairs(candidates) do
        local addr = v.address
        local vals = gg.getValues({
            {address = addr, flags = F},           -- X
            {address = addr + 4, flags = F},       -- Y
            {address = addr + 8, flags = F},       -- Z
            {address = addr + 0x58, flags = F},    -- Mass
            {address = addr + 0x5DC, flags = F}    -- Vehicle Health
        })

        local x = vals[1].value
        local y = vals[2].value
        local z = vals[3].value
        local mass = vals[4].value
        local hp = vals[5].value

        -- Basic sanity filters
        local validPos = (x > -5000 and x < 5000 and y > -5000 and y < 5000 and z > -200 and z < 2000)
        local validMass = (mass > 80 and mass < 20000)
        local validHp = (hp > 10 and hp < 100000000)

        if validPos and validMass and validHp then
            local distNow = math.abs(x - p2x) + math.abs(y - p2y) + math.abs(z - p2z)
            local moveScore = 0

            -- If player moved a little, good car candidates should follow same movement
            if moved then
                local backX = x - dx
                local backY = y - dy
                local backZ = z - dz
                moveScore = math.abs(backX - p1x) + math.abs(backY - p1y) + math.abs(backZ - p1z)
            end

            local score = (distNow * 2.0) + moveScore
            if score < bestScore then
                bestScore = score
                bestAddr = addr
            end
        end
    end

    gg.clearResults()

    if not bestAddr then
        gg.toast("Setup 3 fail: Could not lock correct car.")
        return carTeleportMenu()
    end

    -- Final verification: locked address should still be near player
    gg.sleep(120)
    local verify = gg.getValues({
        {address = bestAddr, flags = F},
        {address = bestAddr + 4, flags = F},
        {address = bestAddr + 8, flags = F}
    })

    local vx, vy, vz = verify[1].value, verify[2].value, verify[3].value
    local px, py, pz = getCurrentCoords()
    if not px then
        gg.toast("Setup 3 fail: Verification read failed.")
        return carTeleportMenu()
    end

    local verifyDist = math.abs(vx - px) + math.abs(vy - py) + math.abs(vz - pz)
    if verifyDist > 20 then
        gg.toast("Setup 3 fail: Wrong vehicle lock. Try again while seated.")
        return carTeleportMenu()
    end

    myCarAddress = bestAddr
    gg.toast("Setup 3 success: Car locked with verification.")
    return carTeleportMenu()
end

-- ⚡ THE EXECUTOR (Teleport to Marker)
-- Helpers for car teleport verification
local function getCarCoords(addr)
    local v = gg.getValues({
        {address = addr, flags = F},
        {address = addr + 4, flags = F},
        {address = addr + 8, flags = F}
    })
    return v[1].value, v[2].value, v[3].value
end

local function near(a, b, tol)
    return math.abs(a - b) <= tol
end

function executeCarTeleport()
    if not myCarAddress then
        gg.toast("Error: Car not locked. Run setup first.")
        return carTeleportMenu()
    end

    -- Validate locked car address first
    local cx, cy, cz = getCarCoords(myCarAddress)
    if not cx or (cx == 0 and cy == 0 and cz == 0) then
        gg.toast("Error: Saved car address is invalid. Run setup again.")
        return carTeleportMenu()
    end

    -- Find marker
    local points = {}
    for _, q in ipairs({"13950255104", "5360320512"}) do
        if #points == 0 then
            Z.S(q, Q, O)
            if Result then
                for _, v in ipairs(Result) do
                    local vals = gg.getValues({
                        {address = v.address + 32, flags = F},
                        {address = v.address + 36, flags = F},
                        {address = v.address + 40, flags = F},
                        {address = v.address + 48, flags = F}
                    })
                    local x, y, z, active = vals[1].value, vals[2].value, vals[3].value, vals[4].value
                    if x ~= 0 and y ~= 0 and x > -3000 and x < 3000 and y > -3000 and y < 3000 and active == 1 then
                        table.insert(points, {x, y, z})
                    end
                end
            end
        end
    end
    gg.clearResults()

    if #points == 0 then
        gg.toast("Error: Marker not found.")
        return carTeleportMenu()
    end

    local tx = points[1][1]
    local ty = points[1][2]
    local tz = points[1][3] + 2.0

    gg.toast("Teleporting car...")
    gg.clearList()

    -- Multi-write + freeze for better server sync
    local success = false
    for attempt = 1, 8 do
        setvalue(myCarAddress, tx, F, true)
        setvalue(myCarAddress + 4, ty, F, true)
        setvalue(myCarAddress + 8, tz, F, true)

        gg.sleep(120)

        local vx, vy, vz = getCarCoords(myCarAddress)
        if near(vx, tx, 2.5) and near(vy, ty, 2.5) and near(vz, tz, 4.0) then
            success = true
            break
        end
    end

    gg.clearList()

    if success then
        gg.toast("Success: Car teleported.")
        return tpMenu()
    else
        gg.toast("Failed: Car not teleported. Re-run setup while sitting in car.")
        return carTeleportMenu()
    end
end

-- 📱 NAYA MENU CAR TELEPORT KE LIYe

function launchToSpace()
    Z.S("-0.00800000038", F, Cd|Ca|O)
    if #Result > 0 then
        gg.editAll("2.5", F)
        gg.sleep(100)
        gg.editAll("-0.00800000038", F)
        gg.clearResults()
        showSuccess()
    end
    carMenu()
end

function launchUpwards()
    Z.S("-0.00800000038", F, Cd|O|Ca)
    gg.editAll("1.0", F)
    gg.setVisible(false)
    gg.sleep(100)
    gg.editAll("-0.00800000038", F)
    gg.clearResults()
    showSuccess()
    carMenu()
end

-- ==========================================
-- CAR TELEPORT SYSTEM
-- ==========================================

function carTeleportByMarker()
    gg.toast("⚠️ Gaadi me baith jao...")
    gg.sleep(1000)

    local points = {}
    -- Same marker search logic jo tumhare player teleport me hai
    for _, q in ipairs({"13950255104", "5360320512"}) do
        if #points == 0 then
            Z.S(q, Q, O)
            if Result then
                for _, v in ipairs(Result) do
                    local vals = gg.getValues({
                        {address = v.address + 32, flags = F},
                        {address = v.address + 36, flags = F},
                        {address = v.address + 40, flags = F},
                        {address = v.address + 48, flags = F}
                    })
                    local x, y, z, active = vals[1].value, vals[2].value, vals[3].value, vals[4].value
                    -- Marker valid check
                    if x ~= 0 and y ~= 0 and x > -3000 and x < 3000 and y > -3000 and y < 3000 and active == 1 then
                        table.insert(points, {x, y, z})
                    end
                end
            end
        end
    end

    if #points == 0 then
        gg.toast("❌ Map par koi marker nahi mila!")
        gg.clearResults()
        return tpMenu()
    end

    local target = points[1] -- First marker uthayega
    
    -- Car ka Base Pointer dhund rahe hain (Tumhari script se liya gaya pointer)
    Z.S("4812096201845506048", Q, Ca|Cd|O)
    
    if #Result ~= 0 then
        local carAddr = Result[1].address
        
        -- Car ke X, Y, Z offsets par marker ki location likh rahe hain
        -- Note: Z-axis me +2.0 add kiya hai taaki gaadi zameen ke andar na dhas jaye
        setvalue(carAddr + 132, target[1], F)
        setvalue(carAddr + 136, target[2], F)
        setvalue(carAddr + 140, 50.0, F) -- Hawa me teleport hoga (Safe drop)
        
        gg.toast("✅ Car Teleported to Marker!")
    else
        gg.toast("❌ Car nahi mili! Kya tum gaadi me baithe ho?")
    end
    
    gg.clearResults()
    tpMenu()
end

function carLogic(state_var, is_on)
    Z.S("4812096201845506048", Q, Ca|O|Cd)
    if is_on then
        Z.W("0", 0x1C, D, true)
        Z.W("0", 0x20, D, true)
        showSuccess()
    else
        Z.W("861939648", 0x1C, D, false)
        Z.W("-1315709440", 0x20, D, false)
        showDisabled()
    end
    gg.clearResults()
    carMenu()
end

function toggleOnWheels()
    carkoles1 = (carkoles1 == "✅") and "❌" or "✅"
    if carkoles1 == "✅" then gg.clearList() end
    carLogic(carkoles1, carkoles1 == "✅")
end

function toggleAntiFlip()
    perevorot1 = (perevorot1 == "✅") and "❌" or "✅"
    if perevorot1 == "✅" then gg.clearList() end
    carLogic(perevorot1, perevorot1 == "✅")
end

function carMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 💚 CAR GOD MODE"            .. (gmcarchik == "✅" and " [ON]" or ""),
        "► 🔧 RESTORE CAR HEALTH",
        "► 💥 BREAK CAR",
        "► 💨 NITRO"                   .. (nitr == "✅" and " [ON]" or ""),
        "► 🔧 HYDRAULICS"              .. (gidraa == "✅" and " [ON]" or ""),
        "► ⚡ SPEED HACK"              .. (shcar == "✅" and " [ON]" or ""),
        "► 🎚️ SET CAR SPEED LIMIT",
        "► 🚜 TANK / BULLDOZER MODE"   .. (tankmod == "✅" and " [ON]" or ""),
        "► 🛵 MOPED SPEED"             .. (mopsh == "✅" and " [ON]" or ""),
        "► 🚀 LAUNCH TO SPACE",
        "► ⬆️ LAUNCH UPWARDS",
        "► ⚙️ ENGINE BOOST"            .. (upmotor == "✅" and " [ON]" or ""),
        "► 🔄 ANTI FLIP"               .. (perevorot1 == "✅" and " [ON]" or ""),
        "► 🫸 PUT ON WHEELS"           .. (carkoles1 == "✅" and " [ON]" or ""),
        "⬅️ RETURN TO MAIN MENU"
    }, nil, "【 🚗 CAR MODS 】")
    
    if not choice or choice == 15 then 
        mainMenu() 
        return 
    end
    
    if choice == 1 then toggleCarGodMode()
    elseif choice == 2 then restoreCarHealth()
    elseif choice == 3 then breakCar()
    elseif choice == 4 then toggleNitro()
    elseif choice == 5 then toggleHydraulics()
    elseif choice == 6 then toggleCarSpeed()
    elseif choice == 7 then customCarSpeed() 
    elseif choice == 8 then toggleTankMode() 
    elseif choice == 9 then toggleMopedSpeed()
    elseif choice == 10 then launchToSpace()
    elseif choice == 11 then launchUpwards()
    elseif choice == 12 then toggleEngineBoost()
    elseif choice == 13 then toggleAntiFlip()
    elseif choice == 14 then toggleOnWheels()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    VISUAL MODS                                     ║
--╚═══════════════════════════════════════════════════════════════════╝

function toggleWhiteChams()
    local oldState = chamsiwhite == "✅"
    Z.S("1132462073", Q, Cd|O)
    Z.W(oldState and 1.999111188 or 0.00392156886, -4, F)
    gg.clearResults()
    chamsiwhite = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    visualMenu()
end

function toggleRedChams()
    local oldState = chamsired == "✅"
    Z.S("1132462073", Q, Cd|O)
    Z.W(oldState and -1.999111188 or 0.00392156886, -4, F)
    gg.clearResults()
    chamsired = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    visualMenu()
end

function toggleFOV()
    local oldState = fovv == "✅"
    Z.S("4252262742350898174", Q, Cd|O)
    Z.W(oldState and "90" or "70", 0xC, F)
    gg.clearResults()
    fovv = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    visualMenu()
end

function toggleUltraFOV()
    local oldState = ulfovq == "✅"
    Z.S("4252262742350898174", Q, Cd|O)
    Z.W(oldState and "110" or "70", 0xC, F)
    gg.clearResults()
    ulfovq = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    visualMenu()
end

function toggleESP()
    local oldState = esplol == "✅"
    Z.S("5638878673340727297", Q, A|O)
    Z.W(oldState and "199.90909090909" or "30.0101010101", -60, F)
    Z.W(oldState and "199.90909090909" or "30.0101010101", -56, F)
    gg.clearResults()
    esplol = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    visualMenu()
end

function toggleInvisibleWalls()
    local oldState = invwal == "✅"
    Z.S("77190601328179", Q, Xa|O|Cd)
    Z.W(oldState and -4.99384990408 or 0.90375937, 0x14, F)
    gg.clearResults()
    invwal = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    visualMenu()
end

function changeNickname()
    local current = gg.prompt({"📝 ENTER YOUR CURRENT NICKNAME:"}, {"Nickname"}, {"text"})
    if not current then return visualMenu() end
    local new = gg.prompt({"✨ ENTER YOUR NEW NICKNAME:"}, {"NewNick"}, {"text"})
    if not new then return visualMenu() end
    gg.clearResults()
    gg.setRanges(Jh|A)
    gg.searchNumber(":" .. current[1], Byte)
    if gg.getResultCount() > 0 then
        gg.getResults(99999)
        gg.editAll(":" .. new[1], Byte)
        showSuccess()
    else
        showError()
    end
    gg.clearResults()
    visualMenu()
end

function changeLogin()
    local current = gg.prompt({"📝 ENTER YOUR CURRENT LOGIN:"}, {"Login"}, {"text"})
    if not current then return visualMenu() end
    local new = gg.prompt({"✨ ENTER YOUR NEW LOGIN:"}, {"NewLogin"}, {"text"})
    if not new then return visualMenu() end
    gg.clearResults()
    gg.setRanges(Jh|A)
    gg.searchNumber(":" .. current[1], Byte)
    if gg.getResultCount() > 0 then
        gg.getResults(99999)
        gg.editAll(":" .. new[1], Byte)
        showSuccess()
    else
        showError()
    end
    gg.clearResults()
    visualMenu()
end

function visualMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 👁️ ESP ON NAMES"         .. (esplol == "✅" and " [ON]" or ""),
        "► 🤍 WHITE CHAMS"          .. (chamsiwhite == "✅" and " [ON]" or ""),
        "► ❤️ RED CHAMS"            .. (chamsired == "✅" and " [ON]" or ""),
        "► 👓 WIDE FOV"             .. (fovv == "✅" and " [ON]" or ""),
        "► 🔭 ULTRA WIDE FOV"       .. (ulfovq == "✅" and " [ON]" or ""),
        "► 🔤 CHANGE LOGIN",
        "► ✏️ CHANGE NICKNAME",
        "► 👻 INVISIBLE WALLS"      .. (invwal == "✅" and " [ON]" or ""),
        "⬅️ RETURN TO MAIN MENU"
    }, nil, "【 👁️ VISUAL MODS 】")
    
    if not choice or choice == 9 then 
        mainMenu() 
        return 
    end
    
    if choice == 1 then toggleESP()
    elseif choice == 2 then toggleWhiteChams()
    elseif choice == 3 then toggleRedChams()
    elseif choice == 4 then toggleFOV()
    elseif choice == 5 then toggleUltraFOV()
    elseif choice == 6 then changeLogin()
    elseif choice == 7 then changeNickname()
    elseif choice == 8 then toggleInvisibleWalls()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    WEAPON MODS                                     ║
--╚═══════════════════════════════════════════════════════════════════╝

function setFireRate()
    local p = gg.prompt({"⚡ SELECT FIRE RATE [0.3 - 0.9]:"}, nil, {"number"})
    if not p then return gunMenu() end
    
    Z.S("4584664420663165927", Q, Ca|O|Cd)
    if #Result > 0 then
        local offsets = {16, 28, 240, 252}
        for _, o in ipairs(offsets) do
            Z.W(p[1], o, F)
        end
        showSuccess()
    else
        showError()
    end
    fg.clean()
    gunMenu()
end

function toggleScopeSpeed()
    local oldState = shshq == "✅"
    if not oldState then
        local p = gg.prompt({"🎯 SELECT SCOPE SPEED [1-100]:"}, nil, {"number"})
        if not p then return gunMenu() end
        Z.S("4584664420663165927", Q, Ca|O|Cd)
        Z.W(p[1], 8, F)
        Z.W(p[1], 232, F)
        shshq = "✅"
        showSuccess()
    else
        Z.S("4584664420663165927", Q, Ca|O|Cd)
        Z.W(1.2, 8, F)
        Z.W(1.2, 232, F)
        shshq = "❌"
        showDisabled()
    end
    fg.clean()
    gunMenu()
end

function toggleNoSpread()
    local oldState = sc == "✅"
    local on = "1120403456"
    local off = "1119748096"
    Z.S(oldState and on or off, D, Ca|O|Cd)
    if #Result ~= 0 then
        gg.editAll(oldState and off or on, D)
        sc = oldState and "❌" or "✅"
        if oldState then showDisabled() else showSuccess() end
    else
        showError()
    end
    gg.clearResults()
    gunMenu()
end

function toggleFarmSkills()
    local oldState = fsk == "✅"
    local on = "4489188110487257088"
    local off = "4489188110535131456"
    Z.S(oldState and on or off, Q, Ca|O|Cd)
    if #Result ~= 0 then
        gg.editAll(oldState and off or on, Q)
        fsk = oldState and "❌" or "✅"
        if oldState then showDisabled() else showSuccess() end
    else
        showError()
    end
    gg.clearResults()
    gunMenu()
end

function toggleAssist()
    local oldState = avty == "✅"
    local on = "4489188110487257088"
    local off = "4489188110489300000"
    Z.S(oldState and on or off, Q, Ca|O|Cd)
    if #Result ~= 0 then
        gg.editAll(oldState and off or on, Q)
        avty = oldState and "❌" or "✅"
        if oldState then showDisabled() else showSuccess() end
    else
        showError()
    end
    gg.clearResults()
    gunMenu()
end

function toggleFireRateSpeed()
    local oldState = alertr == "✅"
    local on = "4489188110487257088"
    local off = "4489188110516131456"
    Z.S(oldState and on or off, Q, Ca|O|Cd)
    if #Result ~= 0 then
        gg.editAll(oldState and off or on, Q)
        alertr = oldState and "❌" or "✅"
        if oldState then showDisabled() else showSuccess() end
    else
        showError()
    end
    gg.clearResults()
    gunMenu()
end

function clearSlots()
    if hookPLAYER("+192", D, 0, false) then
        hookPLAYER("+256", D, 0, false)
        hookPLAYER("+288", D, 0, false)
        hookPLAYER("+224", D, 0, false)
        hookPLAYER("+320", D, 0, false)
        hookPLAYER("+352", D, 0, false)
        showSuccess()
    end
    gunMenu()
end

function toggleAntiReload(varName, offset, value)
    local oldState = _G[varName] == "✅"
    if not oldState then
        gg.clearList()
        if hookPLAYER(offset, D, value, true) then
            _G[varName] = "✅"
            showSuccess()
        end
    else
        _G[varName] = "❌"
        gg.clearList()
        showDisabled()
    end
    gunMenu()
end

function toggleInfiniteAmmo(varName, offset)
    local oldState = _G[varName] == "✅"
    if not oldState then
        gg.clearList()
        if hookPLAYER(offset, D, "", true) then
            _G[varName] = "✅"
            showSuccess()
        end
    else
        _G[varName] = "❌"
        gg.clearList()
        showDisabled()
    end
    gunMenu()
end

function toggleFreezeSlot(varName, offset1, value, offset2)
    local oldState = _G[varName] == "✅"
    gg.clearList()
    if not oldState then
        if hookPLAYER(offset1, D, value, true) and hookPLAYER(offset2, D, "", true) then
            _G[varName] = "✅"
            showSuccess()
        end
    else
        _G[varName] = "❌"
        gg.clearList()
        showDisabled()
    end
    gg.clearResults()
    gunMenu()
end

function giveWeapon(offset1, weaponID, offset2)
    if not hookPLAYER(offset1, D, weaponID, false) then
        gg.clearResults()
        return gunMenu()
    end
    local ammoCount = gg.prompt({"🔫 ENTER AMMO COUNT [1-9900]:"}, nil, {"number"})
    if not ammoCount then return gunMenu() end
    if not hookPLAYER(offset2, D, ammoCount[1], false) then
        gg.clearResults()
        return gunMenu()
    end
    showSuccess()
    gunMenu()
end

function giveCustomWeapon()
    local weaponID = gg.prompt({"🔫 ENTER WEAPON ID [1-46]:"}, nil, {"number"})
    if not weaponID then return gunMenu() end
    if not hookPLAYER("+192", D, weaponID[1], false) then
        gg.clearResults()
        return gunMenu()
    end
    local ammoCount = gg.prompt({"📦 ENTER AMMO COUNT [1-9900]:"}, nil, {"number"})
    if not ammoCount then return gunMenu() end
    if not hookPLAYER("+204", D, ammoCount[1], false) then
        gg.clearResults()
        return gunMenu()
    end
    showSuccess()
    gunMenu()
end

function showWeaponIDs()
    gg.alert("╔══════════════════════════════════════════════════╗\n║                    WEAPON IDs - Adil                  ║\n╠══════════════════════════════════════════════════════╣\n║  1-Knife   2-Pistol   3-Deagle   4-M4   5-AK47        ║\n║  6-MP5     7-Shotgun  8-Sniper  9-RPG   10-Minigun     ║\n╚══════════════════════════════════════════════════════╝")
    gunMenu()
end

function giveAmmo(offset)
    local ammoCount = gg.prompt({"📦 ENTER AMMO COUNT [1-9900]:"}, nil, {"number"})
    if not ammoCount then return gunMenu() end
    if hookPLAYER(offset, D, ammoCount[1], false) then
        showSuccess()
    end
    gunMenu()
end

function antiReloadMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 🔫 DEAGLE"  .. (relodgper == "✅" and " [ON]" or ""),
        "► 🔫 M4"      .. (relom4per == "✅" and " [ON]" or ""),
        "► 🔫 AK-47"   .. (reloakper == "✅" and " [ON]" or ""),
        "► 🔫 MP5"     .. (relompper == "✅" and " [ON]" or ""),
        "⬅️ BACK"
    }, nil, "【 🔄 ANTI RELOAD 】")
    
    if not choice or choice == 5 then return gunMenu() end
    if choice == 1 then toggleAntiReload("relodgper", "+200", 22)
    elseif choice == 2 then toggleAntiReload("relom4per", "+296", 50)
    elseif choice == 3 then toggleAntiReload("reloakper", "+296", 50)
    elseif choice == 4 then toggleAntiReload("relompper", "+264", 50)
    end
    menuuuvis = -1
end

function infiniteAmmoMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 🔫 DEAGLE"   .. (bdg == "✅" and " [ON]" or ""),
        "► 🔫 M4"       .. (bmka == "✅" and " [ON]" or ""),
        "► 🔫 AK-47"    .. (bkal == "✅" and " [ON]" or ""),
        "► 🔫 SHOTGUN"  .. (bdrobq == "✅" and " [ON]" or ""),
        "► 🔫 MP5"      .. (bmp5q == "✅" and " [ON]" or ""),
        "⬅️ BACK"
    }, nil, "【 ♾️ INFINITE AMMO 】")
    
    if not choice or choice == 6 then return gunMenu() end
    if choice == 1 then toggleInfiniteAmmo("bdg", "+204")
    elseif choice == 2 then toggleInfiniteAmmo("bmka", "+300")
    elseif choice == 3 then toggleInfiniteAmmo("bkal", "+300")
    elseif choice == 4 then toggleInfiniteAmmo("bdrobq", "+236")
    elseif choice == 5 then toggleInfiniteAmmo("bmp5q", "+268")
    end
    menuuuvis = -1
end

function freezeSlotsMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 🔫 DEAGLE"   .. (frzsl1 == "✅" and " [ON]" or ""),
        "► 🔫 GLOCK"    .. (frzsl2 == "✅" and " [ON]" or ""),
        "► 🔫 M4"       .. (frzsl3 == "✅" and " [ON]" or ""),
        "► 🔫 AK-47"    .. (frzsl4 == "✅" and " [ON]" or ""),
        "► 🔫 MP5"      .. (frzsl5 == "✅" and " [ON]" or ""),
        "► 🔫 SNIPER"   .. (frzsl6 == "✅" and " [ON]" or ""),
        "► 🔫 SHOTGUN"  .. (frzsl7 == "✅" and " [ON]" or ""),
        "⬅️ BACK"
    }, nil, "【 ❄️ FREEZE SLOTS 】")
    
    if not choice or choice == 8 then return gunMenu() end
    if choice == 1 then toggleFreezeSlot("frzsl1", "+192", 24, "+204")
    elseif choice == 2 then toggleFreezeSlot("frzsl2", "+192", 22, "+204")
    elseif choice == 3 then toggleFreezeSlot("frzsl3", "+288", 31, "+300")
    elseif choice == 4 then toggleFreezeSlot("frzsl4", "+288", 30, "+300")
    elseif choice == 5 then toggleFreezeSlot("frzsl5", "+256", 29, "+268")
    elseif choice == 6 then toggleFreezeSlot("frzsl6", "+320", 34, "+332")
    elseif choice == 7 then toggleFreezeSlot("frzsl7", "+224", 25, "+236")
    end
    menuuuvis = -1
end

function giveWeaponMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 🔫 DEAGLE", "► 🔫 M4", "► 🔫 AK-47", "► 🔫 SHOTGUN", "► 🔫 MP5", 
        "► 🔫 GLOCK", "► 🔫 SNIPER (No Scope)", "► 🔫 SNIPER (Scope)", 
        "► 🔫 MINIGUN", "► 🔫 RPG", "► 🔫 RPG AUTO", "► 🔫 OTHER WEAPONS", 
        "► ℹ️ WEAPON IDs", "⬅️ BACK"
    }, nil, "【 🔫 GIVE WEAPON 】")
    
    if not choice or choice == 14 then return gunMenu() end
    if choice == 1 then giveWeapon("+192", 24, "+204")
    elseif choice == 2 then giveWeapon("+288", 31, "+300")
    elseif choice == 3 then giveWeapon("+288", 30, "+300")
    elseif choice == 4 then giveWeapon("+224", 25, "+236")
    elseif choice == 5 then giveWeapon("+256", 29, "+268")
    elseif choice == 6 then giveWeapon("+192", 22, "+204")
    elseif choice == 7 then giveWeapon("+320", 33, "+332")
    elseif choice == 8 then giveWeapon("+320", 34, "+332")
    elseif choice == 9 then giveWeapon("+352", 38, "+364")
    elseif choice == 10 then giveWeapon("+352", 35, "+364")
    elseif choice == 11 then giveWeapon("+352", 36, "+364")
    elseif choice == 12 then giveCustomWeapon()
    elseif choice == 13 then showWeaponIDs()
    end
    menuuuvis = -1
end

function giveAmmoMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 🔫 DEAGLE", "► 🔫 GLOCK", "► 🔫 M4", "► 🔫 AK-47", 
        "► 🔫 MP5", "► 🔫 SNIPER", "► 🔫 SHOTGUN", "⬅️ BACK"
    }, nil, "【 📦 GIVE AMMO 】")
    
    if not choice or choice == 8 then return gunMenu() end
    if choice == 1 then giveAmmo("+204")
    elseif choice == 2 then giveAmmo("+204")
    elseif choice == 3 then giveAmmo("+300")
    elseif choice == 4 then giveAmmo("+300")
    elseif choice == 5 then giveAmmo("+268")
    elseif choice == 6 then giveAmmo("+332")
    elseif choice == 7 then giveAmmo("+236")
    end
    menuuuvis = -1
end

function gunMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 🔫 GIVE WEAPON",
        "► 📦 GIVE AMMO",
        "► 🧹 CLEAR SLOTS",
        "► ❄️ FREEZE SLOTS",
        "► 🔄 ANTI RELOAD",
        "► ♾️ INFINITE AMMO",
        "► ⚡ FIRE RATE (No Recoil)",
        "► 🎯 SCOPE SPEED"            .. (shshq == "✅" and " [ON]" or ""),
        "► 🎯 NO SPREAD"              .. (sc == "✅" and " [ON]" or ""),
        "► 🌾 FARM SKILLS"            .. (fsk == "✅" and " [ON]" or ""),
        "► ➕ ASSIST + C"             .. (avty == "✅" and " [ON]" or ""),
        "► ⚡➕ FIRE RATE + SPEED"    .. (alertr == "✅" and " [ON]" or ""),
        "⬅️ RETURN TO MAIN MENU"
    }, nil, "【 🔫 WEAPON MODS 】")
    
    if not choice or choice == 13 then 
        mainMenu() 
        return 
    end
    
    if choice == 1 then giveWeaponMenu()
    elseif choice == 2 then giveAmmoMenu()
    elseif choice == 3 then clearSlots()
    elseif choice == 4 then freezeSlotsMenu()
    elseif choice == 5 then antiReloadMenu()
    elseif choice == 6 then infiniteAmmoMenu()
    elseif choice == 7 then setFireRate()
    elseif choice == 8 then toggleScopeSpeed()
    elseif choice == 9 then toggleNoSpread()
    elseif choice == 10 then toggleFarmSkills()
    elseif choice == 11 then toggleAssist()
    elseif choice == 12 then toggleFireRateSpeed()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    TELEPORT SYSTEM                                 ║
--╚═══════════════════════════════════════════════════════════════════╝

function teleportByCoords()
    local coords = gg.prompt({"📍 ENTER X COORDINATE:", "📍 ENTER Y COORDINATE:", "📍 ENTER Z COORDINATE:"}, nil, {"number", "number", "number"})
    if not coords then return tpMenu() end
    doTeleport(coords[1], coords[2], coords[3])
    tpMenu()
end

-- ==========================================
-- TELEPORT BY MARKER (ANTI-STUCK FIX)
-- ==========================================
function teleportByMarker()
    hookPLAYER(-4, F, 350)

    local target = findFirstValidMarker()
    if not target then
        hookPLAYER(-4, F, 100)
        gg.toast("❌ Marker not found!")
        return tpMenu()
    end

    gg.toast("🟢 Teleporting...")
    gg.sleep(150)
    gg.toast("⏳ Loading...")
    gg.sleep(200)

    if doTeleportSafe(target.x, target.y, target.z + 1.2) then
        gg.toast("✅ Teleported")
    end

    hookPLAYER(-4, F, 100)
    return tpMenu()
end

FILE_PATH = gg.EXT_STORAGE .. "/Adil_points.txt"
savedPoints = {}

function loadPoints()
    savedPoints = {}
    local f = io.open(FILE_PATH, "r")
    if f then
        for line in f:lines() do
            local name, x, y, z = line:match("([^|]+)|([^|]+)|([^|]+)|([^|]+)")
            if name then
                table.insert(savedPoints, {name = name, x = tonumber(x), y = tonumber(y), z = tonumber(z)})
            end
        end
        f:close()
    end
end

function savePoints()
    local f = io.open(FILE_PATH, "w")
    if f then
        for _, p in ipairs(savedPoints) do
            f:write(string.format("%s|%.6f|%.6f|%.6f\n", p.name, p.x, p.y, p.z))
        end
        f:close()
    end
end

-- ==========================================
-- SMART AUTO TELEPORTER (BACKGROUND)
-- ==========================================
smartAutoTp = "❌"

function toggleSmartAutoTp()
    if smartAutoTp == "❌" then
        smartAutoTp = "✅"
        gg.toast("✅ SMART AUTO TELEPORT ON\n(Menu band karo aur map par marker lagao!)")
    else
        smartAutoTp = "❌"
        gg.toast("❌ SMART AUTO TELEPORT OFF")
    end
    tpMenu()
end

function backgroundMarkerCheck()
    if autoTpCooldownTicks > 0 then
        autoTpCooldownTicks = autoTpCooldownTicks - 1
        return
    end

    local target = findFirstValidMarker()
    if not target then
        lastMarkerKey = nil
        return
    end

    local key = markerKey(target.x, target.y, target.z)
    if key == lastMarkerKey then return end

    gg.toast("🟢 Teleporting...")
    gg.sleep(120)
    gg.toast("🟢 Loading.")
    gg.sleep(120)
    gg.toast("🟢 Loading..")
    gg.sleep(120)
    gg.toast("🟢 Loading...")

    if doTeleportSafe(target.x, target.y, target.z + 1.2) then
        gg.toast("🟢 Teleported")
        lastMarkerKey = key
        autoTpCooldownTicks = 18
    end
end

function getCurrentCoords()
    Z.S("4575657250219098112", Q, Ca|O)
    if not Result or #Result == 0 then
        showError()
        return nil
    end
    local addr = Result[1].address
    local vals = gg.getValues({
        {address = addr + 132, flags = F},
        {address = addr + 136, flags = F},
        {address = addr + 140, flags = F}
    })
    gg.clearResults()
    return vals[1].value, vals[2].value, vals[3].value
end

function managePointsMenu()
    loadPoints()
    local choice = gg.choice({
        "► 📍 GET CURRENT COORDS",
        "► 💾 SAVE CURRENT POINT",
        "► 📋 MY SAVED POINTS",
        "► 🗑️ CLEAR ALL POINTS",
        "⬅️ BACK"
    }, nil, "【 💾 MANAGE POINTS 】")
    
    if not choice then return tpMenu() end
    
    if choice == 1 then
        local x, y, z = getCurrentCoords()
        if x then
            local text = string.format("X: %.2f\nY: %.2f\nZ: %.2f", x, y, z)
            local res = gg.alert(text, "BACK", "COPY")
            if res == 2 then
                gg.copyText(text)
                gg.toast("✓ [ COPIED ] \n✦ Coordinates copied to clipboard")
            end
        end
        managePointsMenu()
        
    elseif choice == 2 then
        local x, y, z = getCurrentCoords()
        if x then
            local prompt = gg.prompt({"📝 POINT NAME:"}, {"Point " .. os.date("%H:%M")}, {"text"})
            if prompt then
                table.insert(savedPoints, {name = prompt[1], x = x, y = y, z = z})
                savePoints()
                gg.toast("✓ [ SAVED ] \n✦ " .. prompt[1])
            end
        end
        managePointsMenu()
        
    elseif choice == 3 then
        viewSavedPoints()
        
    elseif choice == 4 then
        if gg.alert("⚠ DELETE ALL POINTS?", "YES", "NO") == 1 then
            savedPoints = {}
            savePoints()
            gg.toast("🗑️ [ CLEARED ] \n✦ All Points Deleted")
        end
        managePointsMenu()
        
    elseif choice == 5 then
        tpMenu()
    end
end

function viewSavedPoints()
    if #savedPoints == 0 then
        gg.alert("📋 NO SAVED POINTS FOUND")
        return managePointsMenu()
    end
    
    local list = {}
    for i, p in ipairs(savedPoints) do
        list[i] = string.format("► 📍 %s", p.name)
    end
    list[#list + 1] = "⬅️ BACK"
    
    local q = gg.choice(list, nil, "【 📋 MY SAVED POINTS 】")
    if not q or q == #list then return managePointsMenu() end
    
    local p = savedPoints[q]
    local action = gg.choice({"► ✈️ TELEPORT", "► 🗑️ DELETE", "⬅️ BACK"}, nil, "【 " .. p.name .. " 】")
    
    if action == 1 then
        doTeleport(p.x, p.y, p.z)
    elseif action == 2 then
        table.remove(savedPoints, q)
        savePoints()
        gg.toast("🗑️ [ DELETED ] \n✦ Point Removed")
        viewSavedPoints()
    else
        viewSavedPoints()
    end
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    TELEPORT LOCATIONS                              ║
--╚═══════════════════════════════════════════════════════════════════╝

publicPlaces = {
    {"🏫 Auto School", 486, 2276, 12},
    {"🏛️ Military Base", 1915, 2302, 15},
    {"🏦 Bank South", 2372, -2142, 23},
    {"🏦 Bank Arzamas", -143, 593, 12},
    {"🏦 Bank Batyrevo", 1850, 2042, 16},
    {"⛪ Church", 1877, 1166, 31},
    {"🚗 Car Market", 878, 2236, 19},
    {"📮 Post Office", 801, 1349, 15}
}

stations = {
    {"🚌 Bus Station Arzamas", -561, 931, 12},
    {"🚌 Bus Station South", 2734, -2447, 22},
    {"🚌 Bus Station Batyrevo", 1813, 2513, 15},
    {"🚉 Train Station South", 2499, -2145, 22}
}

parking = {
    {"💰 Economy Autosalon", 2323, -1800, 22},
    {"💎 Comfort Autosalon", 2217, 2991, 14},
    {"👑 Premium Autosalon", 602, 998, 12},
    {"🏍️ Motosalon", 340, 479, 12},
    {"Arz Parking 🅿️", 419.76, 584.26, 11.88,}
 }

government = {
    {"🏛️ Government Building", -79, 839, 17},
    {"⚔️ Military Unit", 1872, 1723, 15},
    {"🏥 Hospital Arzamas", 361, 1332, 13},
    {"🏥 Hospital South", 2118, -2386, 23},
    {"👮 Police Arzamas", 153, 1265, 12},
    {"👮 Police South", 2582, -2421, 23},
    {"🕵️ FSB", 1896, -1995, 31}
}

criminal = {
    {"💀 Tambov Gang", 2425, -1922, 22},
    {"💀 Kurgan Gang", 2285, 1369, 11},
    {"🖤 Black Market", -2249, 245, 24.5},
    {"👿 Orekhov Gang", 481.89, 742.55, 12.00},
    {"⚔️Sawmill bizzwar", -1043.95, -2464.63, 28.48},
    {"🔪Fam war enternce", 1503.80, -297.03, 7.34}
}

starterJobs = {
    {"🏭 Tesla Factory", -2547, 534, 9},
    {"🏭 Twix Factory", 2242, 2146, 16.2},
    {"⛏️ Mine", -1109, 1363, 31.5},
    {"🌾 Farm", 950, -910, 39}
}

jobs = {
    {"🚕 Taxi", 757, 757, 11},
    {"🚌 Bus Driver", 786, 750, 12},
    {"📮 Postman", 801, 1349, 15},
    {"🔧 Mechanic", 2132, -1847, 20},
    {"🛣️ Road Service South", 2648, -1902, 22},
    {"🛣️ Road Service Arzamas", 636, 897, 12},
    {"Tesla factory 🏭", -2671.84 , 521.80 , 8.75}
}

entertainment = {
    {"🎰 Grand Casino", 327, 2762, 8},
    {"🔨 Auction", 443, -393, 9},
    {"📊 Bookmaker", 280, 2717, 8},
    {"🏎️ Drift Zone", 2333, 1182, 20},
    {"🌳 Park", 330, 2670, 8},
    {"Tss 🚗 Roof", 736.66 , 534.28 , 22.57}
}

airdropAdil = {
    {"Arzamas Opposite Bus 🚌 Job", 738 , 809, 12},
    {"Arzamas Opposite Hospital 🏥", 254 , 1433 , 12},
    {"Arzamas Near Fountain ⛲", 59.86 , 115.10 , 10.21},
    {"Arzamas bus Terminal", -435.40 , 954.89 , 12.15},
    {"Outside government House", 71.16 , 865.27 , 14.65},
    {"Near Royal Fam house 👑", -422.17 , 1242.90 , 17.60},
    {"Mine", -1067.73 , 1326.70 , 31.72},
    {"Mine road opposit ⛽", -1087.75 , 1573.69 , 35.25},
    {"Near elite road truck 🚛 job", -1543.19 , 2493.87 ,42.64},
    {"Elite village bridge 🌉", -1941.45 , 1743.18 , 113.51},
    {"Elite Village Top", -1682.69 , 1488.33 , 230.90},
    {"Edovo Parking", -2368.34 , 2717.94 , 37.80},
    {"Ground ☘️", -2519.84 , 1634.87 , 53.39},
    {"Tesla factory 🏭", -2671.84 , 521.80 , 8.75},
    {"Lyth", -1749.56 , -261.11 , 51.32},
    {"Garbage Road", -1956.76 , -1214.84 , 49.04},
    {"Busevo", -508.73 , -1677.10 , 40.81},
    {"⚔️Sawmill bizzwar", -1043.95, -2464.63, 28.48},
    {"Container Auction", 283.29 , -384.27 , 8.87},
    {"Out Side Farm", 848.24 , -761.71 , 40.24},
    {"Tower 🗼", 500.97 , -2485.05 , 34.51},
    {"Yuz Building 🏫", 2559.01 , -2190.47 , 21.97},
    {"Yuz KFC 🐔 🍗 ", 2229.02 , -1926.52 , 21.77},
    {"Yuz buyer", 2307.70 , -1971.28 , 21.98},
    {"Arz to Yuz bridge 🌉 ", 2733.16 , -959.24 , 23.60},
    {"Arzamas Sea Road ⛽", 2503.96 , 716.95 , 29.56},
    {"Near kurgan", 2419.89 , 1361.77 , 11.33},
    {"Batyrevo Restaurant", 1867.87 , 2242.97 , 15.27},
    {"Opposite Casino", 328.25 , 2665.45 , 7.84}
} 
    
heliClubs = {
    {"🚁 Heli Club South", -2691, -1647, 23},
    {"🚁 Heli Club Arzamas", 528, 1761, 12}
}

buyers = {
    {"💰 Buyer South", 2331, -1989, 22},
    {"💰 Buyer Arzamas", -89, 961, 12}
}

businesses = {
    {"🏪 24/7 Shop", -2386.05, 257.38, 23.72},
    {"🍽️ Restaurant", -280, -1765.3, 41},
    {"🔫 Gun Shop", 112.51, 574.09, 13.26},
    {"👕 Clothes Shop", 1945, 2066, 15.7},
    {"⛽ Gas Station", 2328, -762, 14}
}

quarries = {
    {"⛏️ Arzamas Quarry", -611, 1433, 12.50},
    {"⛏️ Batyrevo Quarry", 2605, 2556, 12.40},
    {"⛏️ South Quarry", 2053, -700, 12.40}
}

function showLocations(locations, title)
    local menu = {}
    for i, loc in ipairs(locations) do
        menu[i] = loc[1]
    end
    menu[#menu + 1] = "🔙 BACK"
    
    local q = gg.choice(menu, nil, title)
    if not q or q == #menu then return teleportByFootMenu() end
    
    local loc = locations[q]
    doTeleport(loc[2], loc[3], loc[4])
    teleportByFootMenu()
end

function showPublicPlaces() showLocations(publicPlaces, "【 🏢 PUBLIC PLACES 】") end
function showStations() showLocations(stations, "【 🚉 STATIONS 】") end
function showParking() showLocations(parking, "【 🅿️ PARKING LOTS 】") end
function showGovernment() showLocations(government, "【 👮 GOVERNMENT 】") end
function showCriminal() showLocations(criminal, "【 🕵️ CRIMINAL 】") end
function showStarterJobs() showLocations(starterJobs, "【 🔰 STARTER JOBS 】") end
function showJobs() showLocations(jobs, "【 💼 JOBS 】") end
function showEntertainment() showLocations(entertainment, "【 🎉 ENTERTAINMENT 】") end
function showAirdropAdil() showLocations(airdropAdil, "【 🎁 AIRDROP LOCATIONS 】") end
function showHeliClubs() showLocations(heliClubs, "【 🚁 HELI CLUBS 】") end
function showBuyers() showLocations(buyers, "【 💰 BUYERS 】") end
function showBusinesses() showLocations(businesses, "【 💵 BUSINESSES 】") end
function showQuarries() showLocations(quarries, "【 ⛏️ QUARRIES 】") end

function tpMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 📍 TELEPORT BY COORDS",
        "► 📌 TELEPORT BY MARKER",
        "► 🤖 SMART AUTO TELEPORT"   .. (smartAutoTp == "✅" and " [ON]" or ""),
        "► 🚗 CAR TELEPORT MENU",
        "► 👣 TELEPORT BY FOOT",
        "► 💾 SAVE/MANAGE POINTS",
        "⬅️ RETURN TO MAIN MENU"
    }, nil, "【 📍 TELEPORT SYSTEM 】")
    
    if not choice or choice == 7 then 
        mainMenu() 
        return 
    end
    
    if choice == 1 then teleportByCoords()
    elseif choice == 2 then teleportByMarker()
    elseif choice == 3 then toggleSmartAutoTp()
    elseif choice == 4 then carTeleportMenu() 
    elseif choice == 5 then teleportByFootMenu()
    elseif choice == 6 then managePointsMenu()
    end
    menuuuvis = -1
end

function carTeleportMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 🚗 SETUP 1: Aage-Peeche (Move)",
        "► 📍 SETUP 2: Location (Hardcode)",
        "► 🧠 SETUP 3: Smart Sync (Auto)",
        "► ⚡ EXECUTE: TELEPORT TO MARKER",
        "⬅️ BACK"
    }, nil, "【 🎯 CAR TELEPORT MENU 】\nPehle Setup karo, fir Execute dabao")
    
    if not choice or choice == 5 then return tpMenu() end
    if choice == 1 then setupCarMethod1()
    elseif choice == 2 then setupCarMethod2()
    elseif choice == 3 then setupCarMethod3()
    elseif choice == 4 then executeCarTeleport()
    end
    menuuuvis = -1
end

function teleportByFootMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 🏢 PUBLIC PLACES", "► 🚉 STATIONS", "► 🅿️ PARKING LOTS", 
        "► 👮 GOVERNMENT", "► 🕵️ CRIMINAL", "► 🔰 STARTER JOBS", 
        "► 💼 JOBS", "► 🎉 ENTERTAINMENT", "► 🎁 Airdrop BY Adil", 
        "► 🚁 HELI CLUBS", "► 💰 BUYERS", "► 💵 BUSINESSES", 
        "► ⛏️ QUARRIES", "► 📍 MY POINTS", "⬅️ BACK"
    }, nil, "【 👣 TELEPORT LOCATIONS 】")
    
    if not choice or choice == 15 then return tpMenu() end
    if choice == 1 then showPublicPlaces()
    elseif choice == 2 then showStations()
    elseif choice == 3 then showParking()
    elseif choice == 4 then showGovernment()
    elseif choice == 5 then showCriminal()
    elseif choice == 6 then showStarterJobs()
    elseif choice == 7 then showJobs()
    elseif choice == 8 then showEntertainment()
    elseif choice == 9 then showAirdropAdil()
    elseif choice == 10 then showHeliClubs()
    elseif choice == 11 then showBuyers()
    elseif choice == 12 then showBusinesses()
    elseif choice == 13 then showQuarries()
    elseif choice == 14 then viewSavedPoints()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    DEV & SUPPORT                                   ║
--╚═══════════════════════════════════════════════════════════════════╝

-- ==========================================
-- DEV & SUPPORT 
-- ==========================================

function devMenu()
    local choice = gg.choice({
        "► 📺 YOUTUBE: @Adilbajwa1170",
        "► 💬 Discord: @adilbajwa03",
        "⬅️ BACK"
    }, nil, "【 👑 DEVELOPER INFO 】")
    
    if not choice or choice == 3 then return mainMenu() end
    if choice == 1 then
        gg.copyText("https://youtube.com/@Adilbajwa1170")
        gg.goURL("https://youtube.com/@Adilbajwa1170")
    elseif choice == 2 then
        gg.copyText("https://dc.me/Adilbajwa03")
        gg.goURL("https://dc.me/Adilbajwa03")
    end
    devMenu()
end

function supportMenu()
    local choice = gg.choice({
        "► 💳 SUPPORT THE CREATOR",
        "► 💎 Discord: adilbajwa03", 
        "► ❤️ Youtube: @adilbajwa1170",
        "⬅️ BACK"
    }, nil, "【 💝 SUPPORT CREATOR 】")
    
    if not choice or choice == 4 then return mainMenu() end
    if choice == 3 then
        gg.goURL("https://youtube.com/@adilbajwa1170")
    end
    supportMenu()
end

function exitScript()
    if AdilAimbotRunning then
        AdilAimbotRunning = false
        if AdilSmoothAimbotOff then AdilSmoothAimbotOff() end
    end
    gg.toast("⏾ [ EXITING ] \n✦ Adil VIP Script Shutting Down...")
    gg.setVisible(true)
    os.exit()
    gg.exit()
end

--═══════════════════════════════════════════════════════════════════
-- 💜 ADIL FPS BOOSTER INTEGRATED VARIABLES & FUNCTIONS
--═══════════════════════════════════════════════════════════════════

fps120 = false
pingBoost = false
removeLag = false
smoothGame = false
ultraBoost = false

local F = 16  -- Float
local D = 4   -- Dword
local Ca = 4  -- C++ Data a
local O = -2080896 -- Other

local function msg(s) gg.toast("💜 Adil ➤ "..s) end
local function msgOff(s) gg.toast("🖤 OFF ➤ "..s) end

local function searchNumber(value, flags, ranges)
    gg.clearResults()
    gg.setRanges(ranges)
    gg.searchNumber(value, flags)
    return gg.getResults(gg.getResultCount())
end

local function setValue(address, value, flags, freeze)
    local t = {{address = address, value = value, flags = flags}}
    if freeze then
        t[1].freeze = true
        gg.addListItems(t)
    else
        gg.setValues(t)
    end
end

-- FPS Booster Functions
function boost120FPS()
    fps120 = not fps120
    if fps120 then
        local success = false
        local targets = {"30", "60", "90"}
        for _, val in ipairs(targets) do
            local res = searchNumber(val, D, Ca|O)
            if res and #res > 0 then
                for i = 1, math.min(20, #res) do setValue(res[i].address, 120, D, true) end
                success = true
            end
        end
        if success then msg("✅ 120 FPS ACTIVATED") else msg("⚠️ NO FPS VALUES FOUND") fps120 = false end
    else
        gg.clearList()
        msgOff("120 FPS OFF")
    end
    gg.clearResults()
    fpsBoosterMenu()
end

function boostPing()
    pingBoost = not pingBoost
    if pingBoost then
        local res = searchNumber("10000", D, Ca|O)
        if res and #res > 0 then
            for i = 1, math.min(10, #res) do setValue(res[i].address, 10, D, true) end
            msg("✅ PING BOOST ACTIVATED")
        else
            msg("⚠️ NO NETWORK VALUES FOUND")
            pingBoost = false
        end
    else
        gg.clearList()
        msgOff("PING BOOST OFF")
    end
    gg.clearResults()
    fpsBoosterMenu()
end

function removeGameLag()
    removeLag = not removeLag
    if removeLag then
        local res = searchNumber("1.0", F, Ca|O)
        if res and #res > 0 then
            for i = 1, math.min(30, #res) do setValue(res[i].address, 0.3, F, true) end
            msg("✅ LAG REMOVED")
        else
            msg("⚠️ NO VALUES FOUND")
            removeLag = false
        end
    else
        gg.clearList()
        msgOff("LAG REMOVAL OFF")
    end
    gg.clearResults()
    fpsBoosterMenu()
end

function fpsBoosterMenu()
    local c = gg.choice({
        "💜 120 FPS BOOST     " .. (fps120 and "✅ ON" or "❌ OFF"),
        "🌐 PING BOOST        " .. (pingBoost and "✅ ON" or "❌ OFF"),
        "🧹 REMOVE LAG        " .. (removeLag and "✅ ON" or "❌ OFF"),
        "🔙 BACK TO MAIN MENU"
    }, nil, "⚡ ADIL FPS BOOSTER ULTRA ⚡")
    
    if not c then return end
    if c == 1 then boost120FPS()
    elseif c == 2 then boostPing()
    elseif c == 3 then removeGameLag()
    elseif c == 4 then mainMenu()
    end
end

--═══════════════════════════════════════════════════════════════════
-- ╔══════════════════╗
-- ║    MAIN MENU     ║
-- ╚══════════════════╝
--═══════════════════════════════════════════════════════════════════

function mainMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "► 👤 PLAYER MODS",
        "► 🚗 CAR MODS",
        "► 🔫 WEAPON MODS",
        "► 👁️ VISUAL MODS",
        "► 📍 TELEPORT SYSTEM",
        "► 🎯 AIMBOT MENU",
        "► ⚡ FPS BOOSTER",
        "► 👑 DEVELOPER INFO",
        "► 💝 SUPPORT CREATOR",
        "► ❌ EXIT SCRIPT"
    }, nil, "【 ADIL BAJWA VIP DASHBOARD 】\nStatus: Secure & Running")
    
    if not choice then return end
    
    if choice == 1 then playerMenu()
    elseif choice == 2 then carMenu()
    elseif choice == 3 then gunMenu()
    elseif choice == 4 then visualMenu()
    elseif choice == 5 then tpMenu()
    elseif choice == 6 then AdilAimMenu()
    elseif choice == 7 then fpsBoosterMenu()
    elseif choice == 8 then devMenu()
    elseif choice == 9 then supportMenu()
    elseif choice == 10 then exitScript()
    end
    
    menuuuvis = -1
end


--╔═══════════════════════════════════════════════════════════════════╗
--║                    SCRIPT START                                     ║
--╚═══════════════════════════════════════════════════════════════════╝


local autoTpTick = 0 -- Background timer ke liye

-- ==========================================
-- ⚡ ADVANCED BOOT ANIMATION ⚡
-- ==========================================
function hackerBootAnimation()
    gg.setVisible(false)
    local bootFrames = {
        "⟳ Initializing Adil Bajwa Engine...",
        "⚠ Bypassing Game Security [■□□□□]",
        "⚠ Bypassing Game Security [■■■□□]",
        "⚠ Bypassing Game Security [■■■■■]",
        "⚙ Injecting Payloads into Memory...",
        "✦ WELCOME TO ADIL VIP SCRIPT ✦"
    }
    
    for i, frame in ipairs(bootFrames) do
        gg.toast(frame)
        gg.sleep(600) -- Har frame 0.6 seconds ke liye dikhega
    end
end

-- Animation ko start karne ke liye call karo
hackerBootAnimation()

-- (Yahan se tumhara purana "while true do" loop start hoga)

while true do
    if gg.isVisible(true) then
        menuuuvis = 1
        gg.setVisible(false)
    end
    
    if menuuuvis == 1 then
        mainMenu()
    end
    
    -- 🤖 SMART AUTO TELEPORT BACKGROUND LOGIC
    if smartAutoTp == "✅" then
        autoTpTick = autoTpTick + 1
        -- Har 20 ticks (lagbhag 2 second) me ek baar check karega taaki game lag na ho
        if autoTpTick >= 20 then 
            backgroundMarkerCheck()
            autoTpTick = 0
        end
    end
    
    gg.sleep(100)
end
