class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.12.0/peel_v0.12.0_darwin_arm64.tar.gz"
      sha256 "122aaaa499745702badd43bbacfdd3d8ef7771c0ac799faefa2a707c75306264"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.12.0/peel_v0.12.0_darwin_amd64.tar.gz"
      sha256 "42a2010b540c016a4ed2de0762b82fb2e5c800702b05b4bcfe0bc878fb0fe746"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.12.0/peel_v0.12.0_linux_arm64.tar.gz"
      sha256 "c55a993d58455883486856d6f69f54de8d55c2d591c0a93b967d558eb4d5409c"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.12.0/peel_v0.12.0_linux_amd64.tar.gz"
      sha256 "9b716e673f9d1b143e60030319dab801b3d2dbd5d65d974b488ede61da8f1e1f"
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
