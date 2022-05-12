#!/bin/sh
set -ea

if [ "$*" = "strapi" ]; then

  if [ ! -f "package.json" ]; then

    echo "Using strapi $(strapi version)"
    echo "No project found at /srv/app. Creating a new strapi project ..."

    #DOCKER=true yarn create strapi-app@beta app \
    #  --typescript \

  elif [ ! -d "node_modules" ] || [ ! "$(ls -qAL node_modules 2>/dev/null)" ]; then

    if [ -f "yarn.lock" ]; then

      echo "Node modules not installed. Installing using yarn ..."
      #yarn install --prod --silent

    else

      echo "Node modules not installed. Installing using npm ..."
      npm install --only=prod --silent

    fi

  fi

  if [ "$NODE_ENV" = "production" ]; then
    STRAPI_MODE="start"
  elif [ "$NODE_ENV" = "development" ]; then
    STRAPI_MODE="develop"
  fi

  echo "Starting your app (with ${STRAPI_MODE:-develop})..."
  #exec strapi "${STRAPI_MODE:-develop}"

else
  exec "$@"
fi