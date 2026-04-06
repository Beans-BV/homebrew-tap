class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "dc1e4704e89c2260e54001b9aeb01a05e60932900b53d9e4f6981bde9a0db9ce"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "5d1dfa5af25e26fc49caa4226a70a939b960f36dc46c1394181bc5fbe55b5762"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
