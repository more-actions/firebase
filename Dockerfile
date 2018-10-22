FROM node:10-slim

LABEL "com.github.actions.name"="GitHub Action for Firebse"
LABEL "com.github.actions.description"="Wraps the Firebase CLI to enable common Firebase commands."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="black"

RUN yarn global add firebase-tools

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
