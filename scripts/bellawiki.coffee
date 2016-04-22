module.exports = (robot) ->
  robot.respond /bella creatework ([\S]+) ([\S]+) ([\S]+) ([\S]+)/i, (res) ->
    title = res.match[1]
    desc = res.match[2]
    type = res.match[3]
    date = res.match[4]

    pdata = JSON.stringify
      "date": date,     
      "type": type,     
      "title": title,   
      "desc": desc      
    res.send pdata

    user = 'kindai'
    pass = 'daispeed'
    auth = 'Basic ' + new Buffer(user + ':' + pass).toString('base64');
    robot.http("http://45.55.158.184/bellawiki/api/works/")
      .headers(Authorization: auth, Accept: 'application/json', 'Content-Type': 'application/json')
      .post(pdata) (err, resp, body) ->
        if err                  
          res.send "Encountered an error :( #{err}"
        else                    
          res.send body                 

  robot.respond /bella delwork ([\S]+)/i, (res) ->
    id = res.match[1]
    user = 'kindai'
    pass = 'daispeed'
    auth = 'Basic ' + new Buffer(user + ':' + pass).toString('base64');
    res.send 'deleting id=' + id
    
    robot.http("http://45.55.158.184/bellawiki/api/works/"+id+"/")
      .headers(Authorization: auth)
      .del() (err, resp, body) ->
        res.send 'response:' + resp.statusCode
        if err                  
          res.send "Encountered an error :( #{err}"
        else                    
          res.send body                 

  robot.respond /bella today/i, (res) ->
    user = 'kindai'
    pass = 'daispeed'
    auth = 'Basic ' + new Buffer(user + ':' + pass).toString('base64');

    robot.http("http://45.55.158.184/bellawiki/api/works/")
      .headers(Authorization: auth)
      .get() (err, resp, body) ->
        res.send 'response:' + resp.statusCode
        if err
          res.send "Encountered an error :( #{err}"
        else
          res.send body
