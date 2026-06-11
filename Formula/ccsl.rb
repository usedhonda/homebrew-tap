class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/5d/0a/5fdfb10ec8ec214ebc29e471339fdc65880ad40053f4d79c75429db153b9/ccsl-1.0.25.tar.gz"
  sha256 "8369e36cff351f337443cc8cc732447834a0c8eb35ed74099e1339627c93e6ae"
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
