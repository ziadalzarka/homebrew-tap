class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.1/peel_v0.8.1_darwin_arm64.tar.gz"
      sha256 "9aba066cdc52e99cb8a7cee1455c4ca2e1e1376e19e8b677b31dc8af14bdcbad"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.1/peel_v0.8.1_darwin_amd64.tar.gz"
      sha256 "beacd47437624cb49ad96f9a25d806487c1414c923e7ec7ce773c8dcff472f62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.1/peel_v0.8.1_linux_arm64.tar.gz"
      sha256 "d6358ba3231c746a799f143a723e522f2ea1c53f05a5229e9666a01446106af0"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.1/peel_v0.8.1_linux_amd64.tar.gz"
      sha256 "749974ac20604ed58838d116435e3581a2185196a448e65852a6cbd26889f243"
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
