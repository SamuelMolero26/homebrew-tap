# Template rendered by .github/workflows/release.yml, which fills url and sha256 per release.
class Rofi < Formula
  desc "Native macOS port of the rofi launcher and dmenu replacement"
  homepage "https://github.com/SamuelMolero26/macOs-rofi"
  url "https://github.com/SamuelMolero26/macOs-rofi/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "75ddca9dad419763df67c752f1404b0552150f801b0f278df32db2f86f957a8b"
  license "MIT"

  depends_on xcode: ["16.0", :build]
  depends_on macos: :ventura

  def install
    inreplace "Sources/rofi/Version.swift", '"development"', "\"#{version}\""
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/rofi"
  end

  test do
    assert_equal "b\n", pipe_output("#{bin}/rofi -dmenu -dump", "b\n")
    assert_equal "Version: #{version}\n", shell_output("#{bin}/rofi -version")
  end
end
