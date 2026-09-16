class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.14.0/peel_v0.14.0_darwin_arm64.tar.gz"
      sha256 "dcbcfacd6b7216accfd0fe78d8a4d8c3ab94ee44abcd66adb077eb3e3228cafd"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.14.0/peel_v0.14.0_darwin_amd64.tar.gz"
      sha256 "b331f447076be1cd0fe6333943792c4b05e89ea44ecedd38c0490cb6a3a4f86b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.14.0/peel_v0.14.0_linux_arm64.tar.gz"
      sha256 "2aa4507b56e030a8fa867917cfcdabb7477f2ca0d88d83165f1644d5f8c08b12"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.14.0/peel_v0.14.0_linux_amd64.tar.gz"
      sha256 "21b4919b7dfb16d538e6c63d79602f6c0fe6134fa7b849fb5d8c7ce0463f03e6"
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
