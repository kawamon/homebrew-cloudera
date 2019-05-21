class ClouderaDirectorClient < Formula
  desc "Cloudera Director Client"
  homepage "https://www.cloudera.com/products/product-components/cloudera-director.html"
  url "http://archive.cloudera.com/director6/6.2.0/tars/cloudera-director-client-6.2.0.tar.gz"
  sha256 "3feaaf242c77c83b185273747751e3e7139934f170b7c504b481b691dd09bb1d"

  def install
    libexec.install Dir["bin", "lib", "plugins", "etc"]
    bin.install_symlink "#{libexec}/bin/cloudera-director" => "cloudera-director"
  end

  test do
    #system "false"
  end
end
