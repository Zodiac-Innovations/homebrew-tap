class Ggbio < Formula
  desc "Apple project creation tools for ggbIO games"
  homepage "https://github.com/Zodiac-Innovations/ggbIO"
  head "https://github.com/Zodiac-Innovations/ggbIOCLI.git", branch: "main"

  depends_on :macos
  depends_on "xcodegen"

  def install
    libexec.install "ggbio"
    bin.write_exec_script libexec/"ggbio"
  end

  test do
    assert_match(/\A\d+\.\d+\.\d+\z/, shell_output("#{bin}/ggbio --version").strip)
  end
end
