class IcloudImageLabeler < Formula
  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://github.com/ziadalzarka/icloud-image-labeler/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "555a5afe825ac242336ea50008088338db062ef8a1319b46a66fd6ec205fad8a"
  license "MIT"

  depends_on :macos
  depends_on "python@3.11"
  depends_on "pipx"
  depends_on "ffmpeg"

  def install
    # Use pipx to install into an isolated venv outside the Cellar,
    # avoiding Homebrew's dylib relocation issues with Rust extensions
    system "pipx", "install", buildpath.to_s,
           "--python", Formula["python@3.11"].opt_bin/"python3.11",
           "--pip-args=--no-cache-dir"

    # Symlink the pipx-installed binary into Homebrew's bin
    bin.install_symlink Dir[HOMEBREW_PREFIX/"bin/icloud-image-labeler"]
  end

  def post_install
    ohai "Installed via pipx. To uninstall cleanly: pipx uninstall icloud-image-labeler"
  end

  test do
    assert_match "icloud-image-labeler 0.1.2", shell_output("#{bin}/icloud-image-labeler --version")
  end
end
