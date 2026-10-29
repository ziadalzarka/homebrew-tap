class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.22.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.22.1/peel_v0.22.1_darwin_arm64.tar.gz"
      sha256 "2d8d52eeb5758893fa370f5a02f8ee759713e5b53f99d0ab5a088788b4ff5aed"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.22.1/peel_v0.22.1_darwin_amd64.tar.gz"
      sha256 "fda7c1f899e2de9c0cbd75f0a47fa24a629bff519dca18fcf28276c341b6a9f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.22.1/peel_v0.22.1_linux_arm64.tar.gz"
      sha256 "610e4a8bacc44cc02d5e128a95a8ef8e26b435e39d688385a455e8878b10642f"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.22.1/peel_v0.22.1_linux_amd64.tar.gz"
      sha256 "77555e00c8d1cb6ff917aa01b5ec03b9bcb14b7c6116e70846aa4fa2bd6655b9"
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
