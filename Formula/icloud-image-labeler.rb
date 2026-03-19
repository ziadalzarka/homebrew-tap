class IcloudImageLabeler < Formula
  include Language::Python::Virtualenv

  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://github.com/ziadalzarka/icloud-image-labeler/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "555a5afe825ac242336ea50008088338db062ef8a1319b46a66fd6ec205fad8a"
  license "MIT"

  depends_on :macos
  depends_on "python@3.11"
  depends_on "ffmpeg"

  def install
    python3 = "python3.11"
    venv = virtualenv_create(libexec, python3)

    # Install pip into the venv, then install the package with deps
    system libexec/"bin/python", "-m", "ensurepip"
    system libexec/"bin/python", "-m", "pip", "install", buildpath

    # Link the CLI script into the bin
    (bin/"icloud-image-labeler").write_env_script(
      libexec/"bin/icloud-image-labeler",
      PATH: "#{libexec}/bin:$PATH",
    )
  end

  test do
    assert_match "icloud-image-labeler 0.1.2", shell_output("#{bin}/icloud-image-labeler --version")
  end
end
