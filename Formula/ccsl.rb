class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/yzhonda/statusline"
  url "https://files.pythonhosted.org/packages/32/9f/d40a5b6d5e61d28b30cf490fee552d13c10c1f5385dec0a68416837a3aef/ccsl-1.0.14.tar.gz"
  sha256 "38af093b3dd2a4cab6fe1463a8cf94948425d0bf6ce0bd060d9cbbacffe4985b"
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
