local file = 'commands.txt'
--To find the keyboardId, run the keyboardFinder.lua script
local keyboardId = '32F00E5A'

lmc_device_set_name('MACROS', keyboardId)
lmc_print_devices()
lmc.minimizeToTray = true
lmc_minimize()

require("EasyMacros\\FileManager")
require("EasyMacros\\HelperFunctions")

local lines = lines_from(file)

--Checks to see if the key exsists inside the file specified above.
function checkHotkeys(button)
  for k,v in pairs(lines) do
    for key,com,param in string.gmatch(v, "(.+) || (.+) || (.+)") do
      if(button == string.byte(key)) then
        if (com:lower() == "spawn") then lmc_spawn(param)
        elseif (com:lower() == "keys") then lmc_send_keys(param)
        elseif (com:lower() == "slow") then SlowPrint(param,50)
        elseif (com:lower() == "refresh") then lines = lines_from(file)
        else print('Command not found: ' .. com)
        end
        return true
      end
    end
  end
  return false
end

-- Define callback for whole device
lmc_set_handler('MACROS',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  if (checkHotkeys(button) == false) then print('Not yet assigned: ' .. button) end
end)
