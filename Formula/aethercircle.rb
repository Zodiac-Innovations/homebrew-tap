class Aethercircle < Formula
  desc "Cross-platform AetherCircle immersive application development tools"
  homepage "https://aethercircle.org"
  head "ssh://git@ssh.github.com:443/Zodiac-Innovations/AetherCircleCLI.git", branch: "main"

  depends_on :macos
  depends_on "xcodegen"

  def install
    libexec.install "aethercircle"

    icon_names = %w[
      aethercircleicon-1024.png
      aethercircleicon-avp-back-1024.png
      aethercircleicon-avp-middle-1024.png
      aethercircleicon-avp-front-1024.png
    ]
    icon_names.each do |icon_name|
      odie "AetherCircle CLI app icon #{icon_name} is missing" unless File.exist?(icon_name)
      libexec.install icon_name
    end

    bin.write_exec_script libexec/"aethercircle"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/aethercircle --version")
  end
end
