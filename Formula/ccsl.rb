class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/59/13/a1665e0017b4a7bfb141bbc7065673fb98e1ab934d2bf512cee12008709a/ccsl-1.0.31.tar.gz"
  sha256 "cdcc4411366dbc7a8f6f894fc0f0a23a49131e49a2f994ce2f271d215826cf87"
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
