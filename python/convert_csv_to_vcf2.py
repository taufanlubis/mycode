#!/usr/bin/python

import csv
import sys

def convert(file):
    reader = csv.reader(open(file, 'rb'))

    for row in reader:
        print 'BEGIN:VCARD'
        print 'VERSION:2.1'
        print 'N:' + row[0] + ';' + row[1]
        print 'FN:' + row[1] + ' ' + row[0]
        print 'TEL;HOME;VOICE:' + row[9]
        print 'END:VCARD'

def main(args):
    if len(args) != 2:
        print "Usage:"
        print args[0] + " filename"
        return

    convert(args[1])

if __name__ == '__main__':
    main(sys.argv)

