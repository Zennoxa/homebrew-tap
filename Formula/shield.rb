class Shield < Formula
  desc "Code security scanner: SAST, secrets, dependencies, containers and IaC"
  homepage "https://zennoxa.com"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.1/shield-darwin-amd64"
      sha256 "f2572c771f6e93d0361148f8aaabbc19383220741b30605325cdfc8dc473fee2"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.1/shield-darwin-arm64"
      sha256 "35eaf465ff99fa8367046d9b976e39de5ba4c7e7dce984546cc49c7e2644e0a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.1/shield-linux-amd64"
      sha256 "8caf7d573fe972a9d66a60c0123beb9770daa51bf941b928b27b6090635a7f75"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.1/shield-linux-arm64"
      sha256 "385eb9c2f54200489f79815adf0bf188c33880bf879fa5727e2c37bddcf9de63"
    end
  end

  def install
    bin.install Dir["shield-*"].first => "shield"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/shield version")
  end
end
