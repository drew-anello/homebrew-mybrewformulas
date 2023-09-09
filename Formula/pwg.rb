class Pwg < Formula

  desc "PWG is a random 12 character long password generator"
  url "https://github.com/drew-anello/random-pw-generator/releases/download/v1.0.0/pwg-v1.0.0.tar.gz"
  sha256 "21fdd49137e6a2db24c7e65aa8bfb132cdbabd9d8b31f03b60b29a9dbe478ce2"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Version #{version}", shell_output("#{bin}/pwg version")
  end
end
