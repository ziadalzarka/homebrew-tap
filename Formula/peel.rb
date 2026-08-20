class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.0/peel_v0.8.0_darwin_arm64.tar.gz"
      sha256 "b8f9d97635daca9e8914a40e960e348b14725650a8fa8465cca65da9c6f0112c"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.0/peel_v0.8.0_darwin_amd64.tar.gz"
      sha256 "6685f0e61d6b4157314dba7f6620b2bb215a04f9997c41c9e3c08d091eda4f43"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.0/peel_v0.8.0_linux_arm64.tar.gz"
      sha256 "a5562d06014ebafd52eb3ef5d49dafc656f01c2b76bb33aff74030ed3ee94d5c"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.0/peel_v0.8.0_linux_amd64.tar.gz"
      sha256 "16a78a08791c4ff5459c2d5cbfd916d4b2c73fc78d7d87601582a27e9c5a877c"
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
