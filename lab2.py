alpha="ABCDEFGHIJKLMNOPQRSTUVWXYZ"

production=["E=TR","R=+TR|#","T=FY","Y=*FY|#","F=(E)|i%"]

def find(a,b,c):
	#print(b,c+1)
	if(b<=len(production) and c<=len(production[b])):
		if(alpha.find(a[b][c+1]) == -1):
			return a[b][c+1]
		else:
			d=0
			#print(production.find(production[b][c+1]))
			for i in range(0,len(production)):
				if(production[i][0]==production[b][c+1]):
					d=d+1			
#			print(production[b][c+1],d)			
			e=0
			a=''
			while(e<d):
				for i in range(e,len(production)):
					y=-1
					if(production[i][0] == production[b][c+1]):
						if(production[i][1]== "="):
							y=production[i].find("|")
							if(y!=-1):
								e=i
								a+=find(production,i,y)
								a+=find(production,i,1)
							else:
								e=i
								a=find(production,i,1)
			return a
				#print(i)
#first=[]
for i in range(len(production)):
	for j in range(len(production[i])):
		c=''
		y=-1
		if(production[i][j]=="="):
			y=production[i].find("|")
			if(y!=(-1)):
				c+=find(production,i,y)
				c+=find(production,i,j)
			else:
				c=find(production,i,j)
			#print(c)
			print 'FIRST(' + production[i][j-1] + ') = '+c
			#first.append(c)
#print(first)

'''s=[]
def follow(production,b):
	y=production[i].find("=")
	e=alpha.find(production[i][len(production[i])])
	if e != =1:
		#s.append(production[i][0])
		return production[i][0]
		for i in range(production.find(production[b][0]),len(production)):
			if production[i][0] == e :						
				d=follow(production[i][0])
				break;
		#s.append(d)
		#s.append(e)
		#s.append(d)
		return d
		return e
		return d
	else:
		return production[b][len(production[b])]

for i in range(0,len(production)):
	for j in range(0,len(prduction[i])):
		y=production[i].find("|")
		if(y!=(-1)):
			
		else:
			if(alpha.find(production[i][len(production[i])]) != -1):
				

for i in range(0,len(production)):
	y=production[i].find("|")
	if y != (-1) :
	
	else:
		if(alpha.find(production[i][0])!=-1):
			if alpha.find(production[i][0]
			s.append(follow(production[i][0]))
			


for i in range(0,len(production)):
	y=production[i][0]
	
'''
p=[]
r=[]
f=[]
for i in range(0,len(production)):
	y=production[i].find("=")
	s=''
	for j in range(0,y):
		s+=production[i][j]
	p.append(s)
	s=''	
	for j in range(y+1,len(production[i])):
		s+=production[i][j]
	r.append(s)
print(r)
print(p)
def follow(a):
	y=''
	j=0
	#print("finding for:",a)
	for j in range(0,len(r)):
		if a in r[j]:
			y=r[j].index(a)
			#print("found in",r[j],y)	
			#print(len(r[j]))
			if( (y+1)==len(r[j]) ):
				t=follow(p[j])
				#print t
				return t
			if(y-1>-1 and alpha.find(r[j][y+1]) == -1 and "#" not in r[j]):
				#print r[j][y+1]	
				return r[j][y+1]
			if(y-1>-1 and alpha.find(r[j][y+1]) != -1 and "#" not in r[j]):
				t=find(production,j,(2+y))
				#print t
				return t
			if(alpha.find(r[j][y+1]) != -1 and "#" in r[j]):
				t=find(production,j,(2+y))		
				print(t)
f=''
for i in range(0,len(p)):
	f+=follow(p[i])
	print(f)
print(f)
