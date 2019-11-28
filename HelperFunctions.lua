--Sends the keypresses one by one in case a program cannot handle fast typing
function SlowPrint(printStr, time)
  local specialCharBool
  local specialChar = ""
  local char

  for c in printStr:gmatch"." do
    if (c == '{') then specialCharBool = true end
    if (c == '}') then
      specialChar = specialChar .. c
      specialCharBool = false
      lmc_send_keys(specialChar)
      lmc_sleep(time)
      specialChar = ""
    elseif (specialCharBool) then
      specialChar = specialChar .. c
    else
      lmc_send_keys(c)
      lmc_sleep(time)
    end
  end
end

