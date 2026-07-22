class Shield < Formula
  desc "Code security scanner: SAST, secrets, dependencies, containers and IaC"
  homepage "https://zennoxa.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.1.0/shield-darwin-amd64"
      sha256 "b387f798781f45ca34d45412e0e49e81a9f850a021fabc575f322931bdd40740"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.1.0/shield-darwin-arm64"
      sha256 "878990f78400f0b381e7429f4fd67961a9d3a7b89045f9252f64ceb550fa97ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.1.0/shield-linux-amd64"
      sha256 "72fa2780714bff13852a2689c8be777a86a674047181db594228dcc2553665b3"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.1.0/shield-linux-arm64"
      sha256 "1a0dd0438b987ced1ef095806c2ae846e60f105b356a730f470b5e3bed1c845a"
    end
  end

  def install
    bin.install Dir["shield-*"].first => "shield"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/shield version")
  end
end
