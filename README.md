# sqler with gitbase for git repo code analysis

## how to running

* clone some git codes

> inside git-demos directory

* running

```code
docker-compose up -d
```

* access demo rest api

```code
curl -i http://localhost:8025/filecounts
```

result

```code
HTTP/1.1 200 OK
Access-Control-Allow-Origin: *
Content-Type: application/json; charset=UTF-8
Vary: Origin
Vary: Accept-Encoding
Date: Sun, 12 May 2019 07:34:39 GMT
Content-Length: 958

{"data":[{"blanks":0,"code":0,"comments":0,"files":7,"lang":"Ignore List"},{"blanks":78,"code":138,"comments":0,"files":5,"lang":"Markdown"},{"blanks":0,"code":0,"comments":0,"files":6,"lang":"Maven POM"},{"blanks":0,"code":0,"comments":0,"files":5,"lang":"Dockerfile"},{"blanks":152,"code":409,"comments":12,"files":20,"lang":"YAML"},{"blanks":4113,"code":15009,"comments":3815,"files":259,"lang":"Java"},{"blanks":0,"code":0,"comments":0,"files":2,"lang":"Shell"},{"blanks":0,"code":26,"comments":0,"files":1,"lang":"JSON"},{"blanks":0,"code":0,"comments":0,"files":1,"lang":"Nginx"},{"blanks":0,"code":0,"comments":0,"files":1,"lang":""},{"blanks":1,"code":91,"comments":1,"files":3,"lang":"XML"},{"blanks":211,"code":2067,"comments":0,"files":31,"lang":"HTML"},{"blanks":0,"code":0,"comments":0,"files":6,"lang":""},{"blanks":0,"code":0,"comments":0,"files":1,"lang":"Text"},{"blanks":53,"code":31,"comments":260,"files":1,"lang":"TOML"}],"success":true}
```