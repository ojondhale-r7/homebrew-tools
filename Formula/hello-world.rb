class HelloWorld < Formula
  desc "A simple hello world shell script CLI"
  homepage "https://github.com/ojondhale-r7/homebrew-hello-world"
  url "https://github.com/ojondhale-r7/homebrew-hello-world/archive/refs/tags/1.0.0.tar.gz"
  sha256 "6fcbacba15d416fb63bef145db52505795d7f86cf43a5cf9bf601f30d06bbcc8"

  def install
    # Explicitly look inside the folder GitHub creates upon extraction
    bin.install "homebrew-hello-world-1.0.0/hello-world"
  end

  test do
    system "#{bin}/hello-world"
  end
end
