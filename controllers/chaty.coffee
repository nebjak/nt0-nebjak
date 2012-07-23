controller = (app) ->

  app.get '/chaty', (req, res) ->
    res.render 'chaty/index',
      title: ':: Chaty ::'

  app.post '/chaty/in', (req, res) ->
    app.settings.socketIO.sockets.emit 'chat',
      message: req.body.message
      user: req.body.user
      date: Date.now()
    res.send 'OK'

module.exports = controller
