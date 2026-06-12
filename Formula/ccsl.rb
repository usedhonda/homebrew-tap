class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/c2/98/e681fc27ec4e67d2905aadfa0f0d9209bd54e13de87f066071bc47cbe9b7/ccsl-1.0.26.tar.gz"
  sha256 "8c88a98e24e74eb8cb6c8ae7c8cb51c0bdbde59055baa31b5a9e49f0d59547ce"
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
