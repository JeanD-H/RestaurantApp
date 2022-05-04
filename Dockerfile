FROM node:12
ENV PORT 3000

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/spp

#installing dependencies
COPY package*.json /usr/src/spp/
RUN npm install

#Copying source
COPY . /usr/src/spp/

#Building app
RUN npm run build
EXPOSE 3000

#Running the app
CMD "npm" "run" "dev"