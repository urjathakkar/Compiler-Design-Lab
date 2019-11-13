alpha="ABCDEFGHIJKLMNOPQRSTUVWXYZ"

production=["E=TR","R=+TR|#","T=FY","Y=*FY|#","F=(E)|i%"]
p=[]
r=[]
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

for i in range(0,len(p)):
	for j in range(0,len(r)):
		if p[i] in r[j]:
			print(r[j])	
			y=r[j].index(p[i])
	if(alpha.find(r[y-1]) == -1 and alpha.find(r[y+1]) == -1):
		s.append(find(r[y+1]))
	
print(s)
