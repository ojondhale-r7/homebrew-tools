class HelloWorld < Formula
  desc "A simple hello world shell script CLI"
  homepage "https://github.com/ojondhale-r7/homebrew-hello-world"
  url "https://github.com/ojondhale-r7/homebrew-hello-world/archive/refs/tags/1.0.0.tar.gz"
  sha256 "6fcbacba15d416fb63bef145db52505795d7f86cf43a5cf9bf601f30d06bbcc8"

  def install
    # Look for 'hello-world.sh' anywhere in the extracted directory structure
    script_path = Dir["**/hello-world.sh"].first
    
    if script_path.nil?
      odie "Could not find 'hello-world.sh' script. Contents: #{Dir.entries('.')}"
    end

    # This installs 'hello-world.sh' but renames it to 'hello-world' in the execution bin
    bin.install script_path => "hello-world"
  end

  test do
    system "#{bin}/hello-world"
  end
end
