class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.11.1/peel_v0.11.1_darwin_arm64.tar.gz"
      sha256 "eeab57e0eb2af3ce48674eb8c04196f32cf47d90a06b2fa04f81ca30931dc9a4"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.11.1/peel_v0.11.1_darwin_amd64.tar.gz"
      sha256 "b2d79a18212a1336e734989d01af57ae0ae45966b041e3802e9f16494ca132ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.11.1/peel_v0.11.1_linux_arm64.tar.gz"
      sha256 "bc2825af26efa308ab4936859eeac8c782d842ba5a7e96ff87c33a6e79ce5bf6"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.11.1/peel_v0.11.1_linux_amd64.tar.gz"
      sha256 "00b126f801ec7fae40271e96192e65961385e4915c923f124df97d3ddb5f6d5d"
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
