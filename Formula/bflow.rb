class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "2.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "01f83b2f2209a05b34ee41cc8b83ed476f32a9258555e463d73ef78e696a4fd7"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "0259702181e300386c6370a957959064a5d5cbefeafa0ec8f59a04e990021828"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
