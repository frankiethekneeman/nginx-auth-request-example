var express = require('express')
  ,  app = express()

app.get('/', function (req, res) {
  res.status(401).send('Hello World!')
})
app.get('/testProxyPass', function (req, res) {
  res.status(200).send('PASSTHROUGH')
})

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})
