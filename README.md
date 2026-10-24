# Homebrew Tap for display-switch

A fork of [haimgel/display-switch](https://github.com/haimgel/display-switch) that identifies
identical monitors by their EDID serial number on MacOS, so that two monitors reporting the same
name can be configured separately.

## Installation

```bash
brew install matthewpick/display-switch/display_switch
```

Or:

```bash
brew tap matthewpick/display-switch
brew install display_switch
```

Then start it as a background service:

```bash
brew services start matthewpick/display-switch/display_switch
```

## Configuration

Create `~/Library/Preferences/display-switch.ini`. On MacOS the monitor IDs include the EDID serial
number, so identical monitors can be told apart:

```ini
usb_device = "046d:094d"

[monitor1]
monitor_id = "2667"
on_usb_connect = "DisplayPort2"

[monitor2]
monitor_id = "1126"
on_usb_connect = "Hdmi2"
```

To find your monitor IDs, run `display_switch` in the foreground and read the startup lines:

```
Display 'PHL 279P1 2667' is currently set to Hdmi1(0x11)
Display 'PHL 279P1 1126' is currently set to DisplayPort1(0xf)
```

The log is also written to `~/Library/Logs/display-switch/display-switch.log`.

See the [fork's README](https://github.com/matthewpick/display-switch#readme) for full
configuration documentation.
