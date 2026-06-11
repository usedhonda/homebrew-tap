class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/c3/a3/faf56e459465d49ef56acbeae18fb10b387a056785fbc4b2bd6befda85ee/ccsl-1.0.17.tar.gz"
  sha256 "e28166a4cd73179b7d9fea5530bb1e35e2a97b6b04ab2514f6a581b64637ab5a"
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
