import mechanize

# The URL to this service
URL = 'http://www.taufanlubis.wordpress.com'

def main():
	#create a browser instance
	b = mechanize.Browser()
	#load the page
	b.open(URL)
	
	#select the form
	b.select_form(nr=0)
	#fill out the form
	#b['city'] = 'Santa Clara'
	#b['state'] = 'CA'
	#submit
	return b.submit()

if __name__ == '__main__':
	import sys
	sys.stdout.write(main().read())	
	
