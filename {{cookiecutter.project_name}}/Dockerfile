FROM node:12-alpine

# Install usermod & groupmod for alpine
RUN apk --no-cache add shadow

# Prepare user with uid and gid
ARG UID=1000
ARG GID=1000
RUN groupmod -g $GID node
RUN usermod -u $UID node

EXPOSE 3000

WORKDIR /srv/app

# Copy project to image
COPY . /srv/app

# Install dependencies
# Fix permissions
RUN yarn install \
    && yarn tsc \
    && yarn install --frozen-lockfile --production \
    && yarn cache clean \
    && chown -R node:node /srv/app 

USER node

CMD [ "yarn", "local:start:prod" ]
