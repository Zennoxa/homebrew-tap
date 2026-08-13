class Shield < Formula
  desc "Code security scanner: SAST, secrets, dependencies, containers and IaC"
  homepage "https://zennoxa.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.3.0/shield-darwin-amd64"
      sha256 "f3e6ca6ac5955eafb4b2be7d0b25b96e6429f0b912408926142665a1353dc68c"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.3.0/shield-darwin-arm64"
      sha256 "6e81afd9f1ed4f89ed29c13050abebc4e738a9c9d759944537f4d81601d3df6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.3.0/shield-linux-amd64"
      sha256 "8c6a7e128a16e1b3f26ebf4ea88d54adff7bf41b2447fe784685d2f1fce79554"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.3.0/shield-linux-arm64"
      sha256 "8d5b5c95a006a25dd400c671267b562037b3e28b33652b19e6ae1bae7c6beba9"
    end
  end

  def install
    bin.install Dir["shield-*"].first => "shield"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/shield version")
  end
end
