class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "589411df600996edfce94b894633161e7577e7208c479ef165709b4c77c516f6"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "2b5da904356a75838f89b37c544c0ae4156f63bced14d59b4bc3a336fa53ab56"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
