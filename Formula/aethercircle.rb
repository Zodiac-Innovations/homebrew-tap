class Aethercircle < Formula
  desc "Cross-platform AetherCircle immersive application development tools"
  homepage "https://aethercircle.org"
  head "ssh://git@ssh.github.com:443/Zodiac-Innovations/AetherCircleCLI.git", branch: "main"

  depends_on :macos
  depends_on "xcodegen"

  def install
    libexec.install "aethercircle"
    libexec.install "aethercircleicon-1024.png"
    bin.write_exec_script libexec/"aethercircle"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/aethercircle --version")
  end
end
