class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.11.0/peel_v0.11.0_darwin_arm64.tar.gz"
      sha256 "b1150bee051fe4319294b577712f8971c082299e89eaa83dd2ca91780b05b97f"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.11.0/peel_v0.11.0_darwin_amd64.tar.gz"
      sha256 "798aed131f9e86fe04475f5ffe4977a0c3c729bd7c424b1bd753ba88dbdbd65b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.11.0/peel_v0.11.0_linux_arm64.tar.gz"
      sha256 "f6dbdfbd11258ee282ca9c6b858a1a9f729d268fdffa7eae7384243a424176ce"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.11.0/peel_v0.11.0_linux_amd64.tar.gz"
      sha256 "14a4da5a3b80192d228375096244d2dd20456687c521170d60453c4c64cc1f0c"
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
