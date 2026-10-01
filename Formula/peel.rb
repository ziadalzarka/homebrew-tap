class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.22.0/peel_v0.22.0_darwin_arm64.tar.gz"
      sha256 "c8769f52c3d6c6276c50e0cb6541f269198fad93c82a8a8658c30669d29d0367"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.22.0/peel_v0.22.0_darwin_amd64.tar.gz"
      sha256 "c1e8f478e5880d6c4f27498079323506fe7629ecf8cb6df0f7c3f6dc61c013dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.22.0/peel_v0.22.0_linux_arm64.tar.gz"
      sha256 "c33b29546d82de8feb75f83c3d0e60634b02f05c8d691708bfff57cfff1c97af"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.22.0/peel_v0.22.0_linux_amd64.tar.gz"
      sha256 "dc1a079559207ab4f9fb7e96bfcf259818464d02cbf0ebf58298b5916f04620c"
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
