class ClouderaDirectorServer < Formula
  desc "Cloudera Director Server which enbales you to deploy CDH cluster on cloud"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "https://archive.cloudera.com/director6/6.2.0/tars/cloudera-director-server-6.2.0.tar.gz"
  sha256 "8e58ddb41b72b2f8ef69bab31338ebbd48004593b14fd0c81a43b16d9d432080"

  depends_on "cloudera-director-client" => :recommended

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/start" => "cloudera-director-server-start"
    bin.install_symlink "#{libexec}/bin/stop" => "cloudera-director-server-stop"
    bin.install_symlink "#{libexec}/bin/cloudera-director-server" => "cloudera-director-server"
  end

  def caveats
    msg = <<~EOF
  You can start cloudera director server with cloudera-director-server-start command. If you want to stop it, use cloudera-director-server-stop.
  EOF
  end

  test do
    #system "false"
  end
end
