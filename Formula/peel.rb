class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.15.0/peel_v0.15.0_darwin_arm64.tar.gz"
      sha256 "155c35da789853ca305e6b73914ae094673a23e855d29feb1594912f35e6edf0"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.15.0/peel_v0.15.0_darwin_amd64.tar.gz"
      sha256 "59a7038b993874d885ebdb74d95a2e4eabf251b1818a47db90b25ec9a4139af9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.15.0/peel_v0.15.0_linux_arm64.tar.gz"
      sha256 "9c1e5ecbbd030cacd7ec99ad21162f17a794aa88199c1623fb1403f2d9a68b2a"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.15.0/peel_v0.15.0_linux_amd64.tar.gz"
      sha256 "0ca055c602eb2d341cd15bc958c3699db36d86972444d32225d838152d502ba2"
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
