class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/d7/3f/009b8cbf6a30095dcce3052298c917e7a488fab2d8c8e37579cfd5d627a4/ccsl-1.0.23.tar.gz"
  sha256 "655392dca4fdbd1155c7e99cff22f27f6a73953f5695fd4f7d994fa33d4c7bd6"
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
