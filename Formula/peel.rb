class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.2/peel_v0.3.2_darwin_arm64.tar.gz"
      sha256 "47c01a8b214fd23a5eadd91ea8704bac83343ba17566008da197447d72547ea0"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.2/peel_v0.3.2_darwin_amd64.tar.gz"
      sha256 "621ede03e8673314fc83d7340169fa6c43a4f489a4b4bcb6ceba213090680022"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.2/peel_v0.3.2_linux_arm64.tar.gz"
      sha256 "32c8c1cf6fd094fb5b6a2c8d875faaae25027e6cb12ca85be6b1723dd9fd368a"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.2/peel_v0.3.2_linux_amd64.tar.gz"
      sha256 "382ff9372b97da6af6b3b2fa70af6521c4985b9e9d928858e447e2fc9c226f8f"
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
