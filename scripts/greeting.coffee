module.exports = (robot) ->
  robot.hear /おはよう/i, (msg) ->
  	d = new Date
  	hour = d.getHours() + 9
  	minute = d.getMinutes()
  	second = d.getSeconds()
  	str = "#{hour}時 #{minute}分 #{second}秒！"
  	if hour < 12
  		# 午前中
    	msg.send "おはよう！早起きは三文の得！"
    else if hour >= 12
    	# 午後
    	msg.send "おそよう！今日も一日頑張るぞい！"
    

  robot.adapter.on 'connected', () ->
    robot.send room: 'hubot-dev', "再起動中… あとでスクリプト読み込んでね"

  