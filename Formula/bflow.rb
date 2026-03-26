class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "e56f49f137bfa6853501c91e75840ffe62fcee8110360f7e0e79e0e2c73a3f96"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "aa7d8711d0edd434139db5846d2ee0ebf731001ec70a09f5ba77ed98253dc115"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
