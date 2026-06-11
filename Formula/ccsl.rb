class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/b0/9a/cfc6743222351b2c21dcac22ab7cc577c1e78b3cf951b8d16e6146fccd3b/ccsl-1.0.22.tar.gz"
  sha256 "6756a89ea8485d0706213e471a6b67c1a45e1f57133b192f265447a212283645"
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
