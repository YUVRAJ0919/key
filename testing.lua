-- ==========================================
-- KEY SYSTEM & MAIN SCRIPT LOADER
-- ==========================================

-- Yahan apni secret key set karo. Access block karna ho to isko change kar dena.
local correct_key = "Sex" 

-- User se key maangna
local input = gg.prompt({"🗝️ Enter Key to access the script:"}, {[1]=""}, {"text"})

-- Agar user cancel kar de
if not input then
    gg.toast("❌ Cancelled")
    os.exit()
end

-- Key verify karna
if input[1] == correct_key then
    gg.toast("✅ Key Verified! Loading Main Script...")
    
    -- Yahan apni 3rd/main script (third.lua) ka RAW GitHub link daalo
    local third_script_url = "https://raw.githubusercontent.com/YUVRAJ0919/key/refs/heads/main/cons.lua"
    
    local response = gg.makeRequest(third_script_url)
    
    if not response then
        gg.alert("❌ Error: Internet connection check karo.")
        os.exit()
    end
    
    if response.code == 200 then
        local runScript = load(response.content)
        if runScript then
            runScript() -- Tumhari main (third) script yahan run ho jayegi
        else
            gg.alert("❌ Error: script syntax error hai.")
        end
    else
        gg.alert("❌ Error: Script expire. Code: " .. tostring(response.code))
    end
else
    -- Agar key galat daali
    gg.alert("❌ Incorrect Key! Access Denied.")
    os.exit()
end
