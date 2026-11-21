class IcloudImageLabeler < Formula
  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://github.com/ziadalzarka/icloud-image-labeler/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "569de6d9b441224d7c22338a6528a902381c3dbee11283bdaca7d9ed388ca410"
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
