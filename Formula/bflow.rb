class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "9d160e6b340946acf6742eec20260019bde3458b5521423bf8e3f074a20a97dc"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "ca89600ca8c50deee67b11db669b64c6384545ffe3eb4cd52c3547e9f4a5a905"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
