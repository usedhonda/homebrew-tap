class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/71/ca/4134ce5e00f29c7369b40c97acacac133d0746f1ebb407d9a055f96eac02/ccsl-1.0.28.tar.gz"
  sha256 "86414ac611d3b42622c5d1a84e449de7620ace3f6f75aeaed7c3b8e81734b73b"
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
