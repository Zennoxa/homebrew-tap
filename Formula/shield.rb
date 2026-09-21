class Shield < Formula
  desc "Code security scanner: SAST, secrets, dependencies, containers and IaC"
  homepage "https://zennoxa.com"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.7.0/shield-darwin-amd64"
      sha256 "9c910333274667ca648ed9cf29b890ea37bf0d027e60e60ea3d05a2968794fd7"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.7.0/shield-darwin-arm64"
      sha256 "47bd827ccd975a56d12449a59980d0c4863956d7d71427ca50248e083996565a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.7.0/shield-linux-amd64"
      sha256 "ed6a14a12495e4602a9b0bb8bd842026c39b9770dffc11597a1fd3568a934206"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.7.0/shield-linux-arm64"
      sha256 "451f555b1dcacee153ba89a3bb54315d318af1aeaa7cd085282978acf25fcac5"
    end
  end

  def install
    bin.install Dir["shield-*"].first => "shield"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/shield version")
  end
end
