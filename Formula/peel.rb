class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.20.0/peel_v0.20.0_darwin_arm64.tar.gz"
      sha256 "83cd723c8160813fcf4e7cd1f49068915cd560669d468ab8afa6ad05aa7b7b91"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.20.0/peel_v0.20.0_darwin_amd64.tar.gz"
      sha256 "b8a8abf6563491530539a2bef73d52e720daa283528dfa42db45bd62dd1d0134"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.20.0/peel_v0.20.0_linux_arm64.tar.gz"
      sha256 "803e1281c6773e56c1e2643a6ea5e154688002adf1ae9d3481bbfde993cb1c4a"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.20.0/peel_v0.20.0_linux_amd64.tar.gz"
      sha256 "1d88b0f2aa9238ca735a8090acf427e58a1a01731c162c9510aa2766e3604732"
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
