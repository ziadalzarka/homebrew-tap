class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.23.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.23.1/peel_v0.23.1_darwin_arm64.tar.gz"
      sha256 "d5cb00d7747a6a9a34461e369c51122ffa3472b4c044e4aa620cad4309832217"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.23.1/peel_v0.23.1_darwin_amd64.tar.gz"
      sha256 "9e44e13d8c3ae16e4885106a17d76fad7653f74bdffb804acf1204da19cd7261"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.23.1/peel_v0.23.1_linux_arm64.tar.gz"
      sha256 "21086c9101d12f71c5ea2baee68fc8e56587af0c1a49d9944ea07cad29bc07d7"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.23.1/peel_v0.23.1_linux_amd64.tar.gz"
      sha256 "87c3b344062a998610c1d90606bd1d38f583fda8af874eb5bd732e64d59012b5"
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
