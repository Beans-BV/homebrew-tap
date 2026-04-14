class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "3f186608a11abf86972cbd3f4ad7a71ff2ad983954dd5f2f08af5314a82ac5c8"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "e48c4def13ea861d1f7bcecba2e91fba3d7fdd2dc3942a8c0f8e664ce719706e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
