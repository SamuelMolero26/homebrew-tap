class DroidsMem < Formula
  desc "Persistent cross-session memory + native code graph for coding agents"
  homepage "https://github.com/SamuelMolero26/droids-mem"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.2.1/droids-mem-v1.2.1-darwin-arm64"
      sha256 "b26f363cf55672d6bcd04bc390f6ec30cdf0519c20df2ddac99a12883a996fe3"
    else
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.2.1/droids-mem-v1.2.1-darwin-amd64"
      sha256 "5954705c91f15a7e8b38143b35b7e5d77d83278638c7febdfa2c854b6659c8ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.2.1/droids-mem-v1.2.1-linux-arm64"
      sha256 "a193e508be59817216cacf348f948aaaab9a7cc4c9ffdef81590bcfbe44f676c"
    else
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.2.1/droids-mem-v1.2.1-linux-amd64"
      sha256 "c324e2a91fd09caef58a1d681d62e3d253c222d37fce8eb49beaa52fb2b995cd"
    end
  end

  def install
    bin.install Dir["droids-mem-*"].first => "droids-mem"
  end

  test do
    assert_match "droids-mem", shell_output("#{bin}/droids-mem --version")
  end
end
