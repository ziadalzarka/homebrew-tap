class IcloudImageLabeler < Formula
  include Language::Python::Virtualenv

  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://github.com/ziadalzarka/icloud-image-labeler/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5bce9d8662d5ba1497533f242eddd6a9113ab2364487aa428818db48f57240c3"
  license "MIT"

  depends_on :macos
  depends_on "python@3.11"
  depends_on "ffmpeg"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Auto-label iCloud Photos", shell_output("#{bin}/icloud-image-labeler --help")
  end
end
