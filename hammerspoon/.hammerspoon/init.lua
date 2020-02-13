hs.hotkey.bind('cmd', '1', function()
                  hs.application.launchOrFocus('Emacs')
end)

hs.hotkey.bind('cmd', '2', function()
                  hs.application.launchOrFocus("iterm")
end)

hs.hotkey.bind('cmd', '3', function()
                  hs.application.launchOrFocus("Google Chrome")
end)

hs.hotkey.bind('cmd', '4', function()
                  hs.application.launchOrFocus("Android Studio")
end)

hs.hotkey.bind('cmd', '5', function()
                  hs.application.launchOrFocus("IntelliJ IDEA CE")
end)

hs.hotkey.bind('cmd', '0', function()
                  hs.application.launchOrFocus("Firefox")
end)

hs.hotkey.bind({'cmd', 'alt'}, 'f', function()
      local window = hs.window.focusedWindow()
      if window ~= nil then
         window:maximize()
      end
end)

hs.hotkey.bind({'cmd', 'alt'}, 'c', function()
      local window = hs.window.focusedWindow()
      local screenDimensions = hs.window.focusedWindow():screen():frame()
      local windowFrame = window:frame()

      windowFrame.x = screenDimensions.x + screenDimensions.w / 4
      windowFrame.y = screenDimensions.y + screenDimensions.h / 4
      windowFrame.w = screenDimensions.w / 2
      windowFrame.h = screenDimensions.h / 2

      window:setFrame(windowFrame)
end)

hs.hotkey.bind({'cmd', 'alt'}, 'l', function()
      local window = hs.window.focusedWindow()
      local screenDimensions = hs.window.focusedWindow():screen():frame()
      local windowFrame = window:frame()

      windowFrame.x = screenDimensions.x
      windowFrame.y = screenDimensions.y
      windowFrame.w = screenDimensions.w / 3
      windowFrame.h = screenDimensions.h

      window:setFrame(windowFrame)
end)

hs.hotkey.bind({'cmd', 'alt'}, 'm', function()
      local window = hs.window.focusedWindow()
      local screenDimensions = hs.window.focusedWindow():screen():frame()
      local windowFrame = window:frame()

      windowFrame.x = screenDimensions.x + screenDimensions.w / 3
      windowFrame.y = screenDimensions.y
      windowFrame.w = screenDimensions.w / 3
      windowFrame.h = screenDimensions.h

      window:setFrame(windowFrame)
end)

hs.hotkey.bind({'cmd', 'alt'}, 'r', function()
      local window = hs.window.focusedWindow()
      local screenDimensions = hs.window.focusedWindow():screen():frame()
      local windowFrame = window:frame()

      windowFrame.x = screenDimensions.x + screenDimensions.w / 3 * 2
      windowFrame.y = screenDimensions.y
      windowFrame.w = screenDimensions.w / 3
      windowFrame.h = screenDimensions.h

      window:setFrame(windowFrame)
end)

hs.hotkey.bind({'cmd', 'alt'}, 'up', function ()
      local window = hs.window.focusedWindow()
      local screenDimensions = hs.window.focusedWindow():screen():frame()
      local windowFrame = window:frame()

      windowFrame.x = screenDimensions.x
      windowFrame.y = screenDimensions.y
      windowFrame.w = screenDimensions.w
      windowFrame.h = screenDimensions.h / 2

      window:setFrame(windowFrame)
end)

hs.hotkey.bind({'cmd', 'alt'}, 'left', function ()
      local window = hs.window.focusedWindow()
      local screenDimensions = hs.window.focusedWindow():screen():frame()
      local windowFrame = window:frame()

      windowFrame.x = screenDimensions.x
      windowFrame.y = screenDimensions.y
      windowFrame.w = screenDimensions.w / 2
      windowFrame.h = screenDimensions.h

      window:setFrame(windowFrame)
end)

hs.hotkey.bind({'cmd', 'alt'}, 'down', function ()
      local window = hs.window.focusedWindow()
      local screenDimensions = hs.window.focusedWindow():screen():frame()
      local windowFrame = window:frame()

      windowFrame.x = screenDimensions.x
      windowFrame.y = screenDimensions.y + screenDimensions.h / 2
      windowFrame.w = screenDimensions.w
      windowFrame.h = screenDimensions.h / 2

      window:setFrame(windowFrame)
end)

hs.hotkey.bind({'cmd', 'alt'}, 'right', function ()
      local window = hs.window.focusedWindow()
      local screenDimensions = hs.window.focusedWindow():screen():frame()
      local windowFrame = window:frame()

      windowFrame.x = screenDimensions.x + screenDimensions.w / 2
      windowFrame.y = screenDimensions.y
      windowFrame.w = screenDimensions.w / 2
      windowFrame.h = screenDimensions.h

      window:setFrame(windowFrame)
end)
