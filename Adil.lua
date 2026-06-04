gg.setVisible(false)

gg.alert("Wellcome ❤️ to Yojashv 👿 English Script This script is totally free 🎉 so avoid scammers ☠️ my discord @mr_traver." ) 

--╔═══════════════════════════════════════════════════════════════════╗
--║                                                                   ║
--║        ██╗   ██╗██╗   ██╗██╗   ██╗██████╗  █████╗          ██╗    ║
--║        ╚██╗ ██╔╝██║   ██║██║   ██║██╔══██╗██╔══██╗         ██║    ║
--║         ╚████╔╝ ██║   ██║██║   ██║██████╔╝███████║         ██║    ║
--║          ╚██╔╝  ██║   ██║╚██╗ ██╔╝██╔══██╗██╔══██║   ██    ██║    ║
--║           ██║   ╚██████╔╝ ╚████╔╝ ██║  ██║██║  ██║  ╚████╔╝██║    ║
--║           ╚═╝    ╚═════╝   ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝    ╚═══╝╚═╝    ║
--║                                                                   ║
--║                   ██████╗ ██╗███████╗███████╗                     ║
--║                   ██╔══██╗██║╚══███╔╝╚══███╔╝                     ║
--║                   ██████╔╝██║  ███╔╝   ███╔╝                      ║
--║                   ██╔══██╗██║ ███╔╝   ███╔╝                       ║
--║                   ██████╔╝██║███████╗███████╗                     ║
--║                   ╚═════╝ ╚═╝╚══════╝╚══════╝                     ║
--║                                                                   ║
--║                      W A R   A I M B O T                          ║
--║                                                                   ║
--║                        CREATED BY Yojashv                          ║
--║                    TELEGRAM: @yojashv                             ║
--║                                                                   ║
--╚═══════════════════════════════════════════════════════════════════╝

menuuuvis = 1
gg.clearResults()
gg.clearList()

--╔═══════════════════════════════════════════════════════════════════╗
--║                      SPECIAL EFFECTS                              ║
--╚═══════════════════════════════════════════════════════════════════╝

function showSuccess() 
    toast.success("✅ FEATURE ACTIVATED BY Yojashv ✨", 2) 
end

function showDisabled() 
    toast.hint("⚠️ FEATURE DISABLED BY Yojashv ⚠️", 2) 
end

function showError() 
    toast.error("❌ VALUE NOT FOUND ❌", 2) 
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    GLOBAL VARIABLES & SETUP                        ║
--╚═══════════════════════════════════════════════════════════════════╝

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






--═══════════════════════════════════════════════════════════════════
-- 💜 FIXED: INITIALIZE ALL VARIABLES FIRST
--═══════════════════════════════════════════════════════════════════

menuuuvis = 1
gg.clearResults()
gg.clearList()

-- Toast functions
function msg(s) 
    gg.toast("💜 Yojashv ➤ "..s)
end

function msgOff(s) 
    gg.toast("🖤 OFF ➤ "..s)
end

function msgErr() 
    gg.toast("❌ ERROR")
end

--═══════════════════════════════════════════════════════════════════
-- ⚡ CORE FUNCTIONS (FIXED)
--═══════════════════════════════════════════════════════════════════

-- Memory flags
local F = 16  -- Float
local D = 4   -- Dword
local Q = 32  -- Qword
local Ca = 4  -- C++ Data a
local Cd = 8  -- C++ Data d
local O = -2080896 -- Other
local A = 32  -- ARM

-- Global search function
function searchNumber(value, flags, ranges)
    gg.clearResults()
    gg.setRanges(ranges)
    gg.searchNumber(value, flags)
    return gg.getResults(gg.getResultCount())
end

-- Global edit function
function editAll(value, flags, ranges)
    local results = searchNumber(value, flags, ranges)
    if results and #results > 0 then
        for i = 1, #results do
            gg.setValues({{address = results[i].address, value = value, flags = flags}})
        end
        return true
    end
    return false
end

-- Set value with freeze option
function setValue(address, value, flags, freeze)
    local t = {{address = address, value = value, flags = flags}}
    if freeze then
        t[1].freeze = true
        gg.addListItems(t)
    else
        gg.setValues(t)
    end
end

--═══════════════════════════════════════════════════════════════════
-- 🎯 TOGGLE VARIABLES
--═══════════════════════════════════════════════════════════════════

fps120 = false
pingBoost = false
removeLag = false
smoothGame = false
ultraBoost = false



--═══════════════════════════════════════════════════════════════════
-- 🔥 120 FPS BOOST
--═══════════════════════════════════════════════════════════════════

