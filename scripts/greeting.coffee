module.exports = (robot) ->
  robot.hear /おはよう/i, (msg) ->
    msg.send "おはよう"

  robot.adapter.on 'connected', () ->
    robot.send room: 'hubot-dev', "再起動中…"