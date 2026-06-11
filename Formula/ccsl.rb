class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/6d/cc/1386e7da22997ef699537afbec290db2ce17956c70e33f25513da1df2a04/ccsl-1.0.24.tar.gz"
  sha256 "5321b2815b4898286e47c8fc50a0e0542122d21057225bce0d3b4744a8b7400d"
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
