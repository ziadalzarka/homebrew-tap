class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.4.0/peel_v0.4.0_darwin_arm64.tar.gz"
      sha256 "3ae8d8730a7d47f715990c674c706b1a07d20c17d93aa90ccff6cc92e5478d81"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.4.0/peel_v0.4.0_darwin_amd64.tar.gz"
      sha256 "09cfc734ea910e5d820a415e506dbb9a7d2be154ba11796d878f2ab593abd406"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.4.0/peel_v0.4.0_linux_arm64.tar.gz"
      sha256 "fd9f2b90162d643faf822ca265ee70d99c05bb8604f5f0b6a7b29c7897b9fd80"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.4.0/peel_v0.4.0_linux_amd64.tar.gz"
      sha256 "02af4cc605ccc2cc13a9b6fadee44d1d80f4fb676d03b6e7b866be2fa604ffbd"
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
