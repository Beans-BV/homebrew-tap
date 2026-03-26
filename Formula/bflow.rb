class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "69dbfd8ecc954f9664f608c0b5caac7831e3ea952c13dfc99faa001e8a9c9cda"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "c617fe985574166c35abd7f33255cf0f4000aa00ae2453b9b52d8ba9273f177e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
