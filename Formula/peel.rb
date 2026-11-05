class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.23.0/peel_v0.23.0_darwin_arm64.tar.gz"
      sha256 "c665459b757f2b7affcd2ab9b7843a26e61cf84670fe327fda67d175d91705fc"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.23.0/peel_v0.23.0_darwin_amd64.tar.gz"
      sha256 "bb56813c24e7ee7fcdc480efcce715c37aa476c623b74ecd3bab5915e11ca076"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.23.0/peel_v0.23.0_linux_arm64.tar.gz"
      sha256 "c1cff577a5ebbeb7b9185afb13cf6799e9842013c3b0945ecf59ebfa81b9e70e"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.23.0/peel_v0.23.0_linux_amd64.tar.gz"
      sha256 "2cc627617b6a8aaf722c8bde7f796fc28b501ab638b12c87d002aac1d9da0f70"
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
