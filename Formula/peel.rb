class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.6.0/peel_v0.6.0_darwin_arm64.tar.gz"
      sha256 "b18eec66ef0c9ad1b3cf7f3740638004d61af61a41cfe5bf60fa2565d3c40679"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.6.0/peel_v0.6.0_darwin_amd64.tar.gz"
      sha256 "a568897baefd73440f6d4fc444bab5d16339aad2014934960f07b92202f1b458"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.6.0/peel_v0.6.0_linux_arm64.tar.gz"
      sha256 "78ede89bea9bf88b4af920d65c99092bdad20e5805dc130de5298f860f1722e8"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.6.0/peel_v0.6.0_linux_amd64.tar.gz"
      sha256 "a994b81be4580ff4150f40b85a6ae161513f1a66739878968eb15c78d5e30782"
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
