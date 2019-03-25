FROM node:lts

LABEL name="Deploy to Fly"
LABEL version="0.1.0"
LABEL repository="http://github.com/mika-f/action-deploy-to-flyio"
LABEL homepage="http://github.com/mika-f/action-deploy-to-flyio"
LABEL maintainer="Fuyuno Mikazuki <mikazuki_fuyuno@outlook.com>"

LABEL com.github.actions.name="Deploy to Fly"
LABEL com.github.actions.description="GitHub Action that deploy your project to fly.io"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"

RUN yarn global add @fly/fly

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]

