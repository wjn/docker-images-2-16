# Image based on public image
FROM node:latest
# directory within the docker image that will have the app files copied to
WORKDIR /app
# current files in this directory will be copied to the /app directory
ADD --chown=user:group ./app /app
# after the image if built, the app will be built with dependencies
RUN npm install
# Port to Expose
EXPOSE 3000
# after the container starts, this command is run
CMD npm start
