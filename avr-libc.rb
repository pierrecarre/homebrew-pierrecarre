require "formula"

class AvrLibc < Formula
  homepage "http://savannah.nongnu.org/projects/avr-libc/"
  url "http://download.savannah.gnu.org/releases/avr-libc/avr-libc-1.8.0.tar.bz2"
  sha1 "2e3815221be8e22f5f2c07b922ce92ecfa85bade"

  depends_on 'avr-binutils'
  depends_on 'avr-gcc'

  def install
    system "./configure", "--prefix=#{prefix}", "--build=`./config.gess`", "--host=avr"
    system "make"
    system "make install"
  end
end
