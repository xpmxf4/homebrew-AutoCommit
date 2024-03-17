class Autocommit < Formula
  desc "Automates git commit messages with predefined aliases"
  homepage "https://github.com/xpmxf4/AutoCommit"
  url "https://github.com/xpmxf4/AutoCommit/releases/download/v1.2/AutoCommit-v1.2.tar.gz"
  sha256 "b12fdea1aac4589f6fed98084f2e02742f3b61e6a935e718bf731bd9f7d97f61"

  def install
    bin.install "gitCommand.sh"
  end

  def post_install
  puts <<~EOS



    ====================================================================
    🎉 AUTO-COMMIT IS NOW INSTALLED! 🎉

    To ENABLE AutoCommit features in your terminal sessions:

    1. Add the following line to your .zshrc file by submitting the command below 

       echo 'source $(brew --prefix)/bin/gitCommand.sh' >> ~/.zshrc; source ~/.zshrc

    2. If above command doesn't work, add next line to your .zshrc file manually.

	   echo 'source $(brew --prefix)/bin/gitCommand.sh

    🛑 If you ever decide to UNINSTALL AutoCommit, remember to remove
    the line from your .zshrc manually. You can use this command:

       sed -i '' '/source $(brew --prefix)\\/bin\\/gitCommand.sh/d' ~/.zshrc

    ====================================================================



  EOS
  end


  def caveats; <<~EOS



  If you ever decide to uninstall AutoCommit, you might want to remove
  the following line from your .zshrc manually:


  source $(brew --prefix)/bin/gitCommand.sh


  You can use the following command to remove it:

  sed -i '' '/source $(brew --prefix)\\/bin\\/gitCommand.sh/d' ~/.zshrc


  EOS
  end
end

