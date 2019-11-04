--#############################################################################
--# Create an server-side project called "JsonData"
--# in the main.lua, replace all code with the code below
--# Save your api code.
--#############################################################################
local api = core.api()

function api.getJson( input )
  local tbl_data = {
    name = "Jimmy",
    age = 20
  }
  
  return tbl_data
end

return api