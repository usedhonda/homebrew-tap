class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/89/0b/e7d461dcb9839ac867b307666939fa528ba6e55f2eb2ddb06f3b5fa12dfc/ccsl-1.0.19.tar.gz"
  sha256 "8a4444b880d3cdb479fb5ab2bfc431397e33d6ad9e78e83760d9defd7d5ae427"
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
