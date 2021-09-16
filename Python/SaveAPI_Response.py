import http.client
import json
headers = {
  'content-type': 'application/json'
  }

conn = http.client.HTTPSConnection("api.danmurphys.com.au")
for i in range(10):
    payload = json.dumps({
     "department": "beer",
     "subDepartment": None,
     "Category": None,
     "filters": [],
     "pageNumber": i+1,
     "pageSize": 0,
     "sortType": "Relevance",
     "Location": "ListerFacet" })

    conn.request("POST", "/apis/ui/Browse", payload, headers)
    res = conn.getresponse()
    data = res.read()
    filename = "C:\\Users\\magha\\Downloads\\Python\\response_" + str(i) + ".txt"
    print(filename)
    f = open(filename,'w+')
    f.write(str(data))
