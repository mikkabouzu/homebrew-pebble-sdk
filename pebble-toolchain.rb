require 'formula'

class PebbleToolchain < Formula
  homepage 'https://github.com/pebble/arm-eabi-toolchain'
  url 'https://github.com/pebble/arm-eabi-toolchain/archive/v2.0.tar.gz'
  sha256 '790aa67505842eb6e6880c6b2dd2ac7a0d3059d25b20fd0e65c3ccd84b8ddf35'
  version '2.0'

  keg_only 'Not linked to avoid conflicts.'

  depends_on 'mpfr' => :build
  depends_on 'gmp' => :build
  depends_on 'libmpc' => :build
  depends_on 'libelf' => :build
  depends_on 'texinfo' => :build

  def install
    cp_r "#{buildpath}", "#{prefix}"
  end
end
