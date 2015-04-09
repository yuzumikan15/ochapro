
# Description:
#   the most useless hubot script
#
# Commands:
#   hubot yo {{username}} - yo indivisually

Yo = require "yo-api"

module.exports = (robot) ->
  token = '3ff69096-4e7f-4045-9857-29c77306740c'

  handler = (msg, cb) ->
    (err, res, body) ->
      json = JSON.parse body
      if err? or err or= json.error
        robot.logger.error "something went wrong with yo api", err
        msg?.reply "something went wrong with yo api"
      else
        cb res, json

  if token?
    yo = new Yo token
    robot.hear /yoall?$/, (msg) ->
      yo.yoall handler msg, ->
        msg.send "sent Yo to all subscribers"

    robot.hear /yo ((?!(name|subscribers|subs)$).+)$/, (msg) ->
      username = msg.match[1].toUpperCase()
      yo.yo username, handler msg, ->
        msg.send "sent Yo to #{username}"

  room = '#hubot-dev'

  if room?
    robot.router.get "/yo", (req, res) ->
      robot.messageRoom room, "received Yo from #{req.query.username}"
      res.end()