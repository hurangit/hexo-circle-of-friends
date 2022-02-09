# -*- coding:utf-8 -*-
# Author：yyyz
from datetime import datetime
import re
today = datetime.now()
# 时间格式检查
def format_check(*args):
    for time in args:
        if not re.match("^\d{4}-\d{2}-\d{2}",time):
            # 时间不是xxxx-xx-xx格式，丢弃
            return
    return True

# 内容检查
def content_check(*args):
    for time in args:
        res = today - datetime.strptime(time, "%Y-%m-%d")
        if res.days < 0:
            return
    return True