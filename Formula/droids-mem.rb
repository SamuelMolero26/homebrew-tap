class DroidsMem < Formula
  desc "Persistent cross-session memory + native code graph for coding agents"
  homepage "https://github.com/SamuelMolero26/droids-mem"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.1.1/droids-mem-v1.1.1-darwin-arm64"
      sha256 "60a76eff746ef899386e57dc23e789dd4626b4fc9491671b13ab0523b5debd2f"
    else
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.1.1/droids-mem-v1.1.1-darwin-amd64"
      sha256 "3b9872b769351187ede92f0ad3658303fc532d9aef4f34c1eeb22380b7cb8fd9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.1.1/droids-mem-v1.1.1-linux-arm64"
      sha256 "961f4b33ff97c1e26813258cb02bbb10ef9e8fb16249b154e346631d96c41d7f"
    else
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.1.1/droids-mem-v1.1.1-linux-amd64"
      sha256 "cd203489dd554661e37ac29db170cc42a4f35f5dd6ea56d408d7c37f258ab512"
    end
  end

  def install
    bin.install Dir["droids-mem-*"].first => "droids-mem"
  end

  test do
    assert_match "droids-mem", shell_output("#{bin}/droids-mem --version")
  end
end
