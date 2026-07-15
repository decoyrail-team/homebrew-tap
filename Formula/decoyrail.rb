class Decoyrail < Formula
  desc "Endpoint firewall for AI agents: decoy secrets, egress policy, audit"
  homepage "https://decoyrail.com"
  url "https://github.com/decoyrail-team/decoyrail/releases/download/v0.2.10/decoyrail-v0.2.10-aarch64-apple-darwin.tar.gz"
  sha256 "3052f263d1f00496394d5eecff0cf32409e159e7a4cabe17866f47806dacc0df"
  version "0.2.10"
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
