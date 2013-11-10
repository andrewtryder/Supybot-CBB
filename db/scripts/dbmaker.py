#!/usr/bin/env python
# -*- coding: utf-8 -*-
import urllib2
from BeautifulSoup import BeautifulSoup
import re
from time import sleep
import sys

startn = int(sys.argv[1])
endn = int(sys.argv[2])

# functions
def _http(url):
    req = urllib2.Request(url)
    req.add_header("User-Agent","Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:17.0) Gecko/17.0 Firefox/17.0")
    try:
    	r = urllib2.urlopen(req)
        html = r.read()
        return html
    except Exception, e:
        print "Exception fetching: {0} :: {1}".format(tid, e)
        return None

# generate numbers
tids = [i for i in range(startn, endn)]
# iterate through each.
for tid in tids:
    url = "http://m.yahoo.com/w/sports/ncaab/team/ncaab.t.{0}?.ts=1384099463&.intl=us&.lang=en".format(tid)
    html = _http(url)
    if not html:
        sleep(10)
        html = _http(url)
        if not html:
            sleep(30)
            html = _http(url)
            if not html:
                #print "Broke fetching {0}".format(tid)
                break
    #
    print "Processing #{0}".format(tid)
    #
    soup = BeautifulSoup(html)
    team = soup.find('div', attrs={'class':'uic title first'})
    conf = soup.find('div', attrs={'class':'uic last'})
    if team and conf:
        confid = conf.find('a')
        if confid:
            confid = confid['href'].split('?')[0]
            confid = re.sub('\D', "", confid)
            # INSERT INTO teams VALUES ("2", "1019", "South Florida", "sbn");
        else:
            confid = None
    #print "TEAM: {0} type {1}".format(team, str(team))
    if team and team.getText() != '':
        # INSERT INTO teams VALUES ("None", "1022", "Lambuth Eagles", "");  -- Independents (NAIA-I)
        print 'INSERT INTO teams VALUES ("{0}", "{1}", "{2}", "")  # {3}'.format(confid, tid, team.getText(), conf.getText())
    # now sleep 2s.
    sleep(2)
    # repeat.
