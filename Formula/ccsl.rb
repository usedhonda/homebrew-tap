class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/yzhonda/statusline"
  url "https://files.pythonhosted.org/packages/e0/31/077f3e7ced3e9d537136826b1ee7219a28d0d14bcaac7221fd5fed3d87a0/ccsl-1.0.15.tar.gz"
  sha256 "3b85dfce8b6c19b2a103445a83f6e37afeb5d8f5ab7ed4fd0d04f02bc42ad23c"
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
