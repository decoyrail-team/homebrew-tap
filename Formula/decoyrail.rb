class Decoyrail < Formula
  desc "Endpoint firewall for AI agents: decoy secrets, egress policy, audit"
  homepage "https://decoyrail.com"
  url "https://github.com/decoyrail-team/decoyrail/releases/download/v0.3.1/decoyrail-v0.3.1-aarch64-apple-darwin.tar.gz"
  sha256 "cfcaf70446c4d6f0c5825e8942d8051a884fff0b2bf76f0b6de6617de12b989a"
  version "0.3.1"
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
