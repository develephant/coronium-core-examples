--#############################################################################
--# Show JSON Data from Mongo DB
--#############################################################################

--Create the page object
local page = core.pages.new()

--#############################################################################
--# Request Methods
--#############################################################################
local function onGetRequest()

  --Call a custom server-side api method
  --By using this method, it is also available to the
  --Corona client as well.
  local doc, err = page.callApi("MyApi", "mongoget", {})

  --#############################################################################
  --OR, for inline queries (this will NOT be callable by Corona api):
  -- local db, err = core.mongo('mydb')
  -- local toys = db:collection('toys')
  -- local doc, err = toys:findOne({
  --   color = "red"
  -- })
  --#############################################################################

  if not doc then
    --Render the error
    page.renderText(err)
  else
    --Render the JSON
    page.renderJson(doc)
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