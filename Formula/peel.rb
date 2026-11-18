class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.27.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.1/peel_v0.27.1_darwin_arm64.tar.gz"
      sha256 "bba6db48c53f1c556bfc26cf076209a9ba7e3dd3229dff4257e1bea4a812f588"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.1/peel_v0.27.1_darwin_amd64.tar.gz"
      sha256 "49b0cb80dbbe7fc309c118f144078459df1a27d29c2813358848ad1329791a13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.1/peel_v0.27.1_linux_arm64.tar.gz"
      sha256 "c9caf85d49e7ce77cdabfe8329d9c8a5956f6b279f48338da6299c89dae830b1"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.27.1/peel_v0.27.1_linux_amd64.tar.gz"
      sha256 "7509838c61d0d971f3ed5693d59d4e1b9fad628d6de56615c38b8564513651d5"
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
