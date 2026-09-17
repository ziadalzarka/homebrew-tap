class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.17.1/peel_v0.17.1_darwin_arm64.tar.gz"
      sha256 "749cbaa22ddcbe48bd4923c8cbafbd1135632d498c16acd34c8042585c00775c"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.17.1/peel_v0.17.1_darwin_amd64.tar.gz"
      sha256 "bd3c597c67610e7a5b4a794d510b36244383a0d77c6de3740f9357ea2c08b02a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.17.1/peel_v0.17.1_linux_arm64.tar.gz"
      sha256 "01e5e13202e0e620f41408db474b14b610053476952cd2d3f0b3c923f46a7777"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.17.1/peel_v0.17.1_linux_amd64.tar.gz"
      sha256 "fdb0aa1d99a3cb28df4d6fc6a17495b4810cbdb8081fa966e1314d4e26fd6d6a"
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
