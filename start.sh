#!/bin/bash

export HUBOT_SLACK_TOKEN=xoxb-34217322292-CU5hFQlOEoAsdbqThvCXQnux
export HUBOT_MICROSOFT_TRANSLATOR_CLIENT_ID=kindai
export HUBOT_MICROSOFT_TRANSLATOR_CLIENT_SECRET=twuOuKqhaxG/VN+fciZNe4GSITnOPQ8M1lwaVNoaXEQ=
export REDISTOGO_URL=redis://127.0.0.1:6379
export export HUBOT_YOUTUBE_API_KEY=AIzaSyAjuEJC0jaxzZDu8Ovs_hd1ZhEWG6bF-wk

nohup ./bin/hubot --adapter slack &
