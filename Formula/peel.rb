class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.25.0/peel_v0.25.0_darwin_arm64.tar.gz"
      sha256 "83d664fb9f86928d0bdc95f12be75fcebc80d2946eff6452f3402514e9e20968"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.25.0/peel_v0.25.0_darwin_amd64.tar.gz"
      sha256 "3e7c667eca1f267d8b5db74ca04559925b803d062282e3f79f1364af99c5a333"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.25.0/peel_v0.25.0_linux_arm64.tar.gz"
      sha256 "86ebc6e2d8e7b6bc9c987d6ce5fbb93f926d0904c184db819e20d644fb0a71d3"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.25.0/peel_v0.25.0_linux_amd64.tar.gz"
      sha256 "d6c5c77422aecfc7eab6c96ebe61176aa55650a7a1a3b5ff228827b38436b95e"
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
