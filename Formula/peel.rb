class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.18.0/peel_v0.18.0_darwin_arm64.tar.gz"
      sha256 "944da877a7c8d1f4758416b13646b1280970df56af1012e286a7d0a1a9016b4d"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.18.0/peel_v0.18.0_darwin_amd64.tar.gz"
      sha256 "25f8559143d87afc11baab953a5a6c655d1db92abbb2621a31d47508e5616cd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.18.0/peel_v0.18.0_linux_arm64.tar.gz"
      sha256 "bf615096a35c82b20467a4079131818e549ff457bbdb22df77940b96bd7b5135"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.18.0/peel_v0.18.0_linux_amd64.tar.gz"
      sha256 "aa39ddaa5610828feda9f68a978d19371251e5047fba6a8c7b3656e9ff06424b"
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
