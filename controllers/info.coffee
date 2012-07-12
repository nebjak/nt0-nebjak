controller = (app) ->
  app.get '/info', (req, res) ->
    res.render 'info/index',
      title: 'Info'

module.exports = controller
