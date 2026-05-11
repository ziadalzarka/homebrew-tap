class IcloudImageLabeler < Formula
  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://files.pythonhosted.org/packages/4b/6f/4f9b618646c9bfb83bfedd930b9fae294318647efaf428d688d2b12dee46/icloud_image_labeler-0.1.2.tar.gz"
  sha256 "f8fb62e781688423e98cd67d8b8abf791198cd2c59508fc4a42e94796d3109c5"
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
