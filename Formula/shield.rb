class Shield < Formula
  desc "Code security scanner: SAST, secrets, dependencies, containers and IaC"
  homepage "https://zennoxa.com"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.2/shield-darwin-amd64"
      sha256 "680fa45960a6f214ddb2bee829b204a849479794715fde0687f114fa26b39a73"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.2/shield-darwin-arm64"
      sha256 "d68616230176e8d24c1cbaf80e92ff265f8922d21dbc0a86277dfdc3dc1395a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.2/shield-linux-amd64"
      sha256 "927e01acc4bd297c7eb18b9d5c529a37de0849dc6afc05ce05999d80b416bd6a"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.2/shield-linux-arm64"
      sha256 "72d771f6bfe9a1e82f198b32276c0c79bd632df31bda9a002545f3ac30eb904a"
    end
  end

  def install
    bin.install Dir["shield-*"].first => "shield"
  end

  test do
    assert_match "0.6.2", shell_output("#{bin}/shield version")
  end
end
