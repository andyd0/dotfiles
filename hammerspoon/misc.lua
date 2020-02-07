hs.hotkey.bind(hyper, "w", function() hs.eventtap.keyStrokes('¯\\_(ツ)_/¯'); end)
hs.hotkey.bind(hyper, "a", function() hs.caffeinate.lockScreen(); end)

hs.hotkey.bind(hyper, "`", function() 
  local timeStamp = os.date("%d-%b-%Y")
  hs.eventtap.keyStrokes(timeStamp)
end)

hs.hotkey.bind(hyper, "4", function()
  local timeStamp = string.gsub(os.date("%Y-%m-%d_%T"), ":", ".")
  local fileName = os.getenv("HOME") .. "/Desktop/ss-" .. timeStamp .. ".png"
  local windowId = hs.window.frontmostWindow():id()
  hs.task.new("/usr/sbin/screencapture", nil, {"-l" .. windowId, fileName }):start()
end)
