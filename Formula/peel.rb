class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.30.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.30.0/peel_v0.30.0_darwin_arm64.tar.gz"
      sha256 "986db7988e0a89411da896c62b2ffdf9bac8d01e3cdee3a1993fe0000cf166ed"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.30.0/peel_v0.30.0_darwin_amd64.tar.gz"
      sha256 "ae95bf063814b5587f9508a03f23e444263f1f814b9ccf4855988386e72637dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.30.0/peel_v0.30.0_linux_arm64.tar.gz"
      sha256 "d91d97bcc4ce3c21d05ddffd24d7396fc0203a9a4a571eafc6e6526dd2850dea"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.30.0/peel_v0.30.0_linux_amd64.tar.gz"
      sha256 "c85990a71b752a32141015c57908da035421387a0bad820085c5bdd8cd2c56b7"
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
