require 'formula'

class ElasticsearchCurator < Formula
  homepage 'https://github.com/elasticsearch/curator/blob/master/README.md'
  url 'https://github.com/elasticsearch/curator/archive/v5.1.1.tar.gz'
  sha256 '35064a6acaf35dacd9ac21b8ad78782640a0a7b77f684c7a6bf5db2f513b374f'

  depends_on :python

  def install
    system "python", "setup.py", "install", "--prefix=#{prefix}", "--single-version-externally-managed", "--record=install.txt"
  end
end
