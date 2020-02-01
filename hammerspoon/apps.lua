local applicationHotkeys = {
  g = 'Google Chrome',
  t = 'iTerm',
  c = 'Visual Studio Code',
  s = 'Slack',
  d = 'Discord',
}

for key, app in pairs(applicationHotkeys) do
  hs.hotkey.bind(hyper, key, function()
    hs.application.launchOrFocus(app)
  end)
end
