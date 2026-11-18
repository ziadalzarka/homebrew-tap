class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.29.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.29.0/peel_v0.29.0_darwin_arm64.tar.gz"
      sha256 "2730b2dae146de3cf9ea5c82386e0d5fe8fff303a9ff466bdc3d43d4aac1c37f"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.29.0/peel_v0.29.0_darwin_amd64.tar.gz"
      sha256 "023b889624f9d5ec0c8e8c5e22095dfa82dd0ca965c87ffc18f18806021ac6f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.29.0/peel_v0.29.0_linux_arm64.tar.gz"
      sha256 "c0cd6a210b8f883babc16b29800b30222f44be2396377027e2ec97e2f5567d3d"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.29.0/peel_v0.29.0_linux_amd64.tar.gz"
      sha256 "5fbc544feb886cc0b53d1221bb30bd4f4ccd97526c2f7dd405b5e062d13f1d9a"
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
