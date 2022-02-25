import json
import csv

c = open('ans.csv','w')
writer = csv.writer(c)

f = open('ans.json')
data = json.load(f)

writer.writerow(['Id','Predicted'])
for id in data:
    writer.writerow([id, data[id]])

f.close()
c.close()
