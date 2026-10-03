cask "opamp" do
  version "0.2.28"
  sha256 "8f4c484f76995cc118bd19750ccd406c6c3c92b7055a658ab01ba0d16eb5a641"

  url "https://github.com/aftergain/OP.Amp/releases/download/v#{version}/OP.Amp-#{version}-macOS-arm64.dmg"
  name "OP!Amp"
  desc "System-wide equalizer with parametric EQ and dynamics processing"
  homepage "https://opamp.giveit2.me/"

  depends_on arch: :arm64
  # Homebrew expresses the OS requirement at major-release granularity.
  # The application itself requires macOS 14.2 or later.
  depends_on macos: :sonoma

  app "OP!Amp.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/OP!Amp.app"],
        must_succeed: false
  end

  caveats <<~EOS
    OP!Amp requires Apple Silicon and macOS 14.2 or later.
    This build is ad-hoc signed and is not notarized by Apple.
    This tap removes quarantine from OP!Amp.app only; it does not disable Gatekeeper globally.

    Driverless mode requires macOS system-audio capture permission.
    Virtual Output is optional and is not installed by this Cask.
    Install or update it from Devices > Routing > Install Virtual Output... in the app.
    That separate installation requires administrator authorization and can restart macOS audio.
    Start at a low listening volume when testing EQ or dynamics settings.
  EOS
end
