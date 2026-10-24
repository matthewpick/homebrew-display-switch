# typed: false
# frozen_string_literal: true

class DisplaySwitch < Formula
  desc "Watch for USB device connect/disconnect events and switch display inputs via DDC/CI"
  homepage "https://github.com/matthewpick/display-switch"
  version "1.5.1"
  license "MIT"

  depends_on "libusb"

  on_macos do
    url "https://github.com/matthewpick/display-switch/releases/download/v#{version}/display_switch-v#{version}-macos-universal.zip"
    sha256 "SHA256_PENDING"

    def install
      bin.install "display_switch"
    end
  end

  service do
    run [opt_bin/"display_switch"]
  end

  test do
    assert_match "display_switch", shell_output("#{bin}/display_switch --version")
  end
end
