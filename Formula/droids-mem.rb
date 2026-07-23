class DroidsMem < Formula
  desc "Persistent cross-session memory + native code graph for coding agents"
  homepage "https://github.com/SamuelMolero26/droids-mem"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.2.0/droids-mem-v1.2.0-darwin-arm64"
      sha256 "85bd9f4648ac2a485b1cb51b3f9b4adfce119f525bfe1fd6b32d30b839fdc5eb"
    else
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.2.0/droids-mem-v1.2.0-darwin-amd64"
      sha256 "278c57d0e3a5aae069692dc34bf9cd1c04ec07983a1da4efdd40974a0ed97948"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.2.0/droids-mem-v1.2.0-linux-arm64"
      sha256 "e4a08300fbfb7a03ccbfe9298f5adb01e1830a00f62cb1eecefe686d6f6f9af7"
    else
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.2.0/droids-mem-v1.2.0-linux-amd64"
      sha256 "fa59e78fb649047ac6c1f09dcda464cee455e1a908b134c4227e9949a6d3a4c5"
    end
  end

  def install
    bin.install Dir["droids-mem-*"].first => "droids-mem"
  end

  test do
    assert_match "droids-mem", shell_output("#{bin}/droids-mem --version")
  end
end
