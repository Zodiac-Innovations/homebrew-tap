class Aethercircle < Formula
  desc "Cross-platform AetherCircle immersive application development tools"
  homepage "https://aethercircle.org"
  head "ssh://git@ssh.github.com:443/Zodiac-Innovations/AetherCircleCLI.git", branch: "main"

  depends_on :macos
  depends_on "xcodegen"

  def install
    libexec.install "aethercircle"

    if File.exist?("aethercircleicon-1024.png")
      libexec.install "aethercircleicon-1024.png"
    else
      resource_bundles = Dir["*.bundle"]
      odie "AetherCircle CLI app icon is missing" if resource_bundles.empty?
      resource_bundles.each { |bundle| libexec.install bundle }
    end

    bin.write_exec_script libexec/"aethercircle"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/aethercircle --version")
  end
end
