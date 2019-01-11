# CMS Blue Button 2.0 API  OpenAPI Specification

This is a draft of an OpenAPI 3.0 definition document for the CMS Blue Button 2.0 API.

The OpenAPI 3.0 definition document is in the bluebutton folder. 
It is called: bb2_fhir_openapi.yaml

The document can be edited using the launch_ed.sh command. This launches a docker 
container with the swagger-editor. After successfully launching the editor
it can be reached via a browser

    http://localhost:8080
    
OAuth2.0 redirection dows not work correctly in the swagger-editor. 
Therefore to exercise the API a separate script is provided to launch
swagger-ui

    ./launch-ui.sh

This will launch the swagger-ui in a docker container. This can be accessed
in a browser with:

    http://localhost:3200
    
    
OAuth2.0 authorization does work with swagger-ui as long as you have a 
redirect_uri specificed in your application record on the [CMS Blue Button sandbox](https://sandbox.bluebutton.cms.gov)

The setting for the redirect_uri should be:

    http://localhost:3200/oauth2-redirect.html
    
A sandbox app has been setup for the OpenAPI 3.0 definition document. The Client_id 
and client_secret are included in the Authorization Token URL on the Authorization panel.
You can copy these in to the respective client_id and client_secret fields.
Alternatively, you can register your own application and supply your own 
client_id and client_secret in the authorization panel.





