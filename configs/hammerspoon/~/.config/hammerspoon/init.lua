local event = hs.eventtap.event
local types = event.types
local keycodes = hs.keycodes.map

-- /*------------------------------------------------------------------------------------------*\ --
-- *|                                      SUPER & HYPER                                       |* --
-- \*------------------------------------------------------------------------------------------*/ --

local super = {
  keyCode = keycodes["rightcmd"],
  modifiers = { "ctrl", "alt", "cmd" },
  isDown = false,
}

local hyper = {
  keyCode = keycodes["rightalt"],
  modifiers = { "ctrl", "alt", "shift", "cmd" },
  isDown = false,
}

local keyByCode = {}
for key, code in pairs(keycodes) do
  if type(code) == "number" then
    keyByCode[code] = key
  end
end

keyboardTap = hs.eventtap.new({ types.flagsChanged, types.keyDown, types.keyUp },
  function(e)
    local eventType = e:getType()
    local keyCode = e:getKeyCode()

    if eventType == types.flagsChanged then
      local flags = e:getFlags()

      if keyCode == super.keyCode then
        super.isDown = flags.cmd
        return true
      elseif keyCode == hyper.keyCode then
        hyper.isDown = flags.alt
        return true
      end

      return false
    end

    local modifiers = (hyper.isDown and hyper.modifiers) or (super.isDown and super.modifiers)
    if not modifiers then
      return false
    end

    local keyName = keyByCode[keyCode]
    if eventType == types.keyDown and keyName then
      return true, {
        event.newKeyEvent(modifiers, keyName, true),
        event.newKeyEvent(modifiers, keyName, false),
      }
    end

    return eventType == types.keyUp
  end
):start()

keyboardTapSupervisor = hs.timer.doEvery(10,
  function()
    if not keyboardTap:isEnabled() and not hs.eventtap.isSecureInputEnabled() then
      keyboardTap:start()
    end
  end
)

-- /*------------------------------------------------------------------------------------------*\ --
-- *|                                       ACTION KEYS                                        |* --
-- \*------------------------------------------------------------------------------------------*/ --

local function bindVariants(key, onTap, onShiftTap, onOptTap)
  hs.hotkey.bind({}, key, onTap)
  hs.hotkey.bind({ "shift" }, key, onShiftTap)
  hs.hotkey.bind({ "alt" }, key, onOptTap)
end

-- F14 — Close / Quit / Lock
bindVariants("f14",
  function() hs.eventtap.keyStroke({ "cmd" }, "w") end,        -- close window
  function() hs.eventtap.keyStroke({ "cmd" }, "q") end,        -- quit application
  function() hs.eventtap.keyStroke({ "ctrl", "cmd" }, "q") end -- lock screen
)

-- F15 — Minimize / Hide / Desktop
bindVariants("f15",
  function() hs.eventtap.keyStroke(hyper.modifiers, "m") end, -- minimize window
  function() hs.eventtap.keyStroke({ "cmd" }, "h") end,       -- hide application
  function() hs.eventtap.keyStroke(hyper.modifiers, "d") end  -- show desktop
)

-- F16 — Zoom / Fill / Full
bindVariants("f16",
  function() hs.eventtap.keyStroke(hyper.modifiers, "z") end,  -- zoom window
  function() hs.eventtap.keyStroke({ "ctrl", "fn" }, "f") end, -- fill window
  function() hs.eventtap.keyStroke({ "fn" }, "f") end          -- fullscreen window
)
