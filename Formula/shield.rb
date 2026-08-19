class Shield < Formula
  desc "Code security scanner: SAST, secrets, dependencies, containers and IaC"
  homepage "https://zennoxa.com"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.5.0/shield-darwin-amd64"
      sha256 "24303075a6cda3e5bde2148dfae9e53c5f1ade74e534fa53190a56e1a3620335"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.5.0/shield-darwin-arm64"
      sha256 "fcfecdfa5c668f59faf8a12041d32cc84346da99b223f66ad6341fca4d015484"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Zennoxa/shield/releases/download/v0.5.0/shield-linux-amd64"
      sha256 "6c3c55d01733884b6dec564633e94a17703b702c502db3482379a5142da23771"
    end
    on_arm do
      url "https://github.com/Zennoxa/shield/releases/download/v0.5.0/shield-linux-arm64"
      sha256 "67ad61f94594779f76e230b65591b85a2de2e5b20a8cf8dd86a6518e253b947a"
    end
  end

  def install
    bin.install Dir["shield-*"].first => "shield"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/shield version")
  end
end
