class IcloudImageLabeler < Formula
  include Language::Python::Virtualenv

  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://files.pythonhosted.org/packages/source/i/icloud-image-labeler/icloud_image_labeler-0.1.2.tar.gz"
  sha256 "f8fb62e781688423e98cd67d8b8abf791198cd2c59508fc4a42e94796d3109c5"
  license "MIT"

  depends_on :macos
  depends_on "python@3.11"
  depends_on "ffmpeg"
  depends_on "jpeg-turbo"
  depends_on "libheif"
  depends_on "libtiff"
  depends_on "little-cms2"
  depends_on "rust" => :build

  def install
    venv = virtualenv_create(libexec, "python3.11")
    system libexec/"bin/pip", "install", buildpath
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "icloud-image-labeler 0.1.2", shell_output("#{bin}/icloud-image-labeler --version")
  end
end
