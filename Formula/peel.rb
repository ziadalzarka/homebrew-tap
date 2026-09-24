class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.21.0/peel_v0.21.0_darwin_arm64.tar.gz"
      sha256 "f1615aeed4e81a4421f9ee77c3d8d8f7c889d0f41dab9ceb838e2c37448647ca"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.21.0/peel_v0.21.0_darwin_amd64.tar.gz"
      sha256 "fd772a477b8292d429b4cf270d1162cbdfc38a212663709baa35f6e09017a9f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.21.0/peel_v0.21.0_linux_arm64.tar.gz"
      sha256 "0161fedef8955242c3310ad9869c6284e05d21769da87c83f93d999f0c1c4e9c"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.21.0/peel_v0.21.0_linux_amd64.tar.gz"
      sha256 "44b0eb85b704371bd34faf547487421588bfaabcf4a97d2530f7ce578cb675b0"
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
