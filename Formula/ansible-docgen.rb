class AnsibleDocgen < Formula
  include Language::Python::Virtualenv

  desc "Generate documentation from annotated Ansible playbooks and roles"
  homepage "https://github.com/outbit/ansible-docgen"
  url "https://files.pythonhosted.org/packages/ea/11/b5aae20fafe986a60925385d2128b390729f9f15c15753079a4e99e3a6b5/ansible_docgen-1.1.0.tar.gz"
  sha256 "7b7490ccdd58e5e8e945c98271f107b7488a92a2ce06f119cce936b4284074e6"
  license "MIT"

  depends_on "python@3.13"

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ansible-docgen --version")
  end
end
