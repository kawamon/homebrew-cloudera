class ClouderaDirectorServer < Formula
  desc "Cloudera Director Server which enbales you to deploy CDH cluster on cloud"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director/director/2/cloudera-director-server-2.5.1-director2.5.1.tar.gz"
  sha256 "ea7af6de9e876d1c6d096968d87a2a961be740b6bf497b788a2b172f14eddfad"

  depends_on "cloudera-director-client" => :recommended

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/start" => "cloudera-director-server-start"
    bin.install_symlink "#{libexec}/bin/stop" => "cloudera-director-server-stop"
    bin.install_symlink "#{libexec}/bin/cloudera-director-server" => "cloudera-director-server"
  end

  def caveats
    msg = <<-EOF.undent
  You can start cloudera director server with cloudera-director-server-start command. If you want to stop it, use cloudera-director-server-stop.
  EOF
  end

  test do
    #system "false"
  end
end
