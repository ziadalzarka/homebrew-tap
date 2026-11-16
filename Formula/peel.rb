class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.27.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.0/peel_v0.27.0_darwin_arm64.tar.gz"
      sha256 "906b7228c6baa0a6564183c8d9ff29bdc6c3ff8e73dc945bf77d1be5476fdd06"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.0/peel_v0.27.0_darwin_amd64.tar.gz"
      sha256 "ea8af8d5df0bf400217512928abf7d21c0ccc74eb7e3327dd562d5211be61195"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.0/peel_v0.27.0_linux_arm64.tar.gz"
      sha256 "df80bbe2fb9ad10cc5d70d1ef264af1286d8a017c8138a5f31dd9d32212b4408"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.0/peel_v0.27.0_linux_amd64.tar.gz"
      sha256 "dd40b35b80e1b89ee6fab487ee52c2d1d6ab85c8ca6062e42b198f837f2df203"
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
