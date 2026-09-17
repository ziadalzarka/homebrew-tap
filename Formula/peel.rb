class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.17.0/peel_v0.17.0_darwin_arm64.tar.gz"
      sha256 "9814fd5726bf30165698f7fcb8ec3471f01bd8b023e57c9a3287e74d67335129"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.17.0/peel_v0.17.0_darwin_amd64.tar.gz"
      sha256 "40b5920ee85b5f952f23d454ef486c86d65f000930e8edb0f688d210190a3d5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.17.0/peel_v0.17.0_linux_arm64.tar.gz"
      sha256 "4a7b40831ba2a0e49e055b5fa3e3f02a3063c53697c849964e6562bfbc778e57"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.17.0/peel_v0.17.0_linux_amd64.tar.gz"
      sha256 "fcbb8bf6e0288980be7e0093fa82939a387a65d637089fbe678976d70037c135"
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
