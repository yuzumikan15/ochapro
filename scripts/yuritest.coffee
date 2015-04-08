  #yuzumikan15さんの改変ですyuri
module.exports = (robot) ->
robot.hear /(=ﾟωﾟ)ﾉ/i, (msg) ->
    d = new Date
    hour = d.getHours() + 9
    str = "(=ﾟωﾟ)ﾉ"
  if hour < 12
      # 午前中
    msg.send str + "\nねむ"
    else if hour >= 12
      	# 午後
    msg.send str + "\n抱いて"
robot.adapter.on 'connected', () ->
robot.send room: 'hubot-dev', "再起動中… あとでスクリプト読み込んでね"
