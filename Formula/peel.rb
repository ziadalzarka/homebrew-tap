class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.2/peel_v0.8.2_darwin_arm64.tar.gz"
      sha256 "2c448d1cddba62bf1d844126eccdbf5ba8fb4b8c2fdd209e7cc0b2957e717908"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.2/peel_v0.8.2_darwin_amd64.tar.gz"
      sha256 "ab99f12e6379597b033d860b8a3e9abab3ad918e18ca11d7619fa302f771f9dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.2/peel_v0.8.2_linux_arm64.tar.gz"
      sha256 "bd9a124692c955638e18d18c7f605d0a74f7e1133bcdeb6888ad774a09a0aa44"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.2/peel_v0.8.2_linux_amd64.tar.gz"
      sha256 "a2e217b908f97e7e8b4de58277210bc71fed167d6cac71aab8e0f436a23ac737"
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
