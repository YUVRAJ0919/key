gg.setVisible(false)

gg.alert("Wellcome ❤️ to Adil Bajwa 👿 English Script This script is totally free 🎉 so avoid scammers ☠️ my discord @adilbajwa03" ) 

--╔═════════════════════════╗
--║                                        ║
--║        █████╗ ██████╗ ██╗██╗         ██████╗  █████╗      ║
--║       ██╔══██╗██╔══██╗██║██║         ██╔══██╗██╔══██╗     ║
--║       ███████║██║  ██║██║██║         ██████╔╝███████║     ║
--║       ██╔══██║██║  ██║██║██║         ██╔══██╗██╔══██║     ║
--║       ██║  ██║██████╔╝██║███████╗  ██████╔╝██║  ██║     ║
--║       ╚═╝  ╚═╝╚═════╝ ╚═╝╚══════╝    ╚═════╝ ╚═╝  ╚═╝     ║
--║                           ║
--║   DEVIL 👿  BAJWA    ║
--║                                                                   ║
--║ CREATED BY ADIL BAJWA    ║
--║   Discord: @adilbajwa03        ║
--║                               ║
--╚═════════════════════╝

menuuuvis = 1
gg.clearResults()
gg.clearList()

--╔════════════════════════╗
--║ GLOBAL ERROR & TOAST FIX ║
--╚════════════════════════╝

-- Fix missing showError function called at line 170
function showError(msg)
    gg.toast("❌ Error: " .. tostring(msg or "Failed execution"))
end

-- Fix toast object compatibility
toast = {
    success = function(msg) gg.toast(msg) end,
    hint = function(msg) gg.toast(msg) end,
    error = function(msg) gg.toast(msg) end
}

--╔════════════════════════╗
--║    SPECIAL EFFECTS     ║
--╚════════════════════════╝

function showSuccess() 
    gg.toast("╔═══════════════╗\n║      ✅ ACTIVATED SUCCESSFULLY ✅     ║\n║  BY Adil    ║\n╚══════════════════╝") 
end

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

function hookPLAYER(q1w, w2e, e3r, r4t)
    Z.S("100.14399719238", F, Ca|O)
    if not Result or #Result == 0 then
        showError()
        return false
    end
    
    local off = tonumber(q1w) or 0
    for i, v in ipairs(Result) do
        setvalue(v.address + off, e3r, w2e, r4t or false)
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
aim_st = {
    {n = "Ultra Legit", v = "1051999999", s = false},
    {n = "Legit",       v = "1055999999", s = false},
    {n = "Medium",      v = "1076999999", s = false},
    {n = "Ultra",       v = "1080999999", s = false},
    {n = "HvH",         v = "1089999999", s = false}
}

function aimnew()
    local inNewAim = true
    while inNewAim do
        gg.setVisible(false)
        local names = {}
        for i, v in ipairs(aim_st) do 
            table.insert(names, "🔹 " .. v.n .. TOG(v.s)) 
        end
        table.insert(names, "⬅️ Back")
        
        local r = gg.choice(names, nil, '[ New Aim ]')
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
                    gg.toast("✅ ACTIVATED")
                else
                    gg.toast("❌ VALUE NOT FOUND")
                end
            else
                gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
                gg.searchNumber(aim_st[r].v, gg.TYPE_DWORD)
                if gg.getResultCount() > 0 then
                    local res = gg.getResults(10000)
                    gg.editAll(old, gg.TYPE_DWORD)
                    gg.toast("💤 DEACTIVATED")
                else
                    gg.toast("❌ VALUE NOT FOUND")
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
        {"HvH",         "1089999999", "1042536202"}
    }
    local names = {}
    for i, v in ipairs(aims) do 
        table.insert(names, "🔹 " .. v[1]) 
    end
    table.insert(names, "⬅️ Back")
    
    local s = gg.choice(names, nil, '[ Old Aim ]')
    if s and s <= #aims then
        gg.setVisible(false)
        gg.toast("Running... To turn off, click the GG icon")
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
                    gg.toast("Deactivated, returning to menu")
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
            "🔹 Old Aim Models",
            "🔹 New Aim Models",
            "⬅️ Back to Main Menu"
        }, nil, "🎯 Aim Menu 🎯")
        
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
function showSuccess()
    gg.toast("✅ ACTIVATED")
