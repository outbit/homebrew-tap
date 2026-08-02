class Tempyenv < Formula
  include Language::Python::Virtualenv

  desc "Easy and quick way to create a temporary Python virtual environment"
  homepage "https://github.com/outbit/tempyenv"
  url "https://files.pythonhosted.org/packages/40/31/fc44d4daaf53973a22032a77ab5905fa829320442a7eb14d638e166dfdeb/tempyenv-1.0.8.tar.gz"
  sha256 "9cd6a00ad9375de8ccdffa48d647ef7927ccd2939b58aebffaab4edcb112bdab"
  license "MIT"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tempyenv --version")
  end
end
