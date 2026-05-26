class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "2.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "60f12fbe2f6f4ac0a196764d6c91ad70bc08178726f3e9dcde944a3cf8d8b49e"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "43ef767326826401ddeb2e035c13fb688c4adcbf8e9b9213efba1d81eb3854a6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
