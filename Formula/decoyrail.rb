class Decoyrail < Formula
  desc "Endpoint firewall for AI agents: decoy secrets, egress policy, audit"
  homepage "https://decoyrail.com"
  url "https://github.com/decoyrail-team/decoyrail/releases/download/v0.3.0/decoyrail-v0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "c95cc48bd8efe30bd26113951e4ef77f53e510d3583980ac45c91461a9b23c8c"
  version "0.3.0"
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
