class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.7.0/peel_v0.7.0_darwin_arm64.tar.gz"
      sha256 "3809c885a6340e0796f8f543eeb87bf4550a3f260a3142413d7ea9d45852b8da"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.7.0/peel_v0.7.0_darwin_amd64.tar.gz"
      sha256 "dce9113082e84d5834640f350c3eb5d7d8f091d2307c52108cb993d3523ce033"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.7.0/peel_v0.7.0_linux_arm64.tar.gz"
      sha256 "e3a363e37a1358f67a86e3a46f19c9373d9282945f63dab80ae48f1bbd1547c7"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.7.0/peel_v0.7.0_linux_amd64.tar.gz"
      sha256 "22455831e2c7bdc10179da95fb3796832b5a46d0ac1e98ba423071a30e851210"
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
