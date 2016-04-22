#!/bin/bash

export HUBOT_SLACK_TOKEN=xoxb-35288617472-mvbuYVynkEhvMz05AOkqXFJu
export HUBOT_MICROSOFT_TRANSLATOR_CLIENT_ID=kindai
export HUBOT_MICROSOFT_TRANSLATOR_CLIENT_SECRET=twuOuKqhaxG/VN+fciZNe4GSITnOPQ8M1lwaVNoaXEQ=
export REDISTOGO_URL=redis://127.0.0.1:6379
export export HUBOT_YOUTUBE_API_KEY=AIzaSyAjuEJC0jaxzZDu8Ovs_hd1ZhEWG6bF-wk

export HUBOT_JIRA_URL=https://intranet.zuora.com/jira
export HUBOT_JIRA_USERNAME=yuan.lin
export HUBOT_JIRA_PASSWORD=Daispeed1984!
export HUBOT_JIRA_TYPES_MAP='{"story":"Story"}'
export HUBOT_JIRA_PROJECTS_MAP='{"bil":"BIL"}'

nohup ./bin/hubot --adapter slack &