end

function showDisabled()
    gg.toast("💤 DEACTIVATED")
end

function showError()
    gg.toast("❌ VALUE NOT FOUND / ERROR")
end

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
function toggleHighJump()
    local isActive = (hjj == "✅")
    Z.S("4798022456217645875", Q, Cd|O)
    Z.W(isActive and "-150" or "-0.10000000149", -0x4, F)
    gg.clearResults()

    hjj = isActive and "❌" or "✅"
    if hjj == "✅" then showSuccess() else showDisabled() end
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

function toggleFastKill()
    local isActive = (fastkil == "✅")
    Z.S(isActive and "4489188110505082880" or "9187343240761165228", Q, Ca|O|Cd)
    if #Result ~= 0 then
        gg.editAll(isActive and "9187343240761165228" or "4489188110505082880", Q)
        Z.S(isActive and "4489188110499840000" or "4489188110487257088", Q, Ca|O|Cd)
        if #Result ~= 0 then
            gg.editAll(isActive and "4489188110487257088" or "4489188110499840000", Q)
        end
        fastkil = isActive and "❌" or "✅"
        if fastkil == "✅" then showSuccess() else showDisabled() end
    else
        showError()
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
        "🏃 SPEED HACK"             .. (shv222 == "✅" and "  [ON]" or ""),
        "🏃 SPEED HACK V2"          .. (mbq == "✅" and "  [ON]" or ""),
        "💚 GOD MODE"               .. (gm4 == "✅" and "  [ON]" or ""),
        "💚 GOD MODE V2"            .. (gm9 == "✅" and "  [ON]" or ""),
        "🛡️ ARMOR PACIFIER"         .. (gm5 == "✅" and "  [ON]" or ""),
        "❤️ RESTORE HEALTH",
        "💀 SUICIDE",
        "🧱 WALK THROUGH WALLS"     .. (walg == "✅" and "  [ON]" or ""),
        "⬆️ FLIP UP",
        "⬇️ FLIP DOWN",
        "👊 FAST KILL (Fists)"      .. (fastkil == "✅" and "  [ON]" or ""),
        "🦘 HIGH JUMP"              .. (hjj == "✅" and "  [ON]" or ""),
        "🔄 SHARP TURNS"            .. (whh == "✅" and "  [ON]" or ""),
        "🌎 GRAVITY V1"             .. (graviq == "✅" and "  [ON]" or ""),
        "🌎 GRAVITY V2"             .. (graviqq == "✅" and "  [ON]" or ""),
        "🔙 RETURN TO MAIN MENU"
    }, nil, "🎯 PLAYER MODS 🎯")
    
    if not choice or choice == 16 then 
        mainMenu()
        return 
    end
    
    if choice == 1 then toggleSpeed()
    elseif choice == 2 then toggleSpeedV2()
    elseif choice == 3 then toggleGodMode()
    elseif choice == 4 then toggleGodModeV2()
    elseif choice == 5 then toggleArmor()
    elseif choice == 6 then restoreHealth()
    elseif choice == 7 then toggleSuicide()
    elseif choice == 8 then toggleWallhack()
    elseif choice == 9 then flipUp()
    elseif choice == 10 then flipDown()
    elseif choice == 11 then toggleFastKill()
    elseif choice == 12 then toggleHighJump()
    elseif choice == 13 then toggleSharpTurns()
    elseif choice == 14 then toggleGravity()
    elseif choice == 15 then toggleGravityV2()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                      CAR MODS                                      ║
--╚═══════════════════════════════════════════════════════════════════╝

