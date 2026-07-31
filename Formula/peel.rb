class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.2.0/peel_v0.2.0_darwin_arm64.tar.gz"
      sha256 "6f463967c8d7c20bec0a586b7550eab62b1a9497f119489b34f723812dbfa3d5"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.2.0/peel_v0.2.0_darwin_amd64.tar.gz"
      sha256 "fbcefbb62e9adf815ca8fd5f92a14fffad954d217ac3da78fda113e9df93bac9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.2.0/peel_v0.2.0_linux_arm64.tar.gz"
      sha256 "b50eba17eb985fb5806024a8dc5c7057bcdcc732454a969997fd9ddc0a4f8438"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.2.0/peel_v0.2.0_linux_amd64.tar.gz"
      sha256 "cb478ba493f7da93e08ace09e556d3ed9c00dbc9f200107edfebf351100f9eed"
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
