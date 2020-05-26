class Tikiseller < Formula
  desc "A command line tool for tiki seller"
  homepage "https://github.com/nlgtuankiet/tiki-seller-cli"
  url "https://github.com/nlgtuankiet/tiki-seller-cli/releases/download/1.3/tikiseller.zip"
  sha256 "8a9a5dabcc848e5a58ab9a65542cb7bbd1ea4de76c060ece9913898152f89941"
  version "1.3.0"

  depends_on "ffmpeg"
  depends_on "java"

  bottle :unneeded

  def install
    inreplace "brew/tikiseller", "##PREFIX##", "#{prefix}"
    prefix.install "tikiseller.jar"
    bin.install "brew/tikiseller"
  end
end