function toggleCarGodMode()
    local oldState = gmcarchik == "✅"
    Z.S("4812096201845506048", Q, Ca|Cd|O)
    Z.W(oldState and 999999 or 1000, 0x5DC, F)
    gg.clearResults()
    gmcarchik = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
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
        "╔══════════════════════════════════╗",
        "║        💚 CAR GOD MODE           ║" .. (gmcarchik == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔧 RESTORE CAR HEALTH     ║",
        "║        💥 BREAK CAR              ║",
        "║        💨 NITRO                  ║" .. (nitr == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔧 HYDRAULICS             ║" .. (gidraa == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        ⚡ SPEED HACK             ║" .. (shcar == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🛵 MOPED SPEED            ║" .. (mopsh == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🚀 LAUNCH TO SPACE        ║",
        "║        ⬆️ LAUNCH UPWARDS         ║",
        "║        ⚙️ ENGINE BOOST           ║" .. (upmotor == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔄 ANTI FLIP              ║" .. (perevorot1 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🫸 PUT ON WHEELS          ║" .. (carkoles1 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO MAIN MENU"
    }, nil, "╔══════════════════════════════════════════════════╗\n║                 CAR MODS - Adil                    ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then mainMenu() end
    
    local actions = {2,3,4,5,6,7,8,9,10,11,12,13,14}
    if choice == actions[1] then toggleCarGodMode()
    elseif choice == actions[2] then restoreCarHealth()
    elseif choice == actions[3] then breakCar()
    elseif choice == actions[4] then toggleNitro()
    elseif choice == actions[5] then toggleHydraulics()
    elseif choice == actions[6] then toggleCarSpeed()
    elseif choice == actions[7] then toggleMopedSpeed()
    elseif choice == actions[8] then launchToSpace()
    elseif choice == actions[9] then launchUpwards()
    elseif choice == actions[10] then toggleEngineBoost()
    elseif choice == actions[11] then toggleAntiFlip()
    elseif choice == actions[12] then toggleOnWheels()
    elseif choice == actions[14] then mainMenu()
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
        "╔══════════════════════════════════╗",
        "║        👁️ ESP ON NAMES          ║" .. (esplol == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🤍 WHITE CHAMS            ║" .. (chamsiwhite == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        ❤️ RED CHAMS              ║" .. (chamsired == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        👓 WIDE FOV               ║" .. (fovv == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔭 ULTRA WIDE FOV         ║" .. (ulfovq == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔤 CHANGE LOGIN           ║",
        "║        ✏️ CHANGE NICKNAME        ║",
        "║        👻 INVISIBLE WALLS        ║" .. (invwal == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO MAIN MENU"
    }, nil, "╔══════════════════════════════════════════════════╗\n║               VISUAL MODS - Adil                   ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then mainMenu() end
    
    local actions = {2,3,4,5,6,7,8,9,10}
    if choice == actions[1] then toggleESP()
    elseif choice == actions[2] then toggleWhiteChams()
    elseif choice == actions[3] then toggleRedChams()
    elseif choice == actions[4] then toggleFOV()
    elseif choice == actions[5] then toggleUltraFOV()
    elseif choice == actions[6] then changeLogin()
    elseif choice == actions[7] then changeNickname()
    elseif choice == actions[8] then toggleInvisibleWalls()
    elseif choice == actions[10] then mainMenu()
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
        "╔══════════════════════════════════╗",
        "║        🔫 DEAGLE                 ║" .. (relodgper == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 M4                     ║" .. (relom4per == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 AK-47                  ║" .. (reloakper == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 MP5                    ║" .. (relompper == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO WEAPON MENU"
    }, nil, "╔══════════════════════════════════════════════════╗\n║                ANTI RELOAD - Adil                  ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then gunMenu() end
    if choice == 2 then toggleAntiReload("relodgper", "+200", 22)
    elseif choice == 3 then toggleAntiReload("relom4per", "+296", 50)
    elseif choice == 4 then toggleAntiReload("reloakper", "+296", 50)
    elseif choice == 5 then toggleAntiReload("relompper", "+264", 50)
    elseif choice == 7 then gunMenu()
    end
    menuuuvis = -1
end

function infiniteAmmoMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        🔫 DEAGLE                 ║" .. (bdg == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 M4                     ║" .. (bmka == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 AK-47                  ║" .. (bkal == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 SHOTGUN                ║" .. (bdrobq == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 MP5                    ║" .. (bmp5q == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO WEAPON MENU"
    }, nil, "╔══════════════════════════════════════════════════╗\n║              INFINITE AMMO - Adil                  ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then gunMenu() end
    if choice == 2 then toggleInfiniteAmmo("bdg", "+204")
    elseif choice == 3 then toggleInfiniteAmmo("bmka", "+300")
    elseif choice == 4 then toggleInfiniteAmmo("bkal", "+300")
    elseif choice == 5 then toggleInfiniteAmmo("bdrobq", "+236")
    elseif choice == 6 then toggleInfiniteAmmo("bmp5q", "+268")
    elseif choice == 8 then gunMenu()
    end
    menuuuvis = -1
end

function freezeSlotsMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        🔫 DEAGLE                 ║" .. (frzsl1 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 GLOCK                  ║" .. (frzsl2 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 M4                     ║" .. (frzsl3 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 AK-47                  ║" .. (frzsl4 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 MP5                    ║" .. (frzsl5 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 SNIPER                 ║" .. (frzsl6 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔫 SHOTGUN                ║" .. (frzsl7 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO WEAPON MENU"
    }, nil, "╔══════════════════════════════════════════════════╗\n║               FREEZE SLOTS - Adil                  ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then gunMenu() end
    if choice == 2 then toggleFreezeSlot("frzsl1", "+192", 24, "+204")
    elseif choice == 3 then toggleFreezeSlot("frzsl2", "+192", 22, "+204")
    elseif choice == 4 then toggleFreezeSlot("frzsl3", "+288", 31, "+300")
    elseif choice == 5 then toggleFreezeSlot("frzsl4", "+288", 30, "+300")
    elseif choice == 6 then toggleFreezeSlot("frzsl5", "+256", 29, "+268")
    elseif choice == 7 then toggleFreezeSlot("frzsl6", "+320", 34, "+332")
    elseif choice == 8 then toggleFreezeSlot("frzsl7", "+224", 25, "+236")
    elseif choice == 10 then gunMenu()
    end
    menuuuvis = -1
end

function giveWeaponMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        🔫 DEAGLE                 ║",
        "║        🔫 M4                     ║",
        "║        🔫 AK-47                  ║",
        "║        🔫 SHOTGUN                ║",
        "║        🔫 MP5                    ║",
        "║        🔫 GLOCK                  ║",
        "║        🔫 SNIPER (No Scope)      ║",
        "║        🔫 SNIPER (Scope)         ║",
        "║        🔫 MINIGUN                ║",
        "║        🔫 RPG                    ║",
        "║        🔫 RPG AUTO               ║",
        "║        🔫 OTHER WEAPONS          ║",
        "║        ℹ️ WEAPON IDs             ║",
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO WEAPON MENU"
    }, nil, "╔══════════════════════════════════════════════════╗\n║               GIVE WEAPON - Adil                    ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then gunMenu() end
    if choice == 2 then giveWeapon("+192", 24, "+204")
    elseif choice == 3 then giveWeapon("+288", 31, "+300")
    elseif choice == 4 then giveWeapon("+288", 30, "+300")
    elseif choice == 5 then giveWeapon("+224", 25, "+236")
    elseif choice == 6 then giveWeapon("+256", 29, "+268")
    elseif choice == 7 then giveWeapon("+192", 22, "+204")
    elseif choice == 8 then giveWeapon("+320", 33, "+332")
    elseif choice == 9 then giveWeapon("+320", 34, "+332")
    elseif choice == 10 then giveWeapon("+352", 38, "+364")
    elseif choice == 11 then giveWeapon("+352", 35, "+364")
    elseif choice == 12 then giveWeapon("+352", 36, "+364")
    elseif choice == 13 then giveCustomWeapon()
    elseif choice == 14 then showWeaponIDs()
    elseif choice == 16 then gunMenu()
    end
    menuuuvis = -1
end

function giveAmmoMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        🔫 DEAGLE                 ║",
        "║        🔫 GLOCK                  ║",
        "║        🔫 M4                     ║",
        "║        🔫 AK-47                  ║",
        "║        🔫 MP5                    ║",
        "║        🔫 SNIPER                 ║",
        "║        🔫 SHOTGUN                ║",
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO WEAPON MENU"
    }, nil, "╔══════════════════════════════════════════════════╗\n║                GIVE AMMO - Adil                     ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then gunMenu() end
    if choice == 2 then giveAmmo("+204")
    elseif choice == 3 then giveAmmo("+204")
    elseif choice == 4 then giveAmmo("+300")
    elseif choice == 5 then giveAmmo("+300")
    elseif choice == 6 then giveAmmo("+268")
    elseif choice == 7 then giveAmmo("+332")
    elseif choice == 8 then giveAmmo("+236")
    elseif choice == 10 then gunMenu()
    end
    menuuuvis = -1
end

function gunMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        🔫 GIVE WEAPON            ║",
        "║        📦 GIVE AMMO              ║",
        "║        🧹 CLEAR SLOTS            ║",
        "║        ❄️ FREEZE SLOTS           ║",
        "║        🔄 ANTI RELOAD            ║",
        "║        ♾️ INFINITE AMMO          ║",
        "║        ⚡ FIRE RATE (No Recoil)  ║",
        "║        🎯 SCOPE SPEED            ║" .. (shshq == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🎯 NO SPREAD              ║" .. (sc == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🌾 FARM SKILLS            ║" .. (fsk == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        ➕ ASSIST + C             ║" .. (avty == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        ⚡➕ FIRE RATE + SPEED    ║" .. (alertr == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO MAIN MENU"
    }, nil, "╔══════════════════════════════════════════════════╗\n║               WEAPON MODS - Adil                    ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then mainMenu() end
    
    local actions = {2,3,4,5,6,7,8,9,10,11,12,13,14}
    if choice == actions[1] then giveWeaponMenu()
    elseif choice == actions[2] then giveAmmoMenu()
    elseif choice == actions[3] then clearSlots()
    elseif choice == actions[4] then freezeSlotsMenu()
    elseif choice == actions[5] then antiReloadMenu()
    elseif choice == actions[6] then infiniteAmmoMenu()
    elseif choice == actions[7] then setFireRate()
    elseif choice == actions[8] then toggleScopeSpeed()
    elseif choice == actions[9] then toggleNoSpread()
    elseif choice == actions[10] then toggleFarmSkills()
    elseif choice == actions[11] then toggleAssist()
    elseif choice == actions[12] then toggleFireRateSpeed()
    elseif choice == actions[14] then mainMenu()
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

function teleportByMarker()
    hookPLAYER(-4, F, 350)
    while true do
        fg.clean()
        local points = {}
        local menu = {}
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
                        if x ~= 0 and y ~= 0 and x > -3000 and x < 3000 and y > -3000 and y < 3000 and z == 0 and active == 1 then
                            table.insert(points, {x, y})
                            table.insert(menu, string.format("📍 [%d] X:%.1f Y:%.1f", #points, x, y))
                        end
                    end
                end
            end
        end
        if #points == 0 then
            showError()
            fg.clean()
            hookPLAYER(-4, F, 100)
            return tpMenu()
        end
        table.insert(menu, "🔄 REFRESH")
        table.insert(menu, "🔙 BACK")
        local s = gg.choice(menu, nil, "╔══════════════════════════════════════════════════╗\n║           SELECT MARKER TO TELEPORT                 ║\n╚══════════════════════════════════════════════════╝")
        if not s then
            gg.setVisible(false)
            while not gg.isVisible() do gg.sleep(200) end
        elseif menu[s] == "🔙 BACK" then
            fg.clean()
            hookPLAYER(-4, F, 100)
            return tpMenu()
        elseif menu[s] == "🔄 REFRESH" then
        else
            doTeleport(points[s][1], points[s][2], 50)
            showSuccess()
            fg.clean()
            break
        end
    end
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
        "╔══════════════════════════════════╗",
        "║        📍 GET CURRENT COORDS     ║",
        "║        💾 SAVE CURRENT POINT     ║",
        "║        📋 MY SAVED POINTS        ║",
        "║        🗑️ CLEAR ALL POINTS       ║",
        "╚══════════════════════════════════╝",
        "🔙 BACK"
    }, nil, "╔══════════════════════════════════════════════════╗\n║              MANAGE POINTS - Adil                  ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then return tpMenu() end
        if choice == 2 then
        local x, y, z = getCurrentCoords()
        if x then
            local text = string.format("X: %.2f\nY: %.2f\nZ: %.2f", x, y, z)
            local res = gg.alert(text, "BACK", "COPY")
            if res == 2 then
                gg.copyText(text)
                toast.success("╔══════════════════════════════════╗\n║      📋 COORDINATES COPIED 📋      ║\n╚══════════════════════════════════╝")
            end
        end
        managePointsMenu()
        
    elseif choice == 3 then
        local x, y, z = getCurrentCoords()
        if x then
            local prompt = gg.prompt({"📝 POINT NAME:"}, {"Point " .. os.date("%H:%M")}, {"text"})
            if prompt then
                table.insert(savedPoints, {name = prompt[1], x = x, y = y, z = z})
                savePoints()
                toast.success("╔══════════════════════════════════╗\n║      💾 POINT SAVED: " .. prompt[1] .. "      ║\n╚══════════════════════════════════╝")
            end
        end
        managePointsMenu()
        
    elseif choice == 4 then
        viewSavedPoints()
        
    elseif choice == 5 then
        if gg.alert("🗑️ DELETE ALL POINTS?", "YES", "NO") == 1 then
            savedPoints = {}
            savePoints()
            toast.success("╔══════════════════════════════════╗\n║      🗑️ ALL POINTS CLEARED 🗑️     ║\n╚══════════════════════════════════╝")
        end
        managePointsMenu()
        
    elseif choice == 7 then
        tpMenu()
    end
end

function viewSavedPoints()
    if #savedPoints == 0 then
        gg.alert("╔══════════════════════════════════╗\n║      📋 NO SAVED POINTS FOUND      ║\n╚══════════════════════════════════╝")
        return managePointsMenu()
    end
    
    local list = {}
    for i, p in ipairs(savedPoints) do
        list[i] = string.format("📍 %s", p.name)
    end
    list[#list + 1] = "🔙 BACK"
    
    local q = gg.choice(list, nil, "╔══════════════════════════════════════════════════╗\n║                 SELECT POINT - Adil               ║\n╚══════════════════════════════════════════════════╝")
    if not q or q == #list then return managePointsMenu() end
    
    local p = savedPoints[q]
    local action = gg.choice({"『 ✈️ 』 TELEPORT", "『 🗑️ 』 DELETE", "🔙 BACK"}, nil, p.name)
    
    if action == 1 then
        doTeleport(p.x, p.y, p.z)
    elseif action == 2 then
        table.remove(savedPoints, q)
        savePoints()
        toast.success("╔══════════════════════════════════╗\n║      🗑️ POINT DELETED 🗑️           ║\n╚══════════════════════════════════╝")
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

function showPublicPlaces() showLocations(publicPlaces, "╔══════════════════════════════════════════════════╗\n║                PUBLIC PLACES - Adil               ║\n╚══════════════════════════════════════════════════╝") end
function showStations() showLocations(stations, "╔══════════════════════════════════════════════════╗\n║                  STATIONS - Adil                  ║\n╚══════════════════════════════════════════════════╝") end
function showParking() showLocations(parking, "╔══════════════════════════════════════════════════╗\n║               PARKING LOTS - Adil                 ║\n╚══════════════════════════════════════════════════╝") end
function showGovernment() showLocations(government, "╔══════════════════════════════════════════════════╗\n║               GOVERNMENT - Adil                   ║\n╚══════════════════════════════════════════════════╝") end
function showCriminal() showLocations(criminal, "╔══════════════════════════════════════════════════╗\n║                CRIMINAL - Adil                    ║\n╚══════════════════════════════════════════════════╝") end
function showStarterJobs() showLocations(starterJobs, "╔══════════════════════════════════════════════════╗\n║              STARTER JOBS - Adil                  ║\n╚══════════════════════════════════════════════════╝") end
function showJobs() showLocations(jobs, "╔══════════════════════════════════════════════════╗\n║                  JOBS - Adil                      ║\n╚══════════════════════════════════════════════════╝") end
function showEntertainment() showLocations(entertainment, "╔══════════════════════════════════════════════════╗\n║              ENTERTAINMENT - Adil                 ║\n╚══════════════════════════════════════════════════╝") end
function showAirdropAdil()
 showLocations(airdropAdil, "╔══════════════════════════════════════════════════╗\n║              AirdropAdil - Adil                 ║\n╚══════════════════════════════════════════════════╝") end
function showHeliClubs() showLocations(heliClubs, "╔══════════════════════════════════════════════════╗\n║               HELI CLUBS - Adil                   ║\n╚══════════════════════════════════════════════════╝") end
function showBuyers() showLocations(buyers, "╔══════════════════════════════════════════════════╗\n║                 BUYERS - Adil                     ║\n╚══════════════════════════════════════════════════╝") end
function showBusinesses() showLocations(businesses, "╔══════════════════════════════════════════════════╗\n║               BUSINESSES - Adil                   ║\n╚══════════════════════════════════════════════════╝") end
function showQuarries() showLocations(quarries, "╔══════════════════════════════════════════════════╗\n║                QUARRIES - Adil                    ║\n╚══════════════════════════════════════════════════╝") end

function teleportByFootMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        🏢 PUBLIC PLACES          ║",
        "║        🚉 STATIONS               ║",
        "║        🅿️ PARKING LOTS          ║",
        "║        👮 GOVERNMENT             ║",
        "║        🕵️ CRIMINAL              ║",
        "║        🔰 STARTER JOBS           ║",
        "║        💼 JOBS                   ║",
        "║        🎉 ENTERTAINMENT          ║",
        "║        🎁Airdrop BY Adil          ║",
        "║        🚁 HELI CLUBS             ║",
        "║        💰 BUYERS                 ║",
        "║        💵 BUSINESSES             ║",
        "║        ⛏️ QUARRIES               ║",
        "║        📍 MY POINTS              ║",
        "╚══════════════════════════════════╝",
        "🔙 BACK"
    }, nil, "╔══════════════════════════════════════════════════╗\n║            TELEPORT BY FOOT - Adil                 ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then tpMenu() end
    if choice == 2 then showPublicPlaces()
    elseif choice == 3 then showStations()
    elseif choice == 4 then showParking()
    elseif choice == 5 then showGovernment()
    elseif choice == 6 then showCriminal()
    elseif choice == 7 then showStarterJobs()
    elseif choice == 8 then showJobs()
    elseif choice == 9 then showEntertainment()
    elseif choice == 10 then showAirdropAdil()
    elseif choice == 11 then showHeliClubs()
    elseif choice == 12 then showBuyers()
    elseif choice == 13 then showBusinesses()
    elseif choice == 14 then showQuarries()
    elseif choice == 15 then viewSavedPoints()
    elseif choice == 16 then tpMenu()
    end
    menuuuvis = -1
end

function tpMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        📍 TELEPORT BY COORDS     ║",
        "║        📌 TELEPORT BY MARKER     ║",
        "║        👣 TELEPORT BY FOOT       ║",
        "║        💾 SAVE/MANAGE POINTS     ║",
        "╚══════════════════════════════════╝",
        "🔙 BACK"
    }, nil, "╔══════════════════════════════════════════════════╗\n║                TELEPORT - Adil                     ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then mainMenu() end
    if choice == 2 then teleportByCoords()
    elseif choice == 3 then teleportByMarker()
    elseif choice == 4 then teleportByFootMenu()
    elseif choice == 5 then managePointsMenu()
    elseif choice == 7 then mainMenu()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    DEV & SUPPORT                                   ║
--╚═══════════════════════════════════════════════════════════════════╝

function devMenu()
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        📺 YOUTUBE: @Adilbajwa1170      ║",
        "║        💬 Discord: @adilbajwa03    ║",
        "╚══════════════════════════════════╝",
        "🔙 BACK"
    }, nil, "╔══════════════════════════════════════════════════╗\n║               DEVELOPER - Adil                    ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then mainMenu() end
    if choice == 2 then
        gg.copyText("https://youtube.com/@Adilbajwa1170")
        gg.goURL("https://youtube.com/@Adilbajwa1170")
    elseif choice == 3 then
        gg.copyText("https://dc.me/Adilbajwa03")
        gg.goURL("https://dc.me/Adilbajwa03")
    elseif choice == 5 then
        mainMenu()
    end
    devMenu()
end

function supportMenu()
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        💳 SUPPORT THE CREATOR    ║",
        "║        💎 Discord:    adilbajwa03               ║", 
        "║        ❤️ Youtube: https://youtube.com/@adilbajwa1170?si=Psuvdks0A7iELnOQhttps://youtube.com/@adilbajwa1170?si=Psuvdks0A7iELnOQ║",
        "╚══════════════════════════════════╝",
        "🔙 BACK"
    }, nil, "╔════════════╗\n║                             SUPPORT - Adil Bajwa                   ║\n╚════════════╝")
    
    if not choice then mainMenu()
    elseif choice == 5 then mainMenu()
    end
    supportMenu()
end

function exitScript()
    if AdilAimbotRunning then
        AdilAimbotRunning = false
        AdilSmoothAimbotOff()
    end
    print("╔═════════════════╗")
    print("║ GRAND MOBILE SCRIPT  ║")
    print("║    Adil Bajwa EXITING..  ║")
    print("║                            ║")
    print("╚It's Devil 👿  script going OFF╝")
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
        "╔════════════════════╗",
        "║        👤 PLAYER MODS     ║",
        "║        🚗 CAR MODS         ║",
        "║        🔫 WEAPON MODS    ║",
        "║        👁️ VISUAL MODS      ║",
        "║        📍 TELEPORT          ║",
        "╠════════════════════╣",
        "║        🎯 AIMBOT Adil       ║",
        "║        ⚡ FPS BOOSTER       ║",  -- New Option Added Here
        "╠═══════════════════╣",
        "║        👑 DEVELOPER      ║",
        "║        💝 SUPPORT           ║",
        "╠═════════════════╣",
        "║        ❌ EXIT                   ║",
        "╚═════════════════╝"
    }, nil, "╔══════════════════════╗\n║ GRAND MOBILE SCRIPT Adil BAJWA 👿                   ║\n╚═════════════════════╝")
    
    if not choice then return end
    
    if choice == 2 then playerMenu()
    elseif choice == 3 then carMenu()
    elseif choice == 4 then gunMenu()
    elseif choice == 5 then visualMenu()
    elseif choice == 6 then tpMenu()
    elseif choice == 8 then AdilAimMenu()
    elseif choice == 9 then fpsBoosterMenu()  -- FPS Booster Sub-menu Trigger
    elseif choice == 11 then devMenu()
    elseif choice == 12 then supportMenu()
    elseif choice == 14 then exitScript()
    end
    
    menuuuvis = -1
end


--╔═══════════════════════════════════════════════════════════════════╗
--║                      SCRIPT START                                             ║
--╚═══════════════════════════════════════════════════════════════════╝

toast.success("╔═════════════╗\n║             Adil BAJWA 👿 SCRIPT LOADED 🔥                          ╚══════════════╝", 4)
gg.sleep(1500) 

while true do
    if gg.isVisible(true) then
        menuuuvis = 1
        gg.setVisible(false)
    end
    if menuuuvis == 1 then
        mainMenu()
    end
    gg.sleep(100)
end


    

