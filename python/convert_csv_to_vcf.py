# -*- coding: utf-8 -*-
	#python 3.x
	
	#import csv
	#import sys
	
	#convert a "comma separated values" file to vcf contact cards
	
	#USAGE:
	#CSV_to_Vcards.py CSV_filename
	
	def convert(somefile):
	#assuming file format : lastname,firstname,phonenumber,mail
	with open( somefile, 'r' ) as source:
	reader = csv.reader( source )
	allvcf = open('ALL.vcf', 'w')
	i = 0
	for row in reader:
	#write in individual vcf
	vcf = open(row[1] + ' ' + row[0] + ".vcf", 'w')
	vcf.write( 'BEGIN:VCARD' + "\n")
	vcf.write( 'VERSION:3.0' + "\n")
	vcf.write( 'N:' + row[0] + ';' + row[1] + "\n")
	vcf.write( 'FN:' + row[1] + ' ' + row[0] + "\n")
	vcf.write( 'ORG:' + 'ATI' + "\n")
	vcf.write( 'TEL;CELL:' + row[2] + "\n")
	vcf.write( 'EMAIL:' + row[3] + "\n")
	vcf.write( 'END:VCARD' + "\n")
	vcf.write( "\n")
	vcf.close()
	
	#write in the "ALL.vcf" file
	allvcf.write( 'BEGIN:VCARD' + "\n")
	allvcf.write( 'VERSION:3.0' + "\n")
	allvcf.write( 'N:' + row[0] + ';' + row[1] + "\n")
	allvcf.write( 'FN:' + row[1] + ' ' + row[0] + "\n")
	allvcf.write( 'ORG:' + 'ATI' + "\n")
	allvcf.write( 'TEL;CELL:' + row[2] + "\n")
	allvcf.write( 'EMAIL:' + row[3] + "\n")
	allvcf.write( 'END:VCARD' + "\n")
	allvcf.write( "\n")
	
	i += 1#counts
	
	allvcf.close()
	print (str(i) + " vcf cards generated")
	
	
	def main(args):
	if len(args) != 2:
	print ( "Usage:")
	print ( args[0] + " filename")
	return
	
	convert(args[1])
	
	if __name__ == '__main__':
	main(sys.argv)
