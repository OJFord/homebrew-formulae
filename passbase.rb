class Passbase < Formula
  desc "Keybase File System (KBFS)-baskced CLI-based password manager"
  homepage "https://github.com/OJFord/passbase"
  url "https://github.com/OJFord/passbase/releases/download/v0.1.1/passbase-darwin"
  version "0.1.1"
  sha256 "c07ff22a29ec4e554c450c2a073183d824af39681dec8201e4ddbcad6b52a0d6"

  def install
    system "mv passbase-darwin passbase"
    bin.install "passbase"
  end

  test do
    system "#{bin}/passbase", "ls"
  end
end
