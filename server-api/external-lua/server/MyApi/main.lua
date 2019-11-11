--#############################################################################
--# Create an server-side project called "MyApi"
--# in the main.lua, replace all code with the code below
--# Save your api code.
--#############################################################################

--#############################################################################
--# Requires
--#############################################################################
local other = require("MyApi.other")

--#############################################################################
--# Main API
--#############################################################################
local api = core.api()

function api.getOutput( input )

  local some_data, err = other.getData()

  if not some_data then
    return nil, err
  end

  return some_data

end

return api