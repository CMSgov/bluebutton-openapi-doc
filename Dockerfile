FROM nginx:1.15-alpine

LABEL maintainer="fehguy"

ENV VERSION "v2.2.10"
ENV FOLDER "swagger-ui-2.2.10"
# ENV API_URL "https://petstore.swagger.io/v2/swagger.json"
ENV API_URL "http://localhost:3200/bb2_fhir.yaml"
ENV API_URLS ""
ENV API_KEY "**None**"
# ENV OAUTH_CLIENT_ID "**None**"
ENV OAUTH_CLIENT_ID "yIVEy5I4CD0i3pkcxQsrw7rchLTJF7Du8KwRqKUL"
# ENV OAUTH_CLIENT_SECRET "**None**"
ENV OAUTH_CLIENT_SECRET "lUnJLqqzdEkkznPb7QdC5Y8151vTVpthycQbAbcONBw9Y7mlYYIF4y5vPOsyWXHoTGJGtzmSjNU4dZj61NwxpPkJXF4prIj3m6JuBmFyE9BsR51HmwDQW841ava9P48B"
ENV OAUTH_REALM "**None**"
ENV OAUTH_APP_NAME "Blue Button 2.0 with OAuth2"
ENV OAUTH_ADDITIONAL_PARAMS "**None**"
# ENV SWAGGER_JSON "/app/swagger.json"
ENV SWAGGER_JSON "/bb2_fhir.yaml"
ENV PORT 8080
ENV BASE_URL "http://localhost:3200/bb2_fhir.yaml"
ENV CONFIG_URL ""

COPY nginx.conf /etc/nginx/

# copy swagger files to the `/js` folder
COPY ./dist/* /usr/share/nginx/html/

COPY ./bb2_fhir.yaml /usr/share/nginx/html/bb2_fhir.yaml

COPY ./docker-run.sh /usr/share/nginx/

RUN chmod +x /usr/share/nginx/docker-run.sh

EXPOSE 3200
EXPOSE 8080

CMD ["sh", "/usr/share/nginx/docker-run.sh"]
