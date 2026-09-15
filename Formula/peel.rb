class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.13.0/peel_v0.13.0_darwin_arm64.tar.gz"
      sha256 "5957cc09d5d335d50bf06acd3ba9ca043e32d9038b48ea168a9e45ed4fc43170"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.13.0/peel_v0.13.0_darwin_amd64.tar.gz"
      sha256 "ed10a594261b60278942d295fd67157621bc0e7ee5d2d8027012d1a64f67d25a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.13.0/peel_v0.13.0_linux_arm64.tar.gz"
      sha256 "d634b6f2aba929838e08588c229161b30fde8c5382ffb02215a9a70041f2ad4d"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.13.0/peel_v0.13.0_linux_amd64.tar.gz"
      sha256 "7561ecf042bbcbdea925421ec36738567604893c53e133457325d5dc95f98555"
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
