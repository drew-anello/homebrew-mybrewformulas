class Pwg < Formula

  desc "PWG is a random 12 character long password generator"
 url "https://github.com/drew-anello/random-pw-generator/archive/refs/tags/v1.0.0.tar.gz"


  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Version #{version}", shell_output("#{bin}/pwg version")
  end
end

