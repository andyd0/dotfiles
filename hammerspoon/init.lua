hyper = { "cmd", "alt", "ctrl", "shift" }

require "apps"
require "grid"
require "misc"

hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()
hs.hotkey.bind(hyper, "r", function() hs.reload(); end)
