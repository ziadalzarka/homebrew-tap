class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.5.0/peel_v0.5.0_darwin_arm64.tar.gz"
      sha256 "439c35670b73e6e305289c27f50091b7059fb599a7970b108c1592a221f754c8"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.5.0/peel_v0.5.0_darwin_amd64.tar.gz"
      sha256 "83228a506dfb5a59e6aa270c9daaf381aadadbcc0d6cc6112dec1febec06b29d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.5.0/peel_v0.5.0_linux_arm64.tar.gz"
      sha256 "d5624c1cacc250562c118000cfc053f9da98db29d93d3500f4cc2bb23672b205"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.5.0/peel_v0.5.0_linux_amd64.tar.gz"
      sha256 "d08e25d519430feb525f2bb73a9d28437ea5e2d6c8f684be485212b9fb8bbb77"
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
