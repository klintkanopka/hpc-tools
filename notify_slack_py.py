#!/usr/bin/python3

from urllib import request, parse
import json
import sys

def notify_slack(text):
    post = {"text": "{0}".format(text)}

    try:
        json_data = json.dumps(post)
        req = request.Request("https://YOUR_SLACK_WEBHOOK_GOES_HERE",
        data=json_data.encode('ascii'),
        headers={'Content-Type': 'application/json'})
        resp = request.urlopen(req)
    except Exception as em:
        print("EXCEPTION: " + str(em))

if len(sys.argv) == 2:
    notify_slack(sys.argv[1])
else:
    print("Wrong number of arguments.")
