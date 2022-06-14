# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zero < Formula
  desc "Allow startup developers to ship to production on day 1."
  homepage "https://github.com/commitdev/zero"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/commitdev/zero/releases/download/v0.2.5/zero_0.2.5_Darwin_arm64.tar.gz"
      sha256 "adec84d3a07a58fec1da962d17506faf9d79cf6818ee606ecec2e0fa7da70bcd"

      def install
        bin.install "zero"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/commitdev/zero/releases/download/v0.2.5/zero_0.2.5_Darwin_x86_64.tar.gz"
      sha256 "b90206810b9970efcfea51acb502eba2d9ec072f0f3ae81c46920a19db3021fe"

      def install
        bin.install "zero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/commitdev/zero/releases/download/v0.2.5/zero_0.2.5_Linux_arm64.tar.gz"
      sha256 "3a55e585934f7ff91ff1c4b67005342b58b26bff4a7aac51ffd9d98a083bfc90"

      def install
        bin.install "zero"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/commitdev/zero/releases/download/v0.2.5/zero_0.2.5_Linux_x86_64.tar.gz"
      sha256 "0aa20986fdced20257267e73cbc74a8461e6257681e50e5be5f478c7463e9540"

      def install
        bin.install "zero"
      end
    end
  end

  depends_on "git" => :optional
  depends_on "terraform" => :optional
  depends_on "jq" => :optional
  depends_on "awscli" => :optional
  depends_on "kubectl" => :optional
  depends_on "wget" => :optional

  test do
    system "#{bin}/zero version"
  end
end
