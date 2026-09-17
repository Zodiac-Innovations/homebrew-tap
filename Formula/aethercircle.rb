class Aethercircle < Formula
  desc "Cross-platform AetherCircle immersive application development tools"
  homepage "https://aethercircle.org"
  head "ssh://git@github.com/magesteve/AetherCircleCLI.git", branch: "main"

  depends_on :macos
  depends_on "xcodegen"

  def install
    libexec.install "aethercircle"

    resource_bundles = Dir["*.bundle"]
    odie "AetherCircle CLI resource bundle is missing" if resource_bundles.empty?
    resource_bundles.each { |bundle| libexec.install bundle }

    bin.write_exec_script libexec/"aethercircle"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/aethercircle --version")
  end
end
