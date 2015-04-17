module.exports = (robot) ->
  robot.hear /ゆりりん/i, (msg) ->
    	msg.send str + "\n'ω'"

  robot.adapter.on 'connected', () ->
    robot.send room: 'hubot-dev', "再起動中… あとでスクリプト読み込んでね"
