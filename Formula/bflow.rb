class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "59e7eaccc7f5f6ea1b51e1aa3a8c9bc447b3a232ffd3096a9b2ea24dbe745656"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "421382299869aff2be6cfb4a303aa8830aa76f66982898f3314285d149dbc632"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
