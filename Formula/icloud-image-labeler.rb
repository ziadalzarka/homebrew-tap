class IcloudImageLabeler < Formula
  include Language::Python::Virtualenv

  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://github.com/ziadalzarka/icloud-image-labeler/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "47a8d5d0771286b1461f7b608666c00504733f4361e80f87d6e9a9acd5e45624"
  license "MIT"

  depends_on :macos
  depends_on "python@3.11"
  depends_on "ffmpeg"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "Auto-label iCloud Photos", shell_output("#{bin}/icloud-image-labeler --help")
  end
end
