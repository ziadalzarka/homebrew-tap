class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.10.0/peel_v0.10.0_darwin_arm64.tar.gz"
      sha256 "fe7d94fecc1c8a6da9a731b8d92f567b75066e89bfa76f28dc38c334332a2aa4"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.10.0/peel_v0.10.0_darwin_amd64.tar.gz"
      sha256 "854f755d334bf5eee81620dcbbd2659afa4ec1e7ca757cfe2d6d0f6de83c0674"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.10.0/peel_v0.10.0_linux_arm64.tar.gz"
      sha256 "7d8cfa8a0d1aea32a923d1531599e6d52d292bcaa1f71f53a794c1b7f5e9dcd0"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.10.0/peel_v0.10.0_linux_amd64.tar.gz"
      sha256 "5dc734a8d88c7c2891e1682d5fc0cd4d84a891f8b840b5194e2ace6299106885"
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
