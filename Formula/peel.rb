class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.24.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.24.1/peel_v0.24.1_darwin_arm64.tar.gz"
      sha256 "c75b8a77a6e4bb8412548c96f08bf87be321a84aa442c0da7d075da7c68ed035"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.24.1/peel_v0.24.1_darwin_amd64.tar.gz"
      sha256 "33fd633eb2f95e25bfc31fae984e2ab00d211e4ce4a3da5258f46b0d984fa968"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.24.1/peel_v0.24.1_linux_arm64.tar.gz"
      sha256 "b60114228bd74fa04842d1528b76483b646ef69c0e967ba448b1f8991c2e9f52"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.24.1/peel_v0.24.1_linux_amd64.tar.gz"
      sha256 "4e92a65f843cb51fad6d18505f5079efc21b931219fded5163f57e6bf9ad0e6e"
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
