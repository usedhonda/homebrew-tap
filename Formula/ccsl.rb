class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/yzhonda/statusline"
  url "https://files.pythonhosted.org/packages/bd/47/cf7b6750a29f5794ec7fc153bba8d8f27ced31bb56e238f9385d7667f4b1/ccsl-1.0.13.tar.gz"
  sha256 "42296f2d60145b5ea56e125b20f091d71471784f68a423b1d20828a9e108f2e8"
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
