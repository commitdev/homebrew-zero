# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zero < Formula
  desc "Allow startup developers to ship to production on day 1."
  homepage "https://github.com/commitdev/zero"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/commitdev/zero/releases/download/v0.2.4/zero_0.2.4_Darwin_arm64.tar.gz"
      sha256 "414381d615e9a9624edee388b2a71de731b708d025445bcda7a6be8873aea4c1"

      def install
        bin.install "zero"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/commitdev/zero/releases/download/v0.2.4/zero_0.2.4_Darwin_x86_64.tar.gz"
      sha256 "1440187d7d4c361d85def6ae1bc844a036ecd0e8f1f965ac49ddcfac63170cab"

      def install
        bin.install "zero"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/commitdev/zero/releases/download/v0.2.4/zero_0.2.4_Linux_arm64.tar.gz"
      sha256 "7fdd232637c1fc02eb494dfc7edeb045b5bd7682c034a4b255dc4f091f4385bf"

      def install
        bin.install "zero"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/commitdev/zero/releases/download/v0.2.4/zero_0.2.4_Linux_x86_64.tar.gz"
      sha256 "d47c74ba7d6f346a30a62d41264d59822052d70172c2757f26739147b0666a47"

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
