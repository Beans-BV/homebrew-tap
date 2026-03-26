class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "512d89e456ee20634bb357b41a5f42e1a167296b59589fe9d34915c9ed66def5"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "e959eaf4843bee61550cef02047cd50180aa5bc5b8f898e62efd77d08f312581"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
