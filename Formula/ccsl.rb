class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/9f/19/32395e1f0d99bff4fd6bba195cd3b470ecbb3135b7eb8479b024944a5d82/ccsl-1.0.29.tar.gz"
  sha256 "06026ea16d58acc098d16e7da20b3f965bbe6a5524578bd7d43d4b37a0d3ce8c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Run once to configure Claude Code:
        ccsl --setup

      NOTE: the Homebrew tap is being retired. ccsl is a single
      dependency-free file that can self-update — please reinstall via:
        curl -fsSL https://raw.githubusercontent.com/usedhonda/statusline/main/statusline.py -o ~/.claude/statusline.py
        python3 ~/.claude/statusline.py --setup
        brew uninstall ccsl
    EOS
  end

  test do
    assert_match "ccsl", shell_output("#{bin}/ccsl --version")
  end
end
