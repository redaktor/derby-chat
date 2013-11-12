require 'shelljs/make'

target.all = ->
  target.deploy()

target.deploy = ->
	exec 'coffee -c server.coffee', {async: true}
	exec 'coffee -o ./lib/ -c ./src/', {async: true}
	exec 'coffee -c ./ui/', {async: true}

target.development = ->
	exec 'coffee -cw server.coffee', {async: true}
	exec 'coffee -o ./lib/ -cw ./src/', {async: true}
	exec 'coffee -cw ./ui/', {async: true}
	exec 'nodemon -e js' # --debug'
