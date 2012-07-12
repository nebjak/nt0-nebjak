controller = (app) ->
  app.get '/', (req, res) ->
    res.render 'home/index',
      title: 'Home'

module.exports = controller
