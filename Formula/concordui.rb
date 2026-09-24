class Concordui < Formula
  desc "Cross-platform ConcordUI development command-line tools"
  homepage "https://concordui.org"
  head "ssh://git@ssh.github.com:443/Zodiac-Innovations/ConcordUICLI.git", branch: "main"

  depends_on :macos

  def install
    libexec.install "concordui"
    libexec.install "concordui-1024.png"
    bin.write_exec_script libexec/"concordui"
  end

  test do
    assert_match "Soon to be released", shell_output("#{bin}/concordui --version")
  end
end
