class Concordui < Formula
  desc "Cross-platform ConcordUI development command-line tools"
  homepage "https://concordui.org"
  head "https://github.com/Zodiac-Innovations/ConcordUI.git", branch: "main"

  depends_on :macos
  depends_on "gradle"
  depends_on "xcodegen"

  def install
    system "xcodebuild",
           "-project", "Tools/ConcordUICLI/ConcordUICLI.xcodeproj",
           "-scheme", "ConcordUICLI",
           "-configuration", "Release",
           "-derivedDataPath", buildpath/"build",
           "CODE_SIGNING_ALLOWED=NO"

    bin.install buildpath/"build/Build/Products/Release/concordui"
  end

  test do
    assert_match "ConcordUI Command Line Tool Version", shell_output("#{bin}/concordui -v")
  end
end
