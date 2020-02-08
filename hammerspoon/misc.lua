hs.hotkey.bind(hyper, "w", function() hs.eventtap.keyStrokes('¯\\_(ツ)_/¯'); end)
hs.hotkey.bind(hyper, "a", function() hs.caffeinate.lockScreen(); end)

hs.hotkey.bind(hyper, "`", function() 
  hs.eventtap.keyStrokes(os.date("%d-%b-%Y"))
end)

function getTimeStamp()
  return string.gsub(os.date("%Y-%m-%d_%T"), ":", ".")
end

hs.hotkey.bind(hyper, "4", function()
  local fileName = os.getenv("HOME") .. "/Desktop/ss-" .. getTimeStamp() .. ".png"
  hs.task.new("/usr/sbin/screencapture", nil, {"-i", fileName }):start()
end)

hs.hotkey.bind(hyper, "5", function()
  local fileName = os.getenv("HOME") .. "/Desktop/ss-" .. getTimeStamp() .. ".png"
  local windowId = hs.window.frontmostWindow():id()
  hs.task.new("/usr/sbin/screencapture", nil, {"-l" .. windowId, fileName }):start()
end)

