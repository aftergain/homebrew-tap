# Aftergain Homebrew tap

## OP!Amp

A freeware system-wide equalizer for **Apple Silicon, macOS 14.2 or later**.

```sh
brew install --cask aftergain/tap/opamp
```

Homebrew adds this tap when installing the fully qualified Cask. Keep Homebrew up to date before installing.

To update:

```sh
brew update
brew upgrade --cask aftergain/tap/opamp
```

### Signing and security

OP!Amp is ad-hoc signed and is not notarized by Apple. The Cask removes `com.apple.quarantine` from **OP!Amp.app only**, including its bundled components. It does not disable Gatekeeper globally or change SIP. Review the release and Cask before installing.

The DMG is pinned to its release version and SHA-256 checksum. No installer script is fetched or run from a separate network location.

### Audio permissions and optional Virtual Output

Driverless mode requires macOS system-audio capture permission, not a driver installation. The optional Virtual Output driver requires a separate installation from inside the app with administrator authorization, and can restart macOS audio. Existing Virtual Output users should run **Devices → Routing → Install Virtual Output…** after updating the app.

The tap does not automatically install, update, or remove the Virtual Output driver, reset presets, or change audio settings. Uninstalling the Cask removes the app; any optional driver installation must be removed separately using the app's provided uninstaller.

- [Website](https://opamp.giveit2.me)
- [Releases](https://github.com/aftergain/OP.Amp/releases)
- [Support development](https://buymeacoffee.com/aftergain)
