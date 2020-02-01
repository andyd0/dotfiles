hyper = { "cmd", "alt", "ctrl", "shift" }

require "apps"
require "grid"

hs.hotkey.bind(hyper, "0", function()
  hs.reload()
end)

hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()

hs.hotkey.bind(hyper, "r", function() hs.reload(); end)
hs.hotkey.bind(hyper, "w", function() hs.eventtap.keyStrokes('¯\\_(ツ)_/¯'); end)
hs.hotkey.bind(hyper, "a", function() hs.caffeinate.lockScreen(); end)
