class HelloWorld < Formula
  desc "A simple hello world shell script CLI"
  homepage "https://github.com/ojondhale-r7/homebrew-hello-world"
  url "https://github.com/ojondhale-r7/homebrew-hello-world/archive/refs/tags/1.0.0.tar.gz"
  sha256 "6fcbacba15d416fb63bef145db52505795d7f86cf43a5cf9bf601f30d06bbcc8"

  def install
    # Look for the 'hello-world' script anywhere in the extracted directory
    script_path = Dir["**/hello-world"].first
    
    if script_path.nil?
      # If it still can't find it, fail gracefully and print the contents to help debug
      odie "Could not find 'hello-world' script. Contents of build directory: #{Dir.entries('.')}"
    end

    # Install the script into Homebrew's binary directory and rename it to 'hello-world'
    bin.install script_path => "hello-world"
  end

  test do
    system "#{bin}/hello-world"
  end
end
