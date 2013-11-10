#!/usr/bin/env python
# -*- coding: utf-8 -*-
import urllib2
from BeautifulSoup import BeautifulSoup
from time import sleep
import sqlite3
import re

_cbbdb = '../cbb.db'
startfrom = 377  # lowest num
endfrom = 501  # highest num

def existingids():
    with sqlite3.connect(_cbbdb) as conn:
        cursor = conn.cursor()
        query = "SELECT id FROM teams"
        cursor.execute(query)
        ids = [i[0] for i in cursor.fetchall()]
    return ids

def find_missing_items(int_list):
    '''
    Finds missing integer within an unsorted list and return a list of
    missing items

    >>> find_missing_items([1, 2, 5, 6, 7, 10])
    [3, 4, 8, 9]

    >>> find_missing_items([3, 1, 2])
    []
    '''

    # Put the list in a set, find smallest and largest items
    original_set  = set(int_list)
    smallest_item = min(original_set)
    largest_item  = max(original_set)

    # Create a super set of all items from smallest to largest
    full_set = set(xrange(smallest_item, largest_item + 1))

    # Missing items are the ones that are in the full_set, but not in
    # the original_set
    return sorted(list(full_set - original_set))

def _ft(tid):
    url = "http://m.yahoo.com/w/sports/ncaab/team/ncaab.t.{0}?.ts=1384099463&.intl=us&.lang=en".format(tid)
    print "Processing {0}".format(tid)
    request = urllib2.Request(url, headers={"User-Agent":"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:17.0) Gecko/20100101 Firefox/17.0"})
    html = (urllib2.urlopen(request))
    html = html.read()
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
        return 'INSERT INTO teams VALUES ("{0}", "{1}", "{2}", "")  # {3}'.format(confid, tid, team.getText(), conf.getText())
    else:
        return None

existing = existingids()
missing = find_missing_items(existing)

for mid in missing:
    if mid >= startfrom and mid <= endfrom:
        sleep(5)
        tt = _ft(mid)
        if tt:
            print tt
