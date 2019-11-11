--#############################################################################
--# Create an server-side project called "MyApi"
--# in the main.lua, replace all code with the code below
--# Save your api code.
--#############################################################################
local api = core.api()

function api.mongoget( input )

  local db, err = core.mongo('mydb')
  local toys = db:collection('toys')
  
  local doc, err = toys:findOne({
    color = "red"
  })
  
  if not doc then
    return nil, err
  end

  return doc

end

return api
