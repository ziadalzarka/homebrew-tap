class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.26.0/peel_v0.26.0_darwin_arm64.tar.gz"
      sha256 "d85116780b3dbcdcfaca628729ec84c0181fe711ee54e899b74c12a32044259c"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.26.0/peel_v0.26.0_darwin_amd64.tar.gz"
      sha256 "a7fa327ef829cd382d674d0b597e953ead9d565143b3d8bd67cbda3a8b7e1dba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.26.0/peel_v0.26.0_linux_arm64.tar.gz"
      sha256 "26ff6ea4e6590996625b6c8537655c561080db8568587e8a461ffa8e94c91868"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.26.0/peel_v0.26.0_linux_amd64.tar.gz"
      sha256 "337e9a6aef3398b7ed94f746e8b4780a099eaec4629746a177542197525ed6f4"
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
