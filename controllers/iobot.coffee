controller = (app) ->

  app.get '/iobot', (req, res) ->
    res.render 'iobot/index',
      title: 'I/O Bot'

  app.post '/iobot/in', (req, res) ->
    app.settings.socketIO.sockets.emit 'info',
      message: req.body.message
    res.send 'OK'

module.exports = controller
