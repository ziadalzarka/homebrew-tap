class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.7.1/peel_v0.7.1_darwin_arm64.tar.gz"
      sha256 "b3d627a7ea3570470885a84d7f1768cbff987ea6d0a63bb38801033730d75e4e"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.7.1/peel_v0.7.1_darwin_amd64.tar.gz"
      sha256 "b60e5cdad851167dcf3b285f5616bb8786f39b511f7dc03169107437a78a3ad2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.7.1/peel_v0.7.1_linux_arm64.tar.gz"
      sha256 "7c315cbee660660a85e1294a0b9f765d18286b8ae000a1ca7a5a867000e5d77c"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.7.1/peel_v0.7.1_linux_amd64.tar.gz"
      sha256 "0dcb3ab4600b9734c48b9569c27612bab6ea69a63cff351b886a2250d9d6536d"
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
