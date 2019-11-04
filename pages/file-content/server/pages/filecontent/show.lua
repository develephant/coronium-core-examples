--#############################################################################
--# Show File Data
--#############################################################################

--Load filesystem tools (undocumented)
local fs = require("coronium.fs")

--Create the page object
local page = core.pages.new()

--#############################################################################
--# Request Methods
--#############################################################################
local function onGetRequest()

  --Load a JSON data file directly.
  local result, err = core.readfile(fs.join(core.files.FilesDirectory, 'jsons', 'data.json'), '*a')

  if not result then
    --Render the error
    page.renderText(err)
  else
    --Render the JSON
    --Use renderText, because the 
    --content is already JSON encoded.
    page.renderText(result)
  end

  --At this point the response has been rendered
  --and the interaction is over between the client
end

--#############################################################################
--# Incoming Request
--# You only need to support the GET request unless your posting data
--#############################################################################
if page.isGet then
  --This is a GET request, run our handler
  onGetRequest()
else
  --Renders browser "does not support method" error
  page.status(501)
end