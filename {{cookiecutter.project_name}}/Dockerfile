#
# Development & Build stage
FROM node:10 AS build

EXPOSE 9229
EXPOSE 3000

# Prepare user with uid and gid
ARG UID=1000
ARG GID=1000
RUN groupmod -g $GID node
RUN usermod -u $UID node

VOLUME ["/srv/app"]

WORKDIR /srv/app

COPY . .

RUN yarn install --frozen-lockfile && yarn compile

#
# Production stage
FROM node:10-alpine as production

EXPOSE 3000

WORKDIR /srv/app

# Copy project to image and copy compiled code from build stage
COPY . /srv/app
COPY --from=build /srv/app/dist /srv/app

# Install dependencies
# Fix permissions
RUN yarn install --frozen-lockfile --production && yarn cache clean && chown -R node:node /srv/app 

USER node

ENTRYPOINT [ "yarn" ]
CMD [ "start:prod" ]