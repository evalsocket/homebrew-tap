# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.1.23"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.23/flytectl_Darwin_x86_64.tar.gz"
      sha256 "4d471403998d7d98cc481d4860b0aaa76e2386fef303e4a4e77e3bdd0c5fd658"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.23/flytectl_Linux_x86_64.tar.gz"
      sha256 "4be695de6dae1b6201dfaaeb422a91de8dcab13869686bb5f155082c6438843b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.23/flytectl_Linux_arm64.tar.gz"
      sha256 "d4f9028500dd041e8a93a841b678fe05e16bab541c659a38be62a5d05a365082"
    end
  end

  depends_on "go"

  def install
    bin.install "flytectl"
  end
end
