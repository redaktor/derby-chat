config =
  filename: __filename
  styles: '../styles/ui'
  scripts:
    connectionAlert: require './connectionAlert'
    date: require './date'

module.exports = (app, options) ->
  app.createLibrary config, options
