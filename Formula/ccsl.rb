class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/55/32/cfa4eec54a4008b7b30a9f49f37db5b13332d76d24770439c9d2005060a3/ccsl-1.0.32.tar.gz"
  sha256 "1b34ac206179a35c4a585d0efb1abb3bfba1ac76a7b6bad1d613ee0a1d0453a7"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Run once to configure Claude Code:
        ccsl --setup

      NOTE: the Homebrew tap is retired; 1.0.32 is the last build. ccsl is a single
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
