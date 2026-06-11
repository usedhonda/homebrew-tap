class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/21/a2/11fc737b342ccaa50dabcf432cff250fd460aa2570a74c90a49dbb888ef4/ccsl-1.0.20.tar.gz"
  sha256 "eea97e37fd581492ae7cc087a4cbb353f28959c15a15abcf05a6ee82dfdc2a68"
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
