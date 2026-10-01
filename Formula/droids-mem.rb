class DroidsMem < Formula
  desc "Persistent cross-session memory + native code graph for coding agents"
  homepage "https://github.com/SamuelMolero26/droids-mem"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.3.0/droids-mem-v1.3.0-darwin-arm64"
      sha256 "d2efa5619c20694fb57e0c34ee4a9b2eb6cd334c738d51718f49131fc64ff092"
    else
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.3.0/droids-mem-v1.3.0-darwin-amd64"
      sha256 "9bd049f396755557fcd221fe1617e08117009b1641d5fb98fba37709a885ea8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.3.0/droids-mem-v1.3.0-linux-arm64"
      sha256 "52472638a44bccadb2279671caa548ff8d475b69afbb154d40eaac4b7cbec8b7"
    else
      url "https://github.com/SamuelMolero26/droids-mem/releases/download/v1.3.0/droids-mem-v1.3.0-linux-amd64"
      sha256 "ee90ba1620f8f9b01729af0736fb0b8e7919180224b82d0a73618084e0a3954a"
    end
  end

  def install
    bin.install Dir["droids-mem-*"].first => "droids-mem"
  end

  test do
    assert_match "droids-mem", shell_output("#{bin}/droids-mem --version")
  end
end
