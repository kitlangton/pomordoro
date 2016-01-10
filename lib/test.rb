require 'timers'

timers = Timers::Group.new

@count = 10

def message_slack_test
  `curl --data ":pomodoro: #{@count}" $'https://vikingcodeschool.slack.com/services/hooks/slackbot?token=bii9bJoHe1mbns9bBm5lTpb6&channel=%23test'`
  @count -= 1
end

now_and_every_five_seconds = timers.now_and_every(5) { message_slack_test }

until @count == 0
  timers.wait
end
