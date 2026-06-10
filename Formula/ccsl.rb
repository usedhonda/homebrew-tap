class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/d1/20/b113ec74b1584db5ac006e6f03a3511cb1c1ef3555f8ecb640b1b6b2c366/ccsl-1.0.16.tar.gz"
  sha256 "835bda6fd90bb4cc5c9854141f096906ae4676bb2e13099aef660242a986a3ec"
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
