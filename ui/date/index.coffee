moment = require 'moment'

exports.create = (model, dom) ->
	value = model.get 'value'

	refreshDate = ->
		date = moment(value).fromNow()
		model.set 'date', date

	refreshDate()

	setInterval refreshDate, 10000