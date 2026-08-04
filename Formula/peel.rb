class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.1/peel_v0.3.1_darwin_arm64.tar.gz"
      sha256 "f70ea40338ba6f355e7d76c32e0285b6102f7da8519ecb4842f4f4cd025bddf4"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.1/peel_v0.3.1_darwin_amd64.tar.gz"
      sha256 "0fc2c67c95dbbeff663fbc406a8d435a52333e58483e6bf61ffaceecae542a06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.1/peel_v0.3.1_linux_arm64.tar.gz"
      sha256 "2cd5778b157e3693558addf12d25b05fcddfca522739dedbafd661a35241738e"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.3.1/peel_v0.3.1_linux_amd64.tar.gz"
      sha256 "c81dafdf25c907223cf52815c6a9d69ff1182c940e1c13485de17f8415fedffd"
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
