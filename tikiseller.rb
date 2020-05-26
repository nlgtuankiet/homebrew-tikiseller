class Tikiseller < Formula
  desc "A command line tool for tiki seller"
  homepage "https://github.com/nlgtuankiet/tiki-seller-cli"
  url "https://github.com/nlgtuankiet/tiki-seller-cli/releases/download/1.1/tikiseller.zip"
  sha256 "0431c0eade60c0d9e351b954ec99042e86f41f2a82daf5fbc84d13680dc24389"
  version "1.0.0"

  depends_on "ffmpeg"

  bottle :unneeded

  def install
    inreplace "brew/tikiseller", "##PREFIX##", "#{prefix}"
    prefix.install "tikiseller.jar"
    bin.install "brew/tikiseller"
  end
end