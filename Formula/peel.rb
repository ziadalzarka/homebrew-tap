class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.0/peel_v0.3.0_darwin_arm64.tar.gz"
      sha256 "49b9b2c9941e7ef018095d4a7c863944b06ffa8fb0a79f4bb1bba82d620ab43f"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.0/peel_v0.3.0_darwin_amd64.tar.gz"
      sha256 "a28e736a878cab9ae2e8d1931c398334a81d20b8bca3f396114181b3430ca199"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.0/peel_v0.3.0_linux_arm64.tar.gz"
      sha256 "051e31957e61f1bdc457a3ac919a4ffc95bd0d31e4d268671dfcff891a8f0291"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.0/peel_v0.3.0_linux_amd64.tar.gz"
      sha256 "d4592e645ec648874132993ce97cacf9f49c5495b51ad221cdeaff42ba6e8a63"
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
