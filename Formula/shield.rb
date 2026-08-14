class Shield < Formula
  desc "Code security scanner: SAST, secrets, dependencies, containers and IaC"
  homepage "https://zennoxa.com"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.4.0/shield-darwin-amd64"
      sha256 "a5cfb2de7c26415dddbf0a500a41aeee3d2feecfdf488e4eb57d0b92b7497e7b"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.4.0/shield-darwin-arm64"
      sha256 "ed733db777ec18fbedc69e543dd89bdea094e51bd0ab20d518fc8e7ab68296b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.4.0/shield-linux-amd64"
      sha256 "3b022c26e2f42aa8590950a1fe1facfd04f84ec7f5b91cee787995a538de840e"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.4.0/shield-linux-arm64"
      sha256 "f3cbd6570573c8adcd0edf80de1f51d3deaf2101855e531acdafe5aee813a6fe"
    end
  end

  def install
    bin.install Dir["shield-*"].first => "shield"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/shield version")
  end
end
