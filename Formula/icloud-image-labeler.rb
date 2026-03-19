class IcloudImageLabeler < Formula
  desc "macOS CLI tool that auto-labels iCloud Photos using any OpenAI-compatible LLM"
  homepage "https://github.com/ziadalzarka/icloud-image-labeler"
  url "https://github.com/ziadalzarka/icloud-image-labeler/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "555a5afe825ac242336ea50008088338db062ef8a1319b46a66fd6ec205fad8a"
  license "MIT"

  depends_on :macos
  depends_on "python@3.11"
  depends_on "ffmpeg"

  def install
    # Install into a venv outside the Cellar to avoid Homebrew's dylib
    # relocation failing on Rust-compiled extensions (jiter, pydantic-core)
    venv_dir = var/"lib/icloud-image-labeler"
    system Formula["python@3.11"].opt_bin/"python3.11", "-m", "venv",
           "--clear", venv_dir.to_s
    system venv_dir/"bin/pip", "install", "--no-cache-dir", buildpath.to_s

    (bin/"icloud-image-labeler").write_env_script(
      venv_dir/"bin/icloud-image-labeler",
      PATH: "#{venv_dir}/bin:$PATH",
    )
  end

  def caveats
    <<~EOS
      The Python virtual environment is installed in:
        #{var}/lib/icloud-image-labeler
      This directory is not removed by `brew uninstall`. To fully remove, run:
        rm -rf #{var}/lib/icloud-image-labeler
    EOS
  end

  test do
    assert_match "icloud-image-labeler 0.1.2", shell_output("#{bin}/icloud-image-labeler --version")
  end
end
