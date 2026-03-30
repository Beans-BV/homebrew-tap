class Bflow < Formula
  desc "Beans GitFlow - customized gitflow workflow CLI"
  homepage "https://github.com/Beans-BV/beans-gitflow"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-aarch64"
      sha256 "45791320192455156ff45d49b65af6d6c3f7ed659840c37d46c131b63b97f530"
    else
      url "https://github.com/Beans-BV/beans-gitflow/releases/download/v#{version}/bflow-macos-x86_64"
      sha256 "a68d98dde817c3feaa4069aed33efca40b77e4b9d2fd257914a2291138a4fe0e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "bflow"
  end
end
