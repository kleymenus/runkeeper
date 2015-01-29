# runkeeper api

First, use [OmniAuth strategy](https://github.com/m4i/omniauth-runkeeper)

New Sleep Measurement

  - runkeeper_user = Runkeeper.new(runkeeper_token)
  - sleep = runkeeper_user.new_sleep(timestamp: Time.now, total_sleep: 773, deep: 240, light: 272, awake: 81, times_woken: 4)
  - sleep.save
  - response uri: "location"=>["/sleep/-000000-0000000"]
