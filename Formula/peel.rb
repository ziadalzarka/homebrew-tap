class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.24.0/peel_v0.24.0_darwin_arm64.tar.gz"
      sha256 "64545247e547ebe3c663ce64ba0f5387f1ad0a2c0c973540e8e7013cd4d6bf6d"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.24.0/peel_v0.24.0_darwin_amd64.tar.gz"
      sha256 "54a09fbb47a82b776c901b62e3e636a5f8493fd804caaa6ee1acfb5e67bc7394"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.24.0/peel_v0.24.0_linux_arm64.tar.gz"
      sha256 "a690773613e7685cf1a2bfccbdc715dd80eefef3db7b638c7cd2fef916bf6bda"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.24.0/peel_v0.24.0_linux_amd64.tar.gz"
      sha256 "b1aa1f224b215e3076d92060c2bf59df97a8111a3a2fcd59d84f76d8a7bae668"
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
