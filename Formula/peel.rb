class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.28.0/peel_v0.28.0_darwin_arm64.tar.gz"
      sha256 "bbc44a29f59ef73ff47eb7954c6747a417d22fb70be2bb226767f486b7481e54"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.28.0/peel_v0.28.0_darwin_amd64.tar.gz"
      sha256 "68add811678d06871cdaf502fbe4804e33322ddf60a843f8b0f689083f40f322"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.28.0/peel_v0.28.0_linux_arm64.tar.gz"
      sha256 "0a54ff12743357cf098d98d37acba5bbd91bf56e1a30182f0abc14b8c36c1175"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.28.0/peel_v0.28.0_linux_amd64.tar.gz"
      sha256 "804239579fc2bffca57103e7ff4c5a771b717d5f521408fe28dd2f882ea50d88"
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
