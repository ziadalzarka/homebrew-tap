class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.9.0/peel_v0.9.0_darwin_arm64.tar.gz"
      sha256 "cec76e52a3f14689bf3a3e025c30affaa31e0e4c3244a2c65d153455568d493b"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.9.0/peel_v0.9.0_darwin_amd64.tar.gz"
      sha256 "83cac0d7b7cced6b87e54d456436a0db5bb8d2840e26fbc5802c32b7adba149c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.9.0/peel_v0.9.0_linux_arm64.tar.gz"
      sha256 "a4c9b664ce87fd22a7a00dd77ce74a90785d04a56e33ecdb03ce4a9cb28f71e7"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.9.0/peel_v0.9.0_linux_amd64.tar.gz"
      sha256 "6a2b99651fde2e4927849475a3d62a1b356fa0035e12b0d4a4aa528ac5a4c679"
    end
  end

  def install
    libexec.install "peel", "skills"
    bin.install_symlink libexec/"peel"
  end

  def caveats
    <<~EOS
      Claude Code reads peel's review comments through the bundled skill.
      Link it once:

        mkdir -p ~/.claude/skills
        ln -sfn #{opt_libexec}/skills/peel-review ~/.claude/skills/peel-review

      PR mode needs the "gh" CLI, and walkthroughs need "claude" or "codex".
      Run "peel providers" to see what is available.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/peel version")
  end
end
