class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.19.0/peel_v0.19.0_darwin_arm64.tar.gz"
      sha256 "e0a342dfa8fda30a07caec6485892ef9796e4fe7e6aa79919aa599a084bd56da"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.19.0/peel_v0.19.0_darwin_amd64.tar.gz"
      sha256 "89b94fa152fcd7c6ac56708bb8c8c598a7b2f08d6cdaba72b883a16d42b19c38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.19.0/peel_v0.19.0_linux_arm64.tar.gz"
      sha256 "b3f2fb055b18ff0c7e067bfaf3fa1ccceeb7c311cf1fa61bd12b461b5a98b6e0"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.19.0/peel_v0.19.0_linux_amd64.tar.gz"
      sha256 "553014a40d307226df9c2c90b6f183dd25f3bf5665142ae87f357ef1fd3e584b"
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
