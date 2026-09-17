class Peel < Formula
  desc "Terminal diff reviewer that stages what you just reviewed"
  homepage "https://github.com/ziadalzarka/peel"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.16.0/peel_v0.16.0_darwin_arm64.tar.gz"
      sha256 "e9860e2745b1b981623edd7452b3c6ccf09bb261df1155243a9ed17ac000b6e5"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.16.0/peel_v0.16.0_darwin_amd64.tar.gz"
      sha256 "02d5dd054c0e99bf564c731f3c0bc3c7f2124ce4c0fb7596a18b37e732d7ad99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ziadalzarka/peel/releases/download/v0.16.0/peel_v0.16.0_linux_arm64.tar.gz"
      sha256 "74a490f24e539c11b63b39bd5aed1045be656f0505ce58c3bdf6a2d64ebd2579"
    else
      url "https://github.com/ziadalzarka/peel/releases/download/v0.16.0/peel_v0.16.0_linux_amd64.tar.gz"
      sha256 "af46b17092f38ebc337f21aadd6d8d344d1b534353c2f2ebc0ec4c39f2ec6cfa"
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
