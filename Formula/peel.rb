class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.1.0/peel_v0.1.0_darwin_arm64.tar.gz"
      sha256 "ffdd6a77a4686eb69971a0cc182b4ed2fdcde32fe204e828a2dacb6bfa19a326"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.1.0/peel_v0.1.0_darwin_amd64.tar.gz"
      sha256 "7b11380506714e81caeed289c183a24a123a0832e3a0ffc0b218191bc0c7d19e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.1.0/peel_v0.1.0_linux_arm64.tar.gz"
      sha256 "3f1843278e4015d05ee3058d27462515b39b67bd60b5d798fb2953b6840f31d8"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.1.0/peel_v0.1.0_linux_amd64.tar.gz"
      sha256 "21f28ce8befdd35148a646e1ce64f487665dbda2b1e4fdf8f2db27371bd04734"
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
