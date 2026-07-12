class Decoyrail < Formula
  desc "Endpoint firewall for AI agents: decoy secrets, egress policy, audit"
  homepage "https://decoyrail.com"
  url "https://github.com/decoyrail-team/homebrew-tap/releases/download/v0.2.9/decoyrail-v0.2.9-aarch64-apple-darwin.tar.gz"
  sha256 "23e88318116dc036db893d1cbd94d475aa7db341e8648696b57e1c71fb4cf797"
  version "0.2.9"
  license "FSL-1.1-Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "decoyrail"
  end

  def caveats
    <<~EOS
      To intercept TLS, trust the device CA once:
        decoyrail ca install
      Remove everything Decoyrail installed with:
        decoyrail uninstall
    EOS
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/decoyrail --version")
  end
end
