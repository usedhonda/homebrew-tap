class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/35/43/988a62123698d41cefcd12785dfc6fa02b5b228a2aff0d4b9d61c3fa1c4c/ccsl-1.0.18.tar.gz"
  sha256 "7b63756d4c82ac42d410ec4c7cccd925b8d405e1fde2482632a15b342f68051b"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Run once to configure Claude Code:
        ccsl --setup
    EOS
  end

  test do
    assert_match "ccsl", shell_output("#{bin}/ccsl --version")
  end
end
