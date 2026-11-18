class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.27.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.2/peel_v0.27.2_darwin_arm64.tar.gz"
      sha256 "5163866b2a093fd671c589172b4b5aaf397275f0f8e32646a451aaec98e39235"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.2/peel_v0.27.2_darwin_amd64.tar.gz"
      sha256 "f59238051f42f40a87d55cb64bbc657082e1f9c4a623ea538c67887007d399c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.2/peel_v0.27.2_linux_arm64.tar.gz"
      sha256 "dc86a67ebe84c0351205492accc18798361b56b16c5be5e0509b67b9e3a83645"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.2/peel_v0.27.2_linux_amd64.tar.gz"
      sha256 "aaeae21148d9314fe233f3693427f036bf0c1f2a91e5ed911371d49aa6a508ff"
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
