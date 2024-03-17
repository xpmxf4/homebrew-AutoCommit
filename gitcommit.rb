class AutoCommit < Formula
  desc "Automates git commit messages with predefined aliases"
  homepage "https://github.com/xpmxf4/AutoCommit"
  url "https://github.com/xpmxf4/AutoCommit/releases/download/v1.0/AutoCommit-v1.0.tar.gz"
  sha256 "ed17ea843f382cad41bb85c42d163a366fad617dd24fbf13684fb5f5d02e09cd"

  def install
    bin.install "gimCommands.sh"
    bin.install "install_prompt.sh"
  end

  def caveats; <<~EOS
    We will ask if you want to automatically add AutoCommit commands to your .zshrc.
    If you choose not to, please add the following line manually:
    source $(brew --prefix)/bin/gimCommands.sh
    EOS
  end

  def post_install
    system "#{bin}/install_prompt.sh"
  end
end