function boost120FPS()
    fps120 = not fps120
    
    if fps120 then
        local success = false
        
        -- Search for FPS cap values
        local results = searchNumber("30", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do
                setValue(results[i].address, 120, D, true)
            end
            success = true
        end
        
        results = searchNumber("60", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do
                setValue(results[i].address, 120, D, true)
            end
            success = true
        end
        
        results = searchNumber("90", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do
                setValue(results[i].address, 120, D, true)
            end
            success = true
        end
        
        results = searchNumber("30.0", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do
                setValue(results[i].address, 120.0, F, true)
            end
            success = true
        end
        
        results = searchNumber("60.0", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do
                setValue(results[i].address, 120.0, F, true)
            end
            success = true
        end
        
        if success then
            msg("✅ 120 FPS BOOST ACTIVATED")
        else
            msg("⚠️ NO FPS VALUES FOUND")
            fps120 = false
        end
    else
        gg.clearList()
        msgOff("🖤 120 FPS BOOST OFF")
    end
    
    gg.clearResults()
    mainMenu()
end

--═══════════════════════════════════════════════════════════════════
-- 🌐 PING BOOST
--═══════════════════════════════════════════════════════════════════

function boostPing()
    pingBoost = not pingBoost
    
    if pingBoost then
        local success = false
        
        -- Reduce network timeout values
        local results = searchNumber("10000", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do
                setValue(results[i].address, 10, D, true)
            end
            success = true
        end
        
        results = searchNumber("5000", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do
                setValue(results[i].address, 5, D, true)
            end
            success = true
        end
        
        results = searchNumber("2000", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do
                setValue(results[i].address, 2, D, true)
            end
            success = true
        end
        
        results = searchNumber("100", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do
                setValue(results[i].address, 10, D, true)
            end
            success = true
        end
        
        if success then
            msg("✅ PING BOOST ACTIVATED")
        else
            msg("⚠️ NO NETWORK VALUES FOUND")
            pingBoost = false
        end
    else
        gg.clearList()
        msgOff("🖤 PING BOOST OFF")
    end
    
    gg.clearResults()
    mainMenu()
end

--═══════════════════════════════════════════════════════════════════
-- 🧹 REMOVE LAG
--═══════════════════════════════════════════════════════════════════

function removeGameLag()
    removeLag = not removeLag
    
    if removeLag then
        local success = false
        
        -- Lower shadow quality
        local results = searchNumber("1.0", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(30, #results) do
                setValue(results[i].address, 0.3, F, true)
            end
            success = true
        end
        
        -- Lower render distance
        results = searchNumber("1000", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do
                setValue(results[i].address, 400, F, true)
            end
            success = true
        end
        
        results = searchNumber("2000", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do
                setValue(results[i].address, 500, F, true)
            end
            success = true
        end
        
        -- Lower particle effects
        results = searchNumber("100", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do
                setValue(results[i].address, 20, F, true)
            end
            success = true
        end
        
        -- Disable VSync
        results = searchNumber("1", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do
                setValue(results[i].address, 0, D, true)
            end
            success = true
        end
        
        if success then
            msg("✅ LAG REMOVED")
        else
            msg("⚠️ NO GRAPHICS VALUES FOUND")
            removeLag = false
        end
    else
        gg.clearList()
        msgOff("🖤 LAG REMOVAL OFF")
    end
    
    gg.clearResults()
    mainMenu()
end

--═══════════════════════════════════════════════════════════════════
-- 🎮 SMOOTH GAME OPTIMIZER
--═══════════════════════════════════════════════════════════════════

function smoothGameOptimizer()
    smoothGame = not smoothGame
    
    if smoothGame then
        local success = false
        
        -- Optimize rendering
        local results = searchNumber("1.0", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(30, #results) do
                setValue(results[i].address, 0.8, F, true)
            end
            success = true
        end
        
        results = searchNumber("0.5", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(30, #results) do
                setValue(results[i].address, 0.3, F, true)
            end
            success = true
        end
        
        -- Remove motion blur
        results = searchNumber("1.0", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do
                setValue(results[i].address, 0.0, F, true)
            end
            success = true
        end
        
        if success then
            msg("✅ SMOOTH GAME ON")
        else
            msg("⚠️ NO OPTIMIZATION VALUES FOUND")
            smoothGame = false
        end
    else
        gg.clearList()
        msgOff("🖤 SMOOTH GAME OFF")
    end
    
    gg.clearResults()
    mainMenu()
end

--═══════════════════════════════════════════════════════════════════
-- 🔧 ONE CLICK ULTRA BOOST
--═══════════════════════════════════════════════════════════════════

function ultraBoostAll()
    ultraBoost = not ultraBoost
    
    if ultraBoost then
        local count = 0
        
        -- 120 FPS
        local results = searchNumber("30", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do 
                setValue(results[i].address, 120, D, true)
                count = count + 1
            end
        end
        
        results = searchNumber("60", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do 
                setValue(results[i].address, 120, D, true)
                count = count + 1
            end
        end
        
        results = searchNumber("30.0", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do 
                setValue(results[i].address, 120.0, F, true)
                count = count + 1
            end
        end
        
        -- Ping boost
        results = searchNumber("10000", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do 
                setValue(results[i].address, 10, D, true)
                count = count + 1
            end
        end
        
        results = searchNumber("5000", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do 
                setValue(results[i].address, 5, D, true)
                count = count + 1
            end
        end
        
        -- Lag removal
        results = searchNumber("1.0", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(20, #results) do 
                setValue(results[i].address, 0.3, F, true)
                count = count + 1
            end
        end
        
        results = searchNumber("1000", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do 
                setValue(results[i].address, 400, F, true)
                count = count + 1
            end
        end
        
        -- Disable VSync
        results = searchNumber("1", D, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do 
                setValue(results[i].address, 0, D, true)
                count = count + 1
            end
        end
        
        -- Remove motion blur
        results = searchNumber("1.0", F, Ca|O)
        if results and #results > 0 then
            for i = 1, math.min(10, #results) do 
                setValue(results[i].address, 0.0, F, true)
                count = count + 1
            end
        end
        
        if count > 0 then
            msg("🚀 ULTRA BOOST: "..count.." VALUES MODIFIED")
        else
            msg("⚠️ NO VALUES FOUND FOR ULTRA BOOST")
            ultraBoost = false
        end
    else
        gg.clearList()
        msgOff("🖤 ULTRA BOOST OFF")
    end
    
    gg.clearResults()
    mainMenu()
end

--═══════════════════════════════════════════════════════════════════
-- 🔄 RESET ALL BOOSTS
--═══════════════════════════════════════════════════════════════════

function resetAllBoosts()
    gg.clearList()
    gg.clearResults()
    
    local count = 0
    
    -- Reset FPS values
    local results = searchNumber("120", D, Ca|O)
    if results and #results > 0 then
        for i = 1, math.min(20, #results) do
            setValue(results[i].address, 60, D)
            count = count + 1
        end
    end
    
    results = searchNumber("120.0", F, Ca|O)
    if results and #results > 0 then
        for i = 1, math.min(20, #results) do
            setValue(results[i].address, 60.0, F)
            count = count + 1
        end
    end
    
    -- Reset network values
    results = searchNumber("10", D, Ca|O)
    if results and #results > 0 then
        for i = 1, math.min(10, #results) do
            setValue(results[i].address, 10000, D)
            count = count + 1
        end
    end
    
    -- Reset graphics values
    results = searchNumber("0.3", F, Ca|O)
    if results and #results > 0 then
        for i = 1, math.min(20, #results) do
            setValue(results[i].address, 1.0, F)
            count = count + 1
        end
    end
    
    results = searchNumber("400", F, Ca|O)
    if results and #results > 0 then
        for i = 1, math.min(10, #results) do
            setValue(results[i].address, 1000, F)
            count = count + 1
        end
    end
    
    -- Reset VSync
    results = searchNumber("0", D, Ca|O)
    if results and #results > 0 then
        for i = 1, math.min(10, #results) do
            setValue(results[i].address, 1, D)
            count = count + 1
        end
    end
    
    -- Reset motion blur
    results = searchNumber("0.0", F, Ca|O)
    if results and #results > 0 then
        for i = 1, math.min(10, #results) do
            setValue(results[i].address, 1.0, F)
            count = count + 1
        end
    end
    
    fps120 = false
    pingBoost = false
    removeLag = false
    smoothGame = false
    ultraBoost = false
    
    msg("🔄 RESET "..count.." VALUES")
    gg.clearResults()
    mainMenu()
end

--═══════════════════════════════════════════════════════════════════
-- 👑 CREDIT MENU
--═══════════════════════════════════════════════════════════════════

function creditMenu()
    gg.alert([[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                                     ┃
┃     💜 Yojashv FPS BOOSTER 💜       ┃
┃            ULTRA EDITION            ┃
┃                                     ┃
┃        🎮 GRAND MOBILE 🎮           ┃
┃                                     ┃
┃     ⚡ 120 FPS UNLOCKER ⚡          ┃
┃     🌐 PING REDUCER 🌐              ┃
┃     🧹 LAG REMOVER 🧹               ┃
┃     🎮 SMOOTH GAMEPLAY 🎮           ┃
┃                                     ┃
┃     📲 TELEGRAM: @Yojashv          ┃
┃                                     ┃
┃        MADE WITH 💜 BY Yojashv     ┃
┃                                     ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    ]])
    mainMenu()
end

--═══════════════════════════════════════════════════════════════════
-- 🚀 MAIN MENU
--═══════════════════════════════════════════════════════════════════

function FPSmenu()
    local c = gg.choice({
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "💜 120 FPS BOOST     " .. (fps120 and "✅ ON" or "❌ OFF"),
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "🌐 PING BOOST        " .. (pingBoost and "✅ ON" or "❌ OFF"),
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "🧹 REMOVE LAG        " .. (removeLag and "✅ ON" or "❌ OFF"),
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "🎮 SMOOTH GAME       " .. (smoothGame and "✅ ON" or "❌ OFF"),
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "🚀 ULTRA BOOST (ALL) " .. (ultraBoost and "✅ ON" or "❌ OFF"),
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "🔄 RESET ALL BOOSTS",
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "👑 CREDIT / INFO",
        "❌ EXIT"
    }, nil, [[
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                                     ┃
┃       💜 Yojashv FPS BOOSTER 💜     ┃
┃         GRAND MOBILE ULTRA          ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
    ]])
    
    if not c then return end
    
    if c == 2 then boost120FPS()
    elseif c == 4 then boostPing()
    elseif c == 6 then removeGameLag()
    elseif c == 8 then smoothGameOptimizer()
    elseif c == 10 then ultraBoostAll()
    elseif c == 12 then resetAllBoosts()
    elseif c == 14 then creditMenu()
    elseif c == 15 then mainMenu()
    end
end





--╔═══════════════════════════════════════════════════════════════════╗
--║                    CORE FUNCTIONS                                  ║
--╚═══════════════════════════════════════════════════════════════════╝

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
        toast.hint("🔍 NO VALUES FOUND 🔍")
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

--╔═══════════════════════════════════════════════════════════════════╗
--║                    TOGGLE VARIABLES                                ║
--╚═══════════════════════════════════════════════════════════════════╝

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

--╔═══════════════════════════════════════════════════════════════════╗
--║                    Yojashv AIMBOT SYSTEM                           ║
--╚═══════════════════════════════════════════════════════════════════╝

YuvrajAimbotRunning = false
YuvrajSelectedStrength = 2
YuvrajOldAimValue = "1042536202"

YuvrajStrengthNames = {
    "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
    "🌟 EXTRA LIGHT     [ VERY SAFE ] 🌟",
    "⭐⭐ LIGHT          [ SAFE ] ⭐⭐",
    "⭐⭐⭐ NORMAL        [ BALANCED ] ⭐⭐⭐",
    "⭐⭐⭐⭐ STRONG       [ AGGRESSIVE ] ⭐⭐⭐⭐",
    "⭐⭐⭐⭐⭐ ULTRA       [ MAXIMUM ] ⭐⭐⭐⭐⭐",
    "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
}

YuvrajStrengthValues = {
    "1042536202",
    "1048536202",
    "1051999999",
    "1055999999",
    "1076999999",
    "1080099999"
}

function YuvrajSmoothAimbot()
    Z.S(YuvrajOldAimValue, D, Ca|O)
    if #Result > 0 then
        gg.editAll(YuvrajStrengthValues[YuvrajSelectedStrength], D)
        gg.clearResults()
        return true
    end
    return false
end

function YuvrajSmoothAimbotOff()
    Z.S(YuvrajStrengthValues[YuvrajSelectedStrength], D, Ca|O)
    if #Result > 0 then
        gg.editAll(YuvrajOldAimValue, D)
        gg.clearResults()
        return true
    end
    return false
end

function YuvrajStartAimbot()
    if YuvrajAimbotRunning then return end
    
    YuvrajAimbotRunning = true
    gg.setVisible(false)
    
    toast.hint("╔══════════════════════════════════════════════════╗\n║     🎯 Yojashv AIMBOT ACTIVATED 🎯              ║\n║     " .. YuvrajStrengthNames[YuvrajSelectedStrength] .. "     ║\n║     PRESS GG ICON TO STOP                        ║\n╚══════════════════════════════════════════════════╝", 4)
    
    local tick = 0
    while YuvrajAimbotRunning do
        if gg.isVisible() then
            gg.setVisible(false)
            YuvrajAimbotRunning = false
            break
        end
        
        if tick % 2 == 0 then
            YuvrajSmoothAimbot()
        end
        
        tick = tick + 1
        gg.sleep(10)
        
        if tick > 1000 then tick = 0 end
    end
    
    YuvrajSmoothAimbotOff()
    gg.setVisible(true)
    toast.hint("🛑 Yojashv AIMBOT STOPPED 🛑")
    YuvrajAimbotRunning = false
    YuvrajAimMenu()
end

function YuvrajStartGrabAimbot()
    if YuvrajAimbotRunning then return end
    
    YuvrajAimbotRunning = true
    gg.setVisible(false)
    toast.hint("╔══════════════════════════════════════════════════╗\n║     🫴 GRAB AIMBOT ACTIVATED 🫴                  ║\n║     HOLD AIM BUTTON TO ACTIVATE                 ║\n║     PRESS GG ICON TO STOP                        ║\n╚══════════════════════════════════════════════════╝", 4)
    
    local isAiming = false
    local aimValue = YuvrajOldAimValue
    
    while YuvrajAimbotRunning do
        if gg.isVisible() then
            gg.setVisible(false)
            YuvrajAimbotRunning = false
            break
        end
        
        Z.S(aimValue, D, Ca|O)
        if #Result > 0 then
            local val = gg.getValues({{address = Result[1].address, flags = D}})
            local currentVal = tostring(val[1].value)
            
            if currentVal ~= aimValue then
                if not isAiming then
                    Z.S(YuvrajOldAimValue, D, Ca|O)
                    if #Result > 0 then
                        gg.editAll(YuvrajStrengthValues[YuvrajSelectedStrength], D)
                        isAiming = true
                    end
                end
                aimValue = currentVal
            else
                if isAiming then
                    Z.S(YuvrajStrengthValues[YuvrajSelectedStrength], D, Ca|O)
                    if #Result > 0 then
                        gg.editAll(YuvrajOldAimValue, D)
                        isAiming = false
                    end
                end
            end
            gg.clearResults()
        end
        
        gg.sleep(50)
    end
    
    if isAiming then
        Z.S(YuvrajStrengthValues[YuvrajSelectedStrength], D, Ca|O)
        if #Result > 0 then
            gg.editAll(YuvrajOldAimValue, D)
            gg.clearResults()
        end
    end
    
    gg.setVisible(true)
    toast.hint("🛑 GRAB AIMBOT STOPPED 🛑")
    YuvrajAimbotRunning = false
    YuvrajAimMenu()
end

function YuvrajSelectStrength()
    local menu = {}
    for i = 1, 5 do
        if i == YuvrajSelectedStrength then
            menu[i] = YuvrajStrengthNames[i] .. "    ✅ ACTIVE"
        else
            menu[i] = YuvrajStrengthNames[i]
        end
    end
    menu[#menu + 1] = "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    menu[#menu + 1] = "🔙 RETURN TO AIMBOT MENU"
    
    local choice = gg.choice(menu, nil, "SELECT AIMBOT STRENGTH")
    
    if not choice or choice == #menu then
        YuvrajAimMenu()
        return
    end
    
    YuvrajSelectedStrength = choice
    
    if choice == 1 then
        toast.success("🌟 EXTRA LIGHT - VERY SAFE 🌟")
    elseif choice == 2 then
        toast.success("🌟 LIGHT - SAFE 🌟")
    elseif choice == 3 then
        toast.success("🌟 NORMAL - BALANCED 🌟")
    elseif choice == 4 then
        toast.hint("⭐⭐⭐⭐ STRONG - AGGRESSIVE ⭐⭐⭐⭐")
    elseif choice == 5 then
        toast.hint("⭐⭐⭐⭐⭐ ULTRA - MAXIMUM ⭐⭐⭐⭐⭐")
    end
    
    YuvrajSelectStrength()
end

function YuvrajAimMenu()
    menuuuvis = 0
    
    local choice = gg.choice({
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "        🎯 START SMOOTH AIMBOT 🎯",
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "        🫴 START GRAB AIMBOT 🫴",
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "        ⚙️  AIM STRENGTH:",
        "        " .. YuvrajStrengthNames[YuvrajSelectedStrength],
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "        🛑 STOP AIMBOT",
        "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━",
        "        🔙 BACK TO MAIN MENU"
    }, nil, "Yojashv BIZZ WAR  AIMBOT  VIP EDITION")
    
    if not choice then mainMenu() end
    
    if choice == 2 then
        YuvrajStartAimbot()
    elseif choice == 4 then
        YuvrajStartGrabAimbot()
    elseif choice == 7 then
        YuvrajSelectStrength()
    elseif choice == 9 then
        if YuvrajAimbotRunning then
            YuvrajAimbotRunning = false
            YuvrajSmoothAimbotOff()
            toast.hint("🛑 AIMBOT STOPPED 🛑")
        else
            toast.hint("⚠️ AIMBOT NOT RUNNING ⚠️")
        end
        YuvrajAimMenu()
    elseif choice == 11 then
        mainMenu()
    end
    
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    PLAYER MODS                                     ║
--╚═══════════════════════════════════════════════════════════════════╝

function toggleGodMode()
    local oldState = gm4 == "✅"
    if hookPLAYER(-4, F, oldState and 505050 or 100) then
        gm4 = oldState and "✅" or "❌"
        if oldState then showSuccess() else showDisabled() end
    end
    gg.clearResults()
    playerMenu()
end

function toggleGodModeV2()
    local oldState = gm9 == "✅"
    if not oldState then gg.clearList() end
    if hookPLAYER(-4, F, oldState and 9999989.0 or 100, oldState) then
        gm9 = oldState and "✅" or "❌"
        if oldState then showSuccess() else showDisabled() end
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
    local oldState = shv222 == "✅"
    Z.S("4647714816510698455", Q, Cd|O|Ca)
    Z.W(oldState and "4489188112626352128" or "4489188110482223923", 0x18, Q)
    gg.clearResults()
    shv222 = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    playerMenu()
end

function toggleSpeedV2()
    local oldState = mbq == "✅"
    Z.S(oldState and "4489188110487257088" or "4489188110498131456", Q, Ca|Cd|O)
    if #Result ~= 0 then
        gg.editAll(oldState and "4489188110498131456" or "4489188110487257088", Q)
        mbq = oldState and "✅" or "❌"
        if oldState then showSuccess() else showDisabled() end
    else
        showError()
    end
    gg.clearResults()
    playerMenu()
end

function toggleHighJump()
    local oldState = hjj == "✅"
    Z.S("4798022456217645875", Q, Cd|O)
    Z.W(oldState and "-150" or "-0.10000000149", -0x4, F)
    gg.clearResults()
    hjj = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    playerMenu()
end

function toggleWallhack()
    local oldState = walg == "✅"
    Z.S(oldState and "1114636288" or "1114767360", Q, Ca|O|Cd)
    if #Result ~= 0 then
        gg.editAll(oldState and "1114767360" or "1114636288", Q)
        walg = oldState and "✅" or "❌"
        if oldState then showSuccess() else showDisabled() end
    else
        showError()
    end
    gg.clearResults()
    playerMenu()
end

function toggleFastKill()
    local oldState = fastkil == "✅"
    Z.S(oldState and "9187343240761165228" or "4489188110505082880", Q, Ca|O|Cd)
    if #Result ~= 0 then
        gg.editAll(oldState and "4489188110505082880" or "9187343240761165228", Q)
        Z.S(oldState and "4489188110487257088" or "4489188110499840000", Q, Ca|O|Cd)
        if #Result ~= 0 then
            gg.editAll(oldState and "4489188110499840000" or "4489188110487257088", Q)
        end
        fastkil = oldState and "✅" or "❌"
        if oldState then showSuccess() else showDisabled() end
    else
        showError()
    end
    gg.clearResults()
    playerMenu()
end

function toggleSharpTurns()
    local oldState = whh == "✅"
    if not oldState then gg.clearList() end
    if hookPLAYER(28, F, oldState and "65" or "7.5", oldState) then
        whh = oldState and "✅" or "❌"
        if oldState then showSuccess() else showDisabled() end
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
    local oldState = graviq == "✅"
    Z.S("-4 651 317 692 702 523 392", Q, Cd|O|Cd)
    Z.W(oldState and "-1164854368" or "-1140649361", -0x4, D)
    gg.clearResults()
    graviq = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    playerMenu()
end

function toggleGravityV2()
    local oldState = graviqq == "✅"
    Z.S("-4 651 317 692 702 523 392", Q, Cd|O|Cd)
    Z.W(oldState and "-1164859368" or "-1140649361", -0x4, D)
    gg.clearResults()
    graviqq = oldState and "✅" or "❌"
    if oldState then showSuccess() else showDisabled() end
    playerMenu()
end

function playerMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        🏃 SPEED HACK             ║" .. (shv222 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🏃 SPEED HACK V2          ║" .. (mbq == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        💚 GOD MODE               ║" .. (gm4 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        💚 GOD MODE V2            ║" .. (gm9 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🛡️ ARMOR PACIFIER         ║" .. (gm5 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        ❤️ RESTORE HEALTH         ║",
        "║        💀 SUICIDE                ║",
        "║        🧱 WALK THROUGH WALLS     ║" .. (walg == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        ⬆️ FLIP UP                ║",
        "║        ⬇️ FLIP DOWN              ║",
        "║        👊 FAST KILL (Fists)      ║" .. (fastkil == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🦘 HIGH JUMP              ║" .. (hjj == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔄 SHARP TURNS            ║" .. (whh == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🌎 GRAVITY V1             ║" .. (graviq == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🌎 GRAVITY V2             ║" .. (graviqq == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO MAIN MENU"
    }, nil, "PLAYER MODS - Yojashv")
    
    if not choice then mainMenu() end
    
    local actions = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17}
    if choice == actions[1] then toggleSpeed()
    elseif choice == actions[2] then toggleSpeedV2()
    elseif choice == actions[3] then toggleGodMode()
    elseif choice == actions[4] then toggleGodModeV2()
    elseif choice == actions[5] then toggleArmor()
    elseif choice == actions[6] then restoreHealth()
    elseif choice == actions[7] then toggleSuicide()
    elseif choice == actions[8] then toggleWallhack()
    elseif choice == actions[9] then flipUp()
    elseif choice == actions[10] then flipDown()
    elseif choice == actions[11] then toggleFastKill()
    elseif choice == actions[12] then toggleHighJump()
    elseif choice == actions[13] then toggleSharpTurns()
    elseif choice == actions[14] then toggleGravity()
    elseif choice == actions[15] then toggleGravityV2()
    elseif choice == actions[17] then mainMenu()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                      CAR MODS                                     ║
--╚═══════════════════════════════════════════════════════════════════╝

function toggleCarGodMode()
    local oldState = gmcarchik == "✅"
    
    -- Engine vehicle structural array signature search
    Z.S("4812096201845506048", Q, Ca|Cd|O)
    
    if #Result ~= 0 then
        -- 0x5E0 naya updated health offset hai, aur true lagane se value freeze ho jayegi
        for i, v in ipairs(Result) do
            setvalue(v.address + 0x5E0, oldState and 1000 or 999999, F, not oldState)
        end
        
        gmcarchik = oldState and "❌" or "✅"
        if oldState then 
            gg.clearList() -- Freeze list clear karega jab off karoge
            showDisabled() 
        else 
            showSuccess() 
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
        toast.hint("🛵 PRESS BRAKE TO ACCELERATE 🛵")
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
        "║        ⚡ SPEED HACK              ║" .. (shcar == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🛵 MOPED SPEED            ║" .. (mopsh == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🚀 LAUNCH TO SPACE        ║",
        "║        ⬆️ LAUNCH UPWARDS         ║",
        "║        ⚙️ ENGINE BOOST           ║" .. (upmotor == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔄 ANTI FLIP              ║" .. (perevorot1 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🫸 PUT ON WHEELS          ║" .. (carkoles1 == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO MAIN MENU"
    }, nil, "CAR MODS - Yojashv")
    
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
        "║        👁️ ESP ON NAMES           ║" .. (esplol == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🤍 WHITE CHAMS            ║" .. (chamsiwhite == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        ❤️ RED CHAMS              ║" .. (chamsired == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        👓 WIDE FOV               ║" .. (fovv == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔭 ULTRA WIDE FOV         ║" .. (ulfovq == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🔤 CHANGE LOGIN           ║",
        "║        ✏️ CHANGE NICKNAME        ║",
        "║        👻 INVISIBLE WALLS        ║" .. (invwal == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO MAIN MENU"
    }, nil, "VISUAL MODS - Yojashv")
    
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
    gg.alert("WEAPON IDs - Yojashv\n║  1-Knife   2-Pistol   3-Deagle   4-M4   5-AK47        \n  6-MP5     7-Shotgun  8-Sniper  9-RPG   10-Minigun     \n")
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
    }, nil, "ANTI RELOAD - Yojashv")
    
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
    }, nil, "INFINITE AMMO - Yojashv")
    
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
    }, nil, "FREEZE SLOTS - Yojashv")
    
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
    }, nil, "GIVE WEAPON - Yojashv")
    
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
    }, nil, "GIVE AMMO - Yojashv")
    
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
        "║        ⚡ FIRE RATE (No Recoil)   ║",
        "║        🎯 SCOPE SPEED            ║" .. (shshq == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🎯 NO SPREAD              ║" .. (sc == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        🌾 FARM SKILLS            ║" .. (fsk == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        ➕ ASSIST + C             ║" .. (avty == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "║        ⚡➕ FIRE RATE + SPEED     ║" .. (alertr == "✅" and " ✅ ACTIVE" or " ❌ INACTIVE"),
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO MAIN MENU"
    }, nil, "WEAPON MODS - Yojashv")
    
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

FILE_PATH = gg.EXT_STORAGE .. "/Yuvraj_points.txt"
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
    }, nil, "MANAGE POINTS - Yojashv")
    
    if not choice then return tpMenu() end
    
    if choice == 2 then
        local x, y, z = getCurrentCoords()
        if x then
            local text = string.format("X: %.2f\nY: %.2f\nZ: %.2f", x, y, z)
            local res = gg.alert(text, "BACK", "COPY")
            if res == 2 then
                gg.copyText(text)
                toast.success("📋 COORDINATES COPIED 📋 ")
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
                toast.success("💾 POINT SAVED: " .. prompt[1] .. "")
            end
        end
        managePointsMenu()
        
    elseif choice == 4 then
        viewSavedPoints()
        
    elseif choice == 5 then
        if gg.alert("🗑️ DELETE ALL POINTS?", "YES", "NO") == 1 then
            savedPoints = {}
            savePoints()
            toast.success("🗑️ ALL POINTS CLEARED 🗑️")
        end
        managePointsMenu()
        
    elseif choice == 7 then
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
        list[i] = string.format("📍 %s", p.name)
    end
    list[#list + 1] = "🔙 BACK"
    
    local q = gg.choice(list, nil, "SELECT POINT - Yojashv")
    if not q or q == #list then return managePointsMenu() end
    
    local p = savedPoints[q]
    local action = gg.choice({"『 ✈️ 』 TELEPORT", "『 🗑️ 』 DELETE", "🔙 BACK"}, nil, p.name)
    
    if action == 1 then
        doTeleport(p.x, p.y, p.z)
    elseif action == 2 then
        table.remove(savedPoints, q)
        savePoints()
        toast.success("🗑️ POINT DELETED 🗑️ ")
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
    {"🅿️ Arzamas parking", 407, 604, 15},
    {"🅿️ Yuzny parking", 2435, -1735, 23},
    {"🅿️ Baterevo parking", 1764, 2477, 17},
    {"🅿️ Edovo parking", -2375, 2699, 40},
    {"💰 Economy Autosalon", 2323, -1800, 22},
    {"💎 Comfort Autosalon", 2217, 2991, 14},
    {"👑 Premium Autosalon", 602, 998, 12},
    {"🏍️ Motosalon", 340, 479, 12}
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

OCGs = {
    {"💀 Pink OCG", 482, 749, 15},
    {"💀 Tambov Gang", 2425, -1922, 22},
    {"💀 Kurgan Gang", 2285, 1369, 11},
    {"🖤 Black Market", -2249, 245, 24.5}
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
    {"🛣️ Road Service Arzamas", 636, 897, 12}
}

entertainment = {
    {"🎰 Grand Casino", 327, 2762, 8},
    {"🔨 Auction", 443, -393, 9},
    {"📊 Bookmaker", 280, 2717, 8},
    {"🏎️ Drift Zone", 2333, 1182, 20},
    {"🌳 Park", 330, 2670, 8}
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
    {"🏪 24/7 Shop", -356, -1926.2, 41.2},
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

function showPublicPlaces() showLocations(publicPlaces, "╔══════════════════════════════════════════════════╗\n║                PUBLIC PLACES - Yojashv               ║\n╚══════════════════════════════════════════════════╝") end
function showStations() showLocations(stations, "╔══════════════════════════════════════════════════╗\n║                  STATIONS - Yojashv                  ║\n╚══════════════════════════════════════════════════╝") end
function showParking() showLocations(parking, "╔══════════════════════════════════════════════════╗\n║               PARKING LOTS - Yojashv                 ║\n╚══════════════════════════════════════════════════╝") end
function showGovernment() showLocations(government, "╔══════════════════════════════════════════════════╗\n║               GOVERNMENT - Yojashv                   ║\n╚══════════════════════════════════════════════════╝") end
function showOCGs() showLocations(OCGs, "╔══════════════════════════════════════════════════╗\n║                OCGs - Yojashv                    ║\n╚══════════════════════════════════════════════════╝") end
function showStarterJobs() showLocations(starterJobs, "╔══════════════════════════════════════════════════╗\n║              STARTER JOBS - Yojashv                  ║\n╚══════════════════════════════════════════════════╝") end
function showJobs() showLocations(jobs, "╔══════════════════════════════════════════════════╗\n║                  JOBS - Yojashv                      ║\n╚══════════════════════════════════════════════════╝") end
function showEntertainment() showLocations(entertainment, "╔══════════════════════════════════════════════════╗\n║              ENTERTAINMENT - Yojashv                 ║\n╚══════════════════════════════════════════════════╝") end
function showHeliClubs() showLocations(heliClubs, "╔══════════════════════════════════════════════════╗\n║               HELI CLUBS - Yojashv                   ║\n╚══════════════════════════════════════════════════╝") end
function showBuyers() showLocations(buyers, "╔══════════════════════════════════════════════════╗\n║                 BUYERS - Yojashv                     ║\n╚══════════════════════════════════════════════════╝") end
function showBusinesses() showLocations(businesses, "╔══════════════════════════════════════════════════╗\n║               BUSINESSES - Yojashv                   ║\n╚══════════════════════════════════════════════════╝") end
function showQuarries() showLocations(quarries, "╔══════════════════════════════════════════════════╗\n║                QUARRIES - Yojashv                    ║\n╚══════════════════════════════════════════════════╝") end

function teleportByFootMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        🏢 PUBLIC PLACES          ║",
        "║        🚉 STATIONS               ║",
        "║        🅿️ PARKING LOTS           ║",
        "║        👮 GOVERNMENT             ║",
        "║        🕵️ OCGs                   ║",
        "║        🔰 STARTER JOBS           ║",
        "║        💼 JOBS                   ║",
        "║        🎉 ENTERTAINMENT          ║",
        "║        🚁 HELI CLUBS             ║",
        "║        💰 BUYERS                 ║",
        "║        💵 BUSINESSES             ║",
        "║        ⛏️ QUARRIES               ║",
        "║        📍 MY POINTS              ║",
        "╚══════════════════════════════════╝",
        "🔙 BACK"
    }, nil, "╔══════════════════════════════════════════════════╗\n║            TELEPORT BY FOOT - Yojashv                 ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then tpMenu() end
    if choice == 2 then showPublicPlaces()
    elseif choice == 3 then showStations()
    elseif choice == 4 then showParking()
    elseif choice == 5 then showGovernment()
    elseif choice == 6 then showOCGs()
    elseif choice == 7 then showStarterJobs()
    elseif choice == 8 then showJobs()
    elseif choice == 9 then showEntertainment()
    elseif choice == 10 then showHeliClubs()
    elseif choice == 11 then showBuyers()
    elseif choice == 12 then showBusinesses()
    elseif choice == 13 then showQuarries()
    elseif choice == 14 then viewSavedPoints()
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
    }, nil, "TELEPORT - Yojashv")
    
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
--║                    Casino Martingale Bot                          ║
--╚═══════════════════════════════════════════════════════════════════╝

function yuvrajCasinoMartingaleBot()
    menuuuvis = 0
    
    -- 1. User se setup input maangna (Coordinates aur Betting settings)
    local setup = gg.prompt({
        "📍 ENTER SPIN BUTTON X COORDINATE:",
        "📍 ENTER SPIN BUTTON Y COORDINATE:",
        "💰 ENTER STARTING BET AMOUNT (₽):",
        "🎰 ENTER TOTAL AUTOPLAY SPINS:"
    }, {
        "640",  -- Default placeholder for X
        "420",  -- Default placeholder for Y
        "1000", -- Starting Bet
        "20"    -- Total Spins count
    }, {
        "number", "number", "number", "number"
    })
    
    if not setup then return mainMenu() end
    
    local targetX = tonumber(setup[1])
    local targetY = tonumber(setup[2])
    local baseBet = tonumber(setup[3])
    local maxSpins = tonumber(setup[4])
    
    local currentBet = baseBet
    gg.setVisible(false)
    
    toast.hint("🚀 CASINO MARTINGALE BOT ACTIVATED 🚀\nHOLD GG ICON TO FORCE STOP", 4)
    gg.sleep(1000)
    
    for spin = 1, maxSpins do
        -- Anti-cheat emergency break check (Agar user GG icon open kare toh bot ruk jaye)
        if gg.isVisible() then
            gg.setVisible(true)
            toast.hint("🛑 CASINO BOT FORCE STOPPED BY USER", 2)
            return mainMenu()
        end
        
        -- Screen par user ke diye gaye coordinates par click karna
        gg.touch({x = targetX, y = targetY}, true)
        toast.hint("🎰 Spin #" .. spin .. " | Current Bet: " .. currentBet .. " ₽", 2)
        
        -- Game loop update ka wait (3 to 4 seconds random delay taaki anti-cheat track na kare)
        local randomWait = math.random(3200, 4100)
        gg.sleep(randomWait)
        
        -- 2. Win / Loss Status Input (Kyunki casino server-side hai, game script khud check nahi kar sakti)
        gg.setVisible(true)
        local status = gg.choice({
            "✅ I WON THIS ROUND!",
            "❌ I LOST THIS ROUND (Double Down)"
        }, nil, "╔═════════════════════════════════╗\n  ROUND " .. spin .. " RESULT? (Bet: " .. currentBet .. " ₽)\n╚═════════════════════════════════╝")
        
        if not status then 
            toast.hint("🛑 BOT PAUSED BY USER", 2)
            break 
        end
        
        if status == 1 then
            -- Jeet gaye! Bet ko wapas normal starting amount par reset karo
            currentBet = baseBet
            toast.success("🎉 PROFIT SECURED! BET RESET TO: " .. currentBet .. " ₽", 2)
        elseif status == 2 then
            -- Haar gaye! Martingale strategy ke mutabik agli bet double karo
            currentBet = currentBet * 2
            toast.hint("⚠️ LOSS DETECTED! NEXT BET DOUBLED: " .. currentBet .. " ₽", 2)
        end
        
        gg.setVisible(false)
        gg.sleep(1000)
    end
    
    gg.setVisible(true)
    gg.alert("🏁 CASINO AUTOMATION LOOP COMPLETED!\nYour final optimized bet tracking state has ended.")
    mainMenu()
end

function yuvrajMartingaleCalculatorRoute()
    menuuuvis = 0
    
    -- User se budget aur base bet ka input lena
    local input = gg.prompt({
        "💰 ENTER YOUR TOTAL CHIPS / BALANCE (₽):",
        "💵 ENTER STARTING BASE BET AMOUNT (₽):"
    }, {
        "50000", -- Default Total Balance Placeholder
        "1000"   -- Default Starting Bet Placeholder
    }, {
        "number", "number"
    })
    
    if not input then return mainMenu() end
    
    local totalBalance = tonumber(input[1])
    local currentBet = tonumber(input[2])
    
    if currentBet > totalBalance then
        gg.alert("❌ ERROR: Starting bet cannot be greater than your total balance!")
        return yuvrajMartingaleCalculatorRoute()
    end
    
    -- Dynamic table calculation variables
    local matrixText = "📊 Yojashv AUTOMATIC CASINO ROUTE 📊\n"
    matrixText = matrixText .. "━━━━━━━━━━━━━━━━━━━━━━━━\n"
    matrixText = matrixText .. "Your Balance: " .. totalBalance .. " ₽\n"
    matrixText = matrixText .. "Starting Bet: " .. currentBet .. " ₽\n"
    matrixText = matrixText .. "━━━━━━━━━━━━━━━━━━━━━━━━\n\n"
    matrixText = matrixText .. "Round | Bet Size | Total Loss If Lost\n"
    matrixText = matrixText .. "----------------------------------------\n"
    
    local accumulatedLoss = 0
    local safeRounds = 0
    local tempBalance = totalBalance
    
    -- 10 rounds tak ka mathematical progression calculation loop
    for round = 1, 10 do
        accumulatedLoss = accumulatedLoss + currentBet
        
        if tempBalance >= currentBet then
            matrixText = matrixText .. string.format("  #%d   |   %d ₽   |   %d ₽\n", round, currentBet, accumulatedLoss)
            tempBalance = tempBalance - currentBet
            safeRounds = round
            currentBet = currentBet * 2 -- Martingale rule multiplication
        else
            matrixText = matrixText .. string.format("  #%d   |   ⚠️ INSUFFICIENT BALANCE ⚠️\n", round)
        end
    end
    
    matrixText = matrixText .. "\n━━━━━━━━━━━━━━━━━━━━━━━━\n"
    matrixText = matrixText .. "🛡️ SAFE ROUTE VERDICT:\n"
    matrixText = matrixText .. "Aap lagatar " .. safeRounds .. " baar HAAR jhel sakte hain.\n"
    if safeRounds >= 6 then
        matrixText = matrixText .. "🟢 STATUS: HIGHLY SAFE ROUTE (Low Risk)"
    elseif safeRounds >= 4 then
        matrixText = matrixText .. "🟡 STATUS: MEDIUM RISK (Be Careful)"
    else
        matrixText = matrixText .. "🔴 STATUS: CRITICAL RISK! Increase Balance."
    end
    matrixText = matrixText .. "\n━━━━━━━━━━━━━━━━━━━━━━━━"
    
    -- Output display inside GameGuardian panel with interaction gates
    local choice = gg.alert(matrixText, "🔙 MAIN MENU", "🔄 RE-CALCULATE")
    if choice == 2 then 
        yuvrajMartingaleCalculatorRoute() 
    else 
        mainMenu() 
    end
end

function casinoMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║     🤖 CASINO AUTO-BET BOT       ║",
        "║     📊 MARTINGALE CALCULATOR     ║",
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO MAIN MENU"
    }, nil, "CASINO HACKS - Yojashv")
    
    if not choice then return mainMenu() end
    
    if choice == 2 then 
        yuvrajCasinoMartingaleBot()
    elseif choice == 3 then 
        yuvrajMartingaleCalculatorRoute()
    elseif choice == 5 then 
        mainMenu()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    Automation                                     ║
--╚═══════════════════════════════════════════════════════════════════╝

local recordedRoute = {}
local isRecording = false
local RECORD_FILE = gg.EXT_STORAGE .. "/yuvraj_macro_route.txt"

-- 🎬 1. RECORDING FUNCTION
function startYuvrajRecording()
    if isRecording then 
        toast.hint("⚠️ RECORDING ALREADY RUNNING!", 2)
        return automationMenu()
    end
    
    recordedRoute = {} -- Purana data clear
    isRecording = true
    gg.setVisible(false)
    toast.success("🔴 RECORDING STARTED!\nDrive your route. Press GG Icon to STOP & SAVE.", 4)
    
    local startTime = os.time()
    local lastX, lastY, lastZ = 0, 0, 0
    
    while isRecording do
        -- Agar user GG Icon open kare toh recording rok do aur save karo
        if gg.isVisible() then
            isRecording = false
            gg.setVisible(false)
            break
        end
        
        -- Current location fetch karna aapke core engine se
        local cx, cy, cz = getCurrentCoords()
        if cx then
            local currentTime = os.time() - startTime
            -- Sirf tabhi record karo agar character thoda sa bhi hila ho ya samay beeta ho
            if cx ~= lastX or cy ~= lastY then
                table.insert(recordedRoute, {x = cx, y = cy, z = cz, time = currentTime})
                lastX, lastY, lastZ = cx, cy, cz
            end
        end
        gg.sleep(1000) -- Har 1 second me position note karega
    end
    
    -- File me save karne ka logic
    if #recordedRoute > 0 then
        local f = io.open(RECORD_FILE, "w")
        if f then
            for _, point in ipairs(recordedRoute) do
                f:write(string.format("%.3f|%.3f|%.3f|%d\n", point.x, point.y, point.z, point.time))
            end
            f:close()
            gg.setVisible(true)
            gg.alert("💾 ROUTE SAVED SUCCESSFULLY!\nTotal Points Recorded: " .. #recordedRoute .. "\nFile Path: " .. RECORD_FILE)
        else
            gg.setVisible(true)
            gg.alert("❌ Error: Storage permission not granted for writing file!")
        end
    else
        gg.setVisible(true)
        gg.alert("⚠️ No points recorded. Make sure you moved around.")
    end
    automationMenu()
end

-- 🎛️ 2. PLAYBACK / RUN FUNCTION
function runYuvrajMacro()
    local f = io.open(RECORD_FILE, "r")
    if not f then
        gg.alert("❌ NO RECORDED ROUTE FILE FOUND!\nPehle route record karo.")
        return automationMenu()
    end
    
    -- File se data load karna array me
    local playRoute = {}
    for line in f:lines() do
        local x, y, z, t = line:match("([^|]+)|([^|]+)|([^|]+)|([^|]+)")
        if x then
            table.insert(playRoute, {x = tonumber(x), y = tonumber(y), z = tonumber(z), time = tonumber(t)})
        end
    end
    f:close()
    
    if #playRoute == 0 then
        gg.alert("❌ Saved file is empty or corrupted!")
        return automationMenu()
    end
    
    -- Speed Multiplier Setup
    local speedPrompt = gg.prompt({
        "⚡ ENTER PLAYBACK SPEED SPEED MULTIPLIER:\n[1 = Normal, 2 = Double Speed, 3 = Triple Speed]"
    }, {"2"}, {"number"})
    
    if not speedPrompt then return automationMenu() end
    local speedMultiplier = tonumber(speedPrompt[1]) or 1
    if speedMultiplier <= 0 then speedMultiplier = 1 end
    
    gg.setVisible(false)
    toast.success("🤖 Yojashv AUTOMATION BOT RUNNING!\nSpeed: " .. speedMultiplier .. "x\nHold GG Icon to cancel.", 4)
    gg.sleep(1500)
    
    local lastPointTime = 0
    for i, point in ipairs(playRoute) do
        -- Emergency Force Stop check
        if gg.isVisible() then
            gg.setVisible(true)
            toast.hint("🛑 BOT FORCE STOPPED BY USER", 2)
            return automationMenu()
        end
        
        -- Timing calculation (Physics/Math logic)
        -- Jitna time hum pehle ruke the, use speed multiplier se divide kar dega
        local timeGap = point.time - lastPointTime
        if timeGap > 0 then
            local waitTime = (timeGap * 1000) / speedMultiplier
            gg.sleep(waitTime)
        end
        
        -- Teleporting to the point
        doTeleport(point.x, point.y, point.z)
        lastPointTime = point.time
    end
    
    gg.setVisible(true)
    gg.alert("🏁 AUTOMATION ROUTE COMPLETED SUCCESSFULLY!")
    automationMenu()
end

-- 📂 3. AUTOMATION SUB-MENU
function automationMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        🔴 START RECORDING ROUTE  ║",
        "║        ▶️ RUN RECORDED BOT SPEED ║",
        "╚══════════════════════════════════╝",
        "🔙 RETURN TO MAIN MENU"
    }, nil, "╔══════════════════════════════════════════════════╗\n║             AUTOMATION BOT - Yojashv              ║\n╚══════════════════════════════════════════════════╝")
    
    if not choice then return mainMenu() end
    
    if choice == 2 then 
        startYuvrajRecording()
    elseif choice == 3 then 
        runYuvrajMacro()
    elseif choice == 5 then 
        mainMenu()
    end
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                    DEV & SUPPORT                                  ║
--╚═══════════════════════════════════════════════════════════════════╝

function devMenu()
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        📺 YOUTUBE: @Yojashv       ║",
        "║        💬 TELEGRAM: @Yojashv      ║",
        "╚══════════════════════════════════╝",
        "🔙 BACK"
    }, nil, "DEVELOPER - Yojashv")
    
    if not choice then mainMenu() end
    if choice == 2 then
        gg.copyText("https://youtube.com/@Yojashv")
        gg.goURL("https://youtube.com/@Yojashv")
    elseif choice == 3 then
        gg.copyText("https://t.me/Yojashv")
        gg.goURL("https://t.me/Yojashv")
    elseif choice == 5 then
        mainMenu()
    end
    devMenu()
end

function supportMenu()
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        💳 SUPPORT THE CREATOR    ║",
        "║        💎 TON:                   ║",
        "║        UQXXXXXXXXXXXXXXXXXX      ║",
        "╚══════════════════════════════════╝",
        "🔙 BACK"
    }, nil, "SUPPORT - Yojashv")
    
    if not choice then mainMenu()
    elseif choice == 5 then mainMenu()
    end
    supportMenu()
end

function exitScript()
    if YuvrajAimbotRunning then
        YuvrajAimbotRunning = false
        YuvrajSmoothAimbotOff()
    end
    print("╔══════════════════════════════════════════════════╗")
    print("║                                                  ║")
    print("║          GRAND MOBILE SCRIPT - Yojashv            ║")
    print("║                    EXITING...                    ║")
    print("║                                                  ║")
    print("╚══════════════════════════════════════════════════╝")
    gg.setVisible(true)
    os.exit()
    gg.exit()
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                      MAIN MENU                                    ║
--╚═══════════════════════════════════════════════════════════════════╝

function mainMenu()
    menuuuvis = 0
    local choice = gg.choice({
        "╔══════════════════════════════════╗",
        "║        👤 PLAYER MODS            ║",
        "║        🚗 CAR MODS               ║",
        "║        🔫 WEAPON MODS            ║",
        "║        👁️ VISUAL MODS            ║",
        "║        🕒 FPS BOOST              ║",
        "║        📍 TELEPORT               ║",
        "║        🎰 CASINO Hacks           ║",
        "║        🎯 AIMBOT Yojashv          ║",
        "║        🤖 JOB AUTOMATION BOT     ║",
        "║        👑 DEVELOPER              ║",
        "║        💝 SUPPORT                ║",
        "║                                  ║",
        "║        ❌ EXIT                   ║",
        "╚══════════════════════════════════╝"
    }, nil, "✨💫 GRAND MOBILE SCRIPT - Yojashv - VIP EDITION ✨💫")
    
    if not choice then return end
    
    if choice == 2 then playerMenu()
    elseif choice == 3 then carMenu()
    elseif choice == 4 then gunMenu()
    elseif choice == 5 then visualMenu()
    elseif choice == 6 then FPSmenu()
    elseif choice == 7 then tpMenu()
    elseif choice == 8 then casinoMenu()
    elseif choice == 9 then YuvrajAimMenu()
    elseif choice == 10 then automationMenu()
    elseif choice == 11 then devMenu()
    elseif choice == 12 then supportMenu()
    elseif choice == 14 then exitScript()
    end
    
    menuuuvis = -1
end

--╔═══════════════════════════════════════════════════════════════════╗
--║                      SCRIPT START                                 ║
--╚═══════════════════════════════════════════════════════════════════╝

toast.success("✨💫 Yojashv BIZZ WAR SCRIPT LOADED ✨💫", 4)
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
