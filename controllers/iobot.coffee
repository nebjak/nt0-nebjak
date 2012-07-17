controller = (app) ->

  app.get '/iobot', (req, res) ->
    res.render 'iobot/index',
      title: 'I/O Bot'

  app.get '/iobot/in', (req, res) ->
    res.render 'iobot/in',
      title: 'I/O Bot :: Send message'

  app.post '/iobot/in', (req, res) ->
    app.settings.socketIO.sockets.emit 'info',
      message: req.body.message
    res.send 'OK'

module.exports = controller
