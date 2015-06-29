module.exports = (robot) ->
 robot.respond /kaomoji/i, (msg) ->
  msg.send msg.random["(*^^*)","(((o(＞△＜;)o)))","Σd(≧▽≦*)","⊂⌒っ*-ω-)っＺｚｚ…","Σ―(〃ω〃)♡→","(((o((〃△〃≡〃△〃)o)))","(〃ω〃)","(*^o^)／＼(^-^*)","♡(∩＞ω＜∩)"]

  robot.adapter.on 'connected', () ->
    robot.send room: 'hubot-dev', "再起動中… あとでスクリプト読み込んでね"