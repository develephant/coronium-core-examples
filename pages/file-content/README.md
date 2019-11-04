# File Content

Reading a file is a blocking operation, as such it should be small data. Using data from a database is non-blocking.

## Upload the data to the server:

  - Log into the server with SFTP as the "coronium" user
  - Navigate to the "files" directory
  - Upload the local `server/files/jsons` directory into the "files" directory

## Create the display page api:

  - Log into the server with SFTP as the "coronium" user
  - Navigate to the "pages" directory
  - Upload the local `server/pages/filecontent` directory into the "pages" directory

## View the page:

  - Point your browser to `http://your.coronium.server/filecontent/show`