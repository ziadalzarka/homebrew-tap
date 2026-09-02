class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.8.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.4/peel_v0.8.4_darwin_arm64.tar.gz"
      sha256 "05eeba520dcd584de12ac2f0ce52fb3c900fd0c00dd6c81f14492f02b034201a"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.4/peel_v0.8.4_darwin_amd64.tar.gz"
      sha256 "f5a34034cd26c3ea01f316f0241012f35b16c6f285f29af0ec4fb75aea033948"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.4/peel_v0.8.4_linux_arm64.tar.gz"
      sha256 "3254d8e49ffa0e8bc71af8b71687feea0dd32abb41eed170ba2b6b3cbf530034"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.8.4/peel_v0.8.4_linux_amd64.tar.gz"
      sha256 "1c7268de0f521f1908f3ea9773c7610cedc8d8e80133d79b4b97c9a6d6ebf5e2"
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
