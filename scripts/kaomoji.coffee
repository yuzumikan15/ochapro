module.exports = (robot) ->
 robot.respond /kaomoji/i, (msg) ->
  msg.send msg.random["(*^^*)","(っ・ω・)⊃≡☆≡☆≡☆"," (=U・ω・U=)"]

  robot.adapter.on 'connected', () ->
    robot.send room: 'hubot-dev', "再起動中… あとでスクリプト読み込んでね"