class IcloudImageLabeler < Formula
  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://github.com/ziadalzarka/icloud-image-labeler/archive/refs/tags/v0.10.2.tar.gz"
  sha256 "88775100c6ded92fdd5b12d4ff4f3273659ac7a38627c7183d6562602176d717"
  license "MIT"

  depends_on :macos
  depends_on "python@3.11"
  depends_on "ffmpeg"

  def install
    venv = libexec
    system "python3.11", "-m", "venv", venv
    system venv/"bin/pip", "install", "--upgrade", "pip"
    system venv/"bin/pip", "install",
           "--prefer-binary",
           "--no-cache-dir",
           "icloud-image-labeler==#{version}"
    bin.install_symlink venv/"bin/icloud-image-labeler"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/icloud-image-labeler --version")
  end
end
