#!/bin/bash
egrep -o "(http|https)://[a-zA-Z0-9./?=_%:-]*" MyActivity.html | grep -v watch\?| grep channel |sort|uniq | egrep -o "([^\/]+$)" | awk '{print "https://www.youtube.com/feeds/videos.xml?channel_id=" $1}' > output.urls
