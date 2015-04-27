module.exports = (robot) ->
 robot.respond /rookking/i, (msg) ->
  msg.send "castling! kingrook"

  robot.adapter.on 'connected', () ->
    robot.send room: 'hubot-dev', "再起動中… あとでスクリプト読み込んでね"