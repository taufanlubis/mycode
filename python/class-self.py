class className:
    def createName(self,name):
        self.name=name
    def displayName(self):
        return self.name
    def saying(self):
        print "Hello %s" % self.name

first=className()
second=className()

first.createName('dark')
second.createName('linux')

print first.displayName() + second.displayName()
print first.saying()
