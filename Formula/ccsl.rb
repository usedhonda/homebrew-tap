class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/88/6c/f722fe8c07237818b6323e7810e2e84bc546aba26c6c08e63825cab77207/ccsl-1.0.27.tar.gz"
  sha256 "17b37e240e3e413bd1a7dc455f3e8f9ada51194237bce857cc3537539c87b1a2"
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
