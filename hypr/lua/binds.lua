-- System

hl.bind("SUPER + Space", hl.dsp.exec_cmd("fuzzel"))
hl.bind("SUPER + Return", hl.dsp.exec_cmd("footclient"))
hl.bind("SUPER + V", hl.dsp.window.float({action = "toggle"}))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({action = "toggle"}))
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + E", hl.dsp.exec_cmd("thunar"))
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + KP_Subtract", hl.dsp.exec_cmd("footclient zsh -c \"curd\""))

-- Shutdown or Restart

hl.bind("CTRL + SUPER + ALT + Delete", hl.dsp.exec_cmd("systemctl poweroff"))
hl.bind("CTRL + ALT + Escape", hl.dsp.exec_cmd("uwsm stop"))

-- Workspaces

local arrows = {"left", "right", "up", "down"}
local numpad = {"KP_Insert", "KP_End", "KP_Down", "KP_Next", "KP_Left", "KP_Begin", "KP_Right", "KP_Home", "KP_Up", "KP_Prior"}

for _, arrow in ipairs(arrows) do
  hl.bind("SUPER +" .. arrow, hl.dsp.focus({direction = arrow}))
end

for i = 1, 10 do
  key = i % 10
  hl.bind("SUPER + " .. key, hl.dsp.focus({workspace = i}))
  hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({workspace = i}))
  hl.window_rule({workspace = i, monitor = "LVDS-1"})
end

for i, num in ipairs(numpad) do
  n = i + 10
  hl.bind("SUPER + " .. num, hl.dsp.focus({workspace = n}))
  hl.bind("SUPER + SHIFT + " .. num, hl.dsp.window.move({workspace = n}))
  hl.window_rule({workspace = n, monitor = "HDMI-A-1"})
end

hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("overlay"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({workspace = "special:overlay"}))

hl.bind("SUPER + mouse_down", hl.dsp.focus({workspace = "e+1"}))
hl.bind("SUPER + mouse_up", hl.dsp.focus({workspace = "e-1"}))

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

hl.bind("SUPER + B", hl.dsp.exec_cmd("firefox"))
