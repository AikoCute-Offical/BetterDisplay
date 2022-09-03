<img src=".github/Icon-1024.png" width="230" alt="App icon" align="left"/>

<div>
<h2>BetterDisplay</h2>
<p>Display Management, Custom Resolutions, Brightness Adjustment and Dummy Displays for Macs - a menubar app from one of the makers of <a href="https://github.com/MonitorControl/MonitorControl">MonitorControl</a>.<p>
<a href="https://github.com/AikoCute-Offical/BetterDisplay/releases/download/v0.0.7/BetterDisplay.dmg"><img src=".github/macos_badge_noborder.png" width="175" alt="Download for macOS"/></a>
</div>

<br />

<div align="center">
<!-- shields -->
<!-- downloads -->
<a href="https://github.com/AikoCute-Offical/BetterDisplay/releases">
<img src="https://img.shields.io/github/downloads/AikoCute-Offical/BetterDisplay/total.svg?style=flat" alt="downloads"/>
</a>
<!-- version -->
<a href="https://github.com/AikoCute-Offical/BetterDisplay/releases">
<img src="https://img.shields.io/github/release/AikoCute-Offical/BetterDisplay.svg?include_prereleases&style=flat" alt="latest version"/>
</a>
<!-- platform -->
<a href="https://github.com/AikoCute-Offical/BetterDisplay">
<img src="https://img.shields.io/badge/platform-macOS-lightgrey.svg?style=flat" alt="platform"/>
</a>
</div>
  
<hr>
  
## About

BetterDisplay is a truly wonderful tool! It let's you convert your displays to fully scalable screens, allows brightness control, provides XDR/HDR upscaling (extra brightness beyond 100% on compatible displays), full dimming to black, helps you create and manage virtual displays (dummies) for your Mac, create Picture in Picture windows of your displays and gives you a host of other features to manage your display's settings easily from the menu bar.

<div align="center">
<img width="600" alt="screenshot" src="https://user-images.githubusercontent.com/37590873/174477337-745a7bb5-dd07-4c3f-bacf-dee7224cdcdc.png">
</div>

### Features

- **NEW! Convert your internal and natively connected external displays to smoothly-scaled HiDPI displays on Apple Silicon - now even without mirroring a dummy (displays with notch, HDR, HDCP, high refresh rate fully supported)!** *
- **NEW! Reach the full brightness potential of your XDR or HDR display - XDR brightness upscale to 1600 nits, external HDR brightness upscale!** *
- **NEW! Change the display's brightness, volume and colors via software and hardware (DDC) control via sliders and native or custom keyboard shortcuts!**
- **NEW! Create custom HiDPI resolutions for real displays manually and redefine certain system display parameters!**
- **NEW! Enable Night Shift for your TV!**
- Create any number of dummies (virtual screens) with varying aspect ratios.
- Use headless Macs (servers) with any resolution and HiDPI mode for remote access.
- Create Picture in Picture window for any real or dummy displays. *
- Redirect your display's contents (real or dummy) to an other screen via streaming. *
- If you are using a big TV up close, use the bottom half of your TV as a wide screen display (off-center streaming). *
- Scale Sidecar resolutions. *
- Portrait SideCar support. *
- Better quality zooming (`System Preferences`»`Accessibility`»`Zoom`) or High Quality screenshots even on 1080p displays
- Easily change the resolution of your real and dummy displays via a slider (or submenu) from the menubar.
- Quickly accessible refresh rate and screen rotation menu.
- Simplify creating mirrored sets. *
- Easily move around displays relative to each other using the app menu.
- Quickly designate a display to be main display.
- Associate dummies with displays for auto connect/disconnect.
- Keyboard shortcuts for basic operations.
- Advanced keyboard shortcuts support. *
- Custom dummies (resolution, orientation, naming). *
- Create a dummy optimized for a real display. *

... and more is coming! :)

_Note: featues marked with an asterisk (*) require a Pro license._

<details>
<summary><b>For a more detailed list and comparison with some popular alternatives, click here...</b></summary>

## Feature comparison

