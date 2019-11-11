--#############################################################################
--# External Lua module
--#############################################################################
local other = {}

function other.getData()
  local hasData = true --< mock flag for example
  
  --Make sure to send back errors in the correct format
  --for Coronium Core responses, for example:
  if not hasData then
    return nil, "No data was found!"
  end

  return "Here is some data. Have fun!"
end

return other