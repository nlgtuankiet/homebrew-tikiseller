class Tikiseller < Formula
  desc "A command line tool for tiki seller"
  homepage "https://github.com/nlgtuankiet/tiki-seller-cli"
  url "https://github.com/nlgtuankiet/tiki-seller-cli/releases/download/1.2/tikiseller.zip"
  sha256 "0029f17d92fc5c4ac7ec87ad6fe2d23e6e57fff8643e3fb74e6272b771bcc0dc"
  version "1.2.0"

  depends_on "ffmpeg"
  depends_on "java"

  bottle :unneeded

  def install
    inreplace "brew/tikiseller", "##PREFIX##", "#{prefix}"
    prefix.install "tikiseller.jar"
    bin.install "brew/tikiseller"
  end
end