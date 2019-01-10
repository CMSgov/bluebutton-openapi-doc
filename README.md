# Integration with Swagger-ui

Setup a symbolic link from this bluebutton directory to a bluebutton 
directory in the swagger-ui repository.

Ensure the bluebutton directory is excluded from the repository using an 
entry in .gitignore.

Docker will not copy symlink files into a docker container. The workaround 
for this is to use the following command (on MacOS)

    cp -LR bluebutton dist/bluebutton/
    
This copies the symlinked files to a new location as a new file.
These can then be copied in to the container along with other content in 
/dist


