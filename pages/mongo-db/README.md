# JSON Mongo DB Pages

## Create the server-side api to get data:

  - Go to the __API Builder__ in the Webmin
  - Click __New Project__ and name it "MyApi"
  - Click the `main.lua` for the "MyApi" project
  - Remove all the current code in the editor
  - Copy the code from the local `server/api/MyApi/main.lua` file
  - Paste it into the code editor
  - Save the code.

## Create the display page api:

  - Log into the server with SFTP as the "coronium" user
  - Navigate to the "pages" directory
  - Upload the local `server/pages/mongodata` directory into the "pages" directory

## View the page:

  - Point your browser to `http://your.coronium.server/mongodata/show`