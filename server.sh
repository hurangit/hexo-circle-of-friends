#!/bin/bash
pip3 install -r ./hexo_circle_of_friends/requirements.txt -i https://pypi.douban.com/simple/

### 通用配置
export EXPOSE_PORT=8000
export RUN_PER_HOURS=6
#export PROXY=""
### leancloud配置
export APPID="U76obNRHkz86D8mreEpOYi4e-MdYXbMMI"
export APPKEY="WV92n79HbfI1m4RA4gLALMDY"
### mysql配置
#export MYSQL_USERNAME=""
#export MYSQL_PASSWORD=""
#export MYSQL_IP=""
#export MYSQL_PORT=""
#export MYSQL_DB=""
### mongodb配置
#export MONGODB_URI=""
nohup python3 -u ./hexo_circle_of_friends/run.py > /tmp/crawler.log 2>&1 &
nohup python3 -u ./api/main.py > /tmp/api.log 2>&1 &
