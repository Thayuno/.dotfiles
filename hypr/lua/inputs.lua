hl.config({
  input = {
    kb_layout = "br",
    numlock_by_default = true,
    sensitivity = 0,
    touchpad = {
      natural_scroll = true,
      disable_while_typing = false,
    }
  }
})

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace",
})

hl.gesture({
  fingers = 3,
  direction = "down",
  action = "close"
})

hl.gesture({
  fingers = 3,
  direction = "up",
  action = "fullscreen"
})

hl.gesture({
  fingers = 4,
  direction = "up",
  action = function () hl.exec_cmd("footclient") end
})
