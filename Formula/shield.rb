class Shield < Formula
  desc "Code security scanner: SAST, secrets, dependencies, containers and IaC"
  homepage "https://zennoxa.com"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.0/shield-darwin-amd64"
      sha256 "8a9176e739e1cb3852dddc86e0018bd559a7fa0e9dc755108159a26e481cf05b"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.0/shield-darwin-arm64"
      sha256 "28f13284888352a55198b0f405bf66c62cbcdfad1f15fea803d3f96761908102"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.0/shield-linux-amd64"
      sha256 "140b7212ab9e9df86f960927c934e58e7fb404afdda69dbcdda1d180ef65e5fa"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.6.0/shield-linux-arm64"
      sha256 "f38521ca96403f7381eac1e2564f8008383cf072e3728ea69023d995400ab1c4"
    end
  end

  def install
    bin.install Dir["shield-*"].first => "shield"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/shield version")
  end
end