| | BetterDisplay | MonitorControl | Lunar | SwitchResX | Vivid | DisplayBuddy |
| --- | :-: | :-: | :-: | :-: | :-: | :-: |
| Custom scaled resolution editing | :white_check_mark::free: | | | :white_check_mark::moneybag: | | |
| Native smooth scaling | :white_check_mark::moneybag: | | | | | |
| Night Shift for TVs | :white_check_mark::free: | | | | | |
| Display name override | :white_check_mark::free: | | | :white_check_mark::moneybag: | | |
| Native, default resolution editing | :white_check_mark::free: | | | | | |
| Dummy display creation | :white_check_mark::free: | | | | | |
| Dummy-display association | :white_check_mark::free: | | | | | |
| Display mode selector menu | :white_check_mark::free: | | :white_check_mark::free: | :white_check_mark::moneybag: | | |
| Resolution slider | :white_check_mark::free: | | | | | |
| Picture in Picture | :white_check_mark::moneybag: | | | | | |
| Custom dummies | :white_check_mark::moneybag: | | | | | |
| Full screen streaming | :white_check_mark::moneybag: | | | | | |
| Stream/PIP, stretching, off-centering | :white_check_mark::moneybag: | | | | | |
| Stream/PIP rotation, portrait Sidecar | :white_check_mark::moneybag: | | | | | |
| Teleprompter mode (stream flipping) | :white_check_mark::moneybag: | | | | | |
| Mirror configuration | :white_check_mark::moneybag: | | | | | |
| DDC brightness control | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::exclamation: | | | :white_check_mark::moneybag: |
| DDC volume control | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::exclamation: | | | :white_check_mark::moneybag: |
| Native brightnesss and volume keys | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::free: | | | |
| Basic custom keyboard shortcuts | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::moneybag: | :white_check_mark::moneybag: | :white_check_mark::moneybag: |
| Advanced custom keyboard shortcuts | :white_check_mark::moneybag: | | :white_check_mark::exclamation: | :white_check_mark::moneybag: | | |
| Basic native OSD support | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::free: | | :white_check_mark::moneybag: | |
| Combined native OSD support | :white_check_mark::free: | :white_check_mark::free: | | | | |
| Software dimming (color table) | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::exclamation: | | | :white_check_mark::moneybag: |
| Software dimming (overlay) | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::exclamation: | | | |
| Combined dimming | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::exclamation: | | | |
| Dimming to black | :white_check_mark::free: | :white_check_mark::free: | :white_check_mark::moneybag: | | | |
| Color adjustments | :white_check_mark::moneybag: | | :white_check_mark::moneybag: | | | |
| Color temperature control | :white_check_mark::moneybag: | | :white_check_mark::moneybag: | | | |
| XDR extra brightness (advanced) | :white_check_mark::moneybag: | | :white_check_mark::moneybag: | | | |
| XDR extra brightness (overlay) | | | | | :white_check_mark::moneybag: | |
| Third party HDR extra brightness | :white_check_mark::moneybag: | | :white_check_mark::moneybag: | | | |
| Custom display timings for Intel Macs | | | | :white_check_mark::moneybag: | | |
| DDC input switching | :hourglass::free: | | :white_check_mark::free: | | | :white_check_mark::moneybag: |
| Command Line Integration | :hourglass::free: | | :white_check_mark::moneybag: | | | |
| DIY hardware integration | | | :white_check_mark::moneybag: | | | |
| Advanced Brightness syncing | :hourglass::free: | :white_check_mark::free: | :white_check_mark::moneybag: | | | |
| Presets | :hourglass::moneybag: | | :white_check_mark::moneybag: | :white_check_mark::moneybag: | | :white_check_mark::moneybag: |
| Schedule based settings | :hourglass::moneybag: | | :white_check_mark::moneybag: | | | |
| App specific settings | :hourglass::moneybag: | | :white_check_mark::moneybag: | :white_check_mark::moneybag: | | |
| | | | | | | |
| Price | $15 | \$0 | $23 | $15 | € 14 | $13 |
| Trial days | 14 | \- | 14 | 10 | \- | \- |

:white_check_mark: - Feature is available
  
:free: - Feature is completely free without limitation, even after trial

:exclamation: - Feature is free with limitations imposed after trial (for Lunar: 100 adjustments per day)

:moneybag: - Feature is a paid/pro feature and is not available after a trial (for apps with trial)

:hourglass: - Feature is planned

