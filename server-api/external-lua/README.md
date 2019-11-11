# Server-Side API external Lua

## Create the server-side api to get data:

  - Go to the __API Builder__ in the Webmin
  - Click __New Project__ and name it "MyApi"
  - Click the `main.lua` for the "MyApi" project
  - Remove all the current code in the editor
  - Copy the code from the local `server/external-lua/MyApi/main.lua` file
  - Paste it into the code editor
  - Save the code.

## Create the other.lua file

Add a new file to your project via the Webmin and copy the code from the `server/external-lua/MyApi/other.lua`, or upload it via SFTP to the correct project folder (where the `main.lua` lives).
