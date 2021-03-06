# This file was generated by GoReleaser. DO NOT EDIT.
class Zero < Formula
  desc "Allow startup developers to ship to production on day 1."
  homepage "https://github.com/commitdev/zero"
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/commitdev/zero/releases/download/v0.1.1/zero_0.1.1_Darwin_x86_64.tar.gz"
    sha256 "89fbc41d73f2c6a7ef30cefeab28038db0cce6c9882bc2b93279f894da41c0d3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/commitdev/zero/releases/download/v0.1.1/zero_0.1.1_Linux_x86_64.tar.gz"
    sha256 "9b811a11308bba15da9663c6ad155096987bd12e3653b1dc432ece91efd39726"
  end

  depends_on "git" => :optional
  depends_on "terraform" => :optional
  depends_on "jq" => :optional
  depends_on "awscli" => :optional
  depends_on "kubectl" => :optional
  depends_on "wget" => :optional

  def install
    bin.install "zero"
  end

  test do
    system "#{bin}/zero version"
  end
end
