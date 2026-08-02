class Tempyenv < Formula
  include Language::Python::Virtualenv

  desc "Easy and quick way to create a temporary Python virtual environment"
  homepage "https://github.com/outbit/tempyenv"
  url "https://files.pythonhosted.org/packages/01/f1/af576a2e40cd0b959a379c52013e56ded2a9d3b883b20e466b609da81de5/tempyenv-1.0.7.tar.gz"
  sha256 "98cd768570def14a1f14e5a678cb0971c068ca228b15a176ee603cee62661848"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tempyenv --version")
  end
end
