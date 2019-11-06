FROM node:10-slim

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
RUN yarn install --frozen-lockfile \
    && yarn local:compile \
    && yarn install --frozen-lockfile --production \
    && yarn cache clean \
    && chown -R node:node /srv/app 

USER node

ENTRYPOINT [ "yarn" ]
CMD [ "local:start:prod" ]