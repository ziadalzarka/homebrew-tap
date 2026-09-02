class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.8.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.3/peel_v0.8.3_darwin_arm64.tar.gz"
      sha256 "7aa4a362f1f0b95a11c9281d1f5896eaf313cb82443de26260dd7ce944acfc49"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.3/peel_v0.8.3_darwin_amd64.tar.gz"
      sha256 "71eb621b662c72efcfd7ab0a8f452524b6486502f8693b46e09c83edb37d0b2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.3/peel_v0.8.3_linux_arm64.tar.gz"
      sha256 "b99b1f01d466abdb06c7d9602eedd77008c235dabf2c8fc7cff26dce48b6ca31"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.3/peel_v0.8.3_linux_amd64.tar.gz"
      sha256 "389f5a248808c3e4137a9f2eadb48dd96c97567a5b05663c7584a777361c7398"
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
