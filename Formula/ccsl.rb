class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/ca/fe/fb23725f91ace1886b84deafda9e2c3974a99353138f439d92c8f1be636c/ccsl-1.0.30.tar.gz"
  sha256 "6df3eed2448852b2d73eff47f8cd44347562bbdd4bb0c41098447ac4fec26fa0"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Run once to configure Claude Code:
        ccsl --setup

      NOTE: the Homebrew tap is being retired. ccsl is a single
      dependency-free file that can self-update — please reinstall via:
        curl -fsSL https://raw.githubusercontent.com/usedhonda/statusline/main/statusline.py -o ~/.claude/statusline.py
        python3 ~/.claude/statusline.py --setup
        brew uninstall ccsl
    EOS
  end

  test do
    assert_match "ccsl", shell_output("#{bin}/ccsl --version")
  end
end
