# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flytectl < Formula
  desc "FlyteCtl is a command line tool to interact with a Flyte cluster."
  homepage "https://docs.flyte.org/projects/flytectl"
  version "0.1.26"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.26/flytectl_Darwin_x86_64.tar.gz"
      sha256 "2040c85a9ded709e9d1d022cc997ba8cee3323b938b4b1e8f8a73d69e46b1984"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.26/flytectl_Linux_x86_64.tar.gz"
      sha256 "9294001ff7ccf81f31aa4aba67b339168dcbcbea7ee8dea7d764419e013c3d8b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flyteorg/flytectl/releases/download/v0.1.26/flytectl_Linux_arm64.tar.gz"
      sha256 "35bcd535d58603a859ef53519bb19c7b57bb859ae21bb40ed4c9eaebf1e6af64"
    end
  end

  depends_on "go"

  def install
    bin.install "flytectl"
  end
end
