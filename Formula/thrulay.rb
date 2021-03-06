class Thrulay < Formula
  desc "Measure performance of a network"
  homepage "https://sourceforge.net/projects/thrulay/"
  url "https://downloads.sourceforge.net/project/thrulay/thrulay/0.9/thrulay-0.9.tar.gz"
  sha256 "373d5613dfe371f6b4f48fc853f6c27701b2981ba4100388c9881cb802d1780d"

  bottle do
    cellar :any
    sha256 "00938642d65ba687a0ef83e85f682d6bdb1df02a7807fc3d337e3ca473af1cf9" => :sierra
    sha256 "74f52b9eaa39092931b68630eef408db6b53e1b0c538ec52950b89d0a4ea5563" => :el_capitan
    sha256 "f0a9bb5aa42ee3ce25965c50163e190ba13c220d91d4855fd38655cb91aae138" => :yosemite
    sha256 "558dc8e0634a811bab7dd9608dcb2e1ed95375e0cd3d37a4e3be6e9c30f94ed1" => :mavericks
  end

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    ENV.deparallelize
    system "make", "install"
  end
end