<i>Please note that this comparison is only meant to give you a big picture, does not contain all secondary and derived functionalities (free or paid) for each software and might not be a fair representation in every respect as I am not an expert on the alternative apps. I am pretty sure the devs of respective alternatives would feel the comparison is skewed in some way or I did miss an important aspect or unique advantage of the competing solution. For an educated decision you might want to try all apps that offer some sort of trial. If you feel the comparison is not fair, drop me a note a the [BetterDisplay Discord channel](https://discord.gg/aKe5yCWXSp)!</i>

</details>

## Installation

1. Download the [latest version](https://github.com/AikoCute-Offical/BetterDisplay/releases)
1. Open the DMG file and move the app to Applications folder on your Mac as instructed.
1. Start the app.
1. Use the app menu bar item to interact with the app.

## Fully scalable HiDPI desktop with BetterDisplay

Some Macs tend to have issues with custom resolutions. Apple Silicon Macs notoriously don't allow sub-4K resolution displays to have HiDPI ("Retina") resolutions even though most 1440p display would greatly benefit from having a HiDPI "Retina" mode. On other Macs the resolution options for wide displays are too constrained.

BetterDisplay solves the problem by **unlocking your screens making them fully scalable natively while providing a nice HiDPI resolution slider to freely scale the desktop size**. Also available is the option to create a flexible virtual "dummy" displays that support an unprecedented range of Retina resolutions. You can then utilize this dummy display as a mirror source for your display achieving any HiDPI resolution or for other purposes.

<details>
<summary>Advantages of BetterDisplay over a physical 4K HDMI dummy plug or mirroring your internal display to have HiDPI...</summary>
<br/>

- Your HDMI port will remain usable for an other display on the Mac Mini or an ugly dongle won't stick out of your MacBook Pro
- Your internal screen will be available as an extended space on a MacBook (or you can use clamshell mode).
- Does not suffer from issues that prevalent with the physical dummy (like jittery mouse cursor).
- Offers a much wider range of HiDPI and standard resolutions.
- Works with all aspect ratios, does not depend on what resoluations are recorded in the dummy's EDID/firmware.
- Available instantly.
</details>

### How to unlock scaling and HiDPI for my display?

BetterDisplay has several uses and lots of features, but one of the most seeked-after one is unlocking fully scaled desktops and HiDPI resolutions on Apple Silicon macs.

To enable the feature, 

1. Start the app and opten the app menu (locate the BetterDisplay icon in the menu bar).
2. Open `Settings` (the gear icon at the bottom of the menu).
3. Navigate to the `Displays` section in `Settings` (gear icon),
4. enable the `Edit and manage the system configuration of this display` feature first under the display you want to make smoothly scalable (the list can contain more than one display in a multi-monitor setup!), 
5. and then enable the `Allow smooth resolution scale` option just below it as it appears.
6. If you did this for all the relevant displays, click on the `Apply System Display Configuration` button at the bottom of the screen.
7. Enter your admin password and then reboot.
8. After reboot, use the resolution sliders in the app menu to scale the desktop.

<div align="center">

<img width="600" alt="config" src="https://user-images.githubusercontent.com/37590873/174477300-2568d760-03b8-4c59-9ba9-4d8a8a3223de.png">
  
</div align="center">

<details>
<summary><b>Notes and troubleshooting...</b></summary>
<br/>

- The smooth scaling option can be enabled on a per display basis, so if you want more of your displays to have this feature, **don't forget to scroll down in the app `Settings` > `Displays` tab and make the setting for each of your displays!** :)
- The feature is **compatible with macOS Monterey 12.4+, macOS Ventura** and Apple Silicon macs and requires natively connected (DisplayPort, HDMI) or built-in screens. The maximum allowed scaled (HiDPI) desktop size can't exceed the native display resolution. You'll also need the latest BetterDisplay version.
- The feature works if the system properly detects the `Native panel pixel resolution`. If this is not correctly shown for your display under `Settings` > `Displays`, please select the `Edit native panel pixel resolution` option and enter the correct values!
- The smooth scaling slider will appear only if the `Resolution selector` under `Settings`/`App menu` is set to slider mode.
- The slider 100% will be the `Default resolution` (on normally LoDPI display this tends to be the native resoltuion - which will mean the slider maxes out at 100%, on HiDPI display half of the native resolution - which will make the resolution slider max out at 200%). If you want to rescale the resolution slider, change the `Default resolution` to an accessible different resolution than it is set.
- The maximum resolution that can be set for low PPI displays corresponds to the `Native panel pixel resolution` which is available only as normal resolution (not HiDPI). Converting the native resolution to HIDPI would not make sense (except for some special use cases like screenshot and accessibility zooming quality improvement) - for this or for achieving higher-than-native-resolution scaling (for extra screen real estate) you can continue to use dummy mirroring.
- The **maximum horizontal pixel count seems to be constrained on the entry-level M1 configurations to 6K** (M1 Pro/Max/Ultra seems to be unaffected) which might pose an issue  to users with ultra-wide screens trying to go beyond a certain horizontal resolution (the limit seems to be 3072px HiDPI which is 6144px actual).
</details>

### Dummy mirroring method

An alternative (for some scenarios the only valid) approach is to create a mirrored dummy in order to use custom resolutions. This works for Sidecar and other non-native devices (like DisplayLink) and also enables scaling beyond the native resolution of the display panel on Apple Silicon (for added screen real estate). Follow these steps to do this:

1. Start the app and locate the app menu (you'll see a BetterDisplay icon in the menu bar).
2. In the app menu locate your display's name and click on the `Settings` sub-menu under it.
3. Click on the `Create Dummy for This Display` option.
4. In the ensuing pop-up select `Connect and Set up Mirroring`.

It's that simple. Afterwards you should see your dummy mirrored to your display where you can use the slider to change the resolution quickly.

<details>
<summary><b>Notes and troubleshooting for the dummy mirroring method...</b></summary>
<br/>
  
- Due to the finnicky nature of macOS display and mirror management, sometimes setting up the mirror fails or the mirror reverts to work 'the other way around' (namely instead of the dummy being mirrored to the display, the display is being mirrored to the dummy). In this case you should stop the mirroring (select `Mirror Target` > `Stop Mirroring`) and reconfigure the mirror under the dummy in the display list `Mirror Target` > `Display Name`.
- Sometimes the created mirror might not be the main display (the display with the menu bar and the one where windows are located by default) or a created but invisible dummy becomes the main display which makes moving forward difficult. You can easily change any display or mirror set to be main by simply choosing `Settings` > `Set as main` under the display in the app menu.
- If you find that your new dummy or dummy mirror is not located where you actually want it to be relative to your other displays, you can easily move around a display using `Settings` > `Move Next to ...` from the app menu.
- You can configure both mirroring, main status, resolution and everything else in System Preferences the old fashioned way as well. If you are not using Pro, you actually need to do this. Follow the [this guide](https://github.com/AikoCute-Offical/BetterDisplay/discussions/477) on how to do this.
- If you really can't set up what you want, just hop over to the [BetterDisplay Discord channel](https://discord.gg/aKe5yCWXSp) where you can lay out your problem and eventually we'll help you out! :)
</details>

## Compatibility

- The app is compatible with all Apple Silicon macs running macOS Monterey (MacBook Air, Mini, 2020 and 2021 MacBook Pros). Development and testing also takes place on Apple Silicon.
- Most features of the app is also compatible with Intel Macs capable of officially running macOS Big Sur or newer. However, dummy mirroring and unlocking smooth resolution scale might not work as expected especially on Intel Macs, especially those with AMD GPUs.
- Smooth resolution scaling requires macOS Monterey 12.4 or newer and natively connected displays. Entry level M1 machines have a max. horizontal resolution limitation of 6K (this limitation does not apply on M1 Pro/Max/Ultra) with smooth scaling.
- Dummy mirroring based resolution unlock works with every Apple Silicon macs. Dummies have some limitations (60Hz refresh rate, lack of HDCP and HDR support).
- External display hardware backlight control and volume control require DDC capable, natively connected display or a natively supported Apple display. The HDMI ports of 2018+ Macs do not support DDC, so you have to use USB-C/DisplayPort (most USB-C to HDMI dongles work as well). Some docks (especially DisplayLink ones) do not work. Software brightness control is available with all displays.
- XDR/HDR upscaling requires an Apple XDR display (built-in or external) or a natively connected HDR display (Vesa DisplayHDR 600 or higher recommended).
- The app is compatible with headless macs to create custom dummy resolutions for remote access.

## Privacy

- Licensing uses the third party provider [Paddle](https://www.paddle.com) as backend. This also means that the app communicates over the network with Paddle's servers to verify licensing, trial status and facilitate check-out using Paddle's SDK. Besides data required for licensing purposes by Paddle's services, no other info is transferred over the network.
- I decided not to have a marketing list (marketing opt-in) of any kind. I also do not build any usage database or collect unique (and not unique) IDs either - besides what Paddle collects and presents on its dashboard for me (to keep track of valid software licenses).
- Aside from Paddle the only other form of network communication by the app is what is required for the built-in updater to work in order to receive the update metadata and download the update binary.
