class Fmrules < Formula
  desc "Declarative YAML authoring for Fastmail Email Rules"
  homepage "https://github.com/oomfiecity/fmrules"
  version "4.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oomfiecity/fmrules/releases/download/v4.0.3/fmrules-bun-darwin-arm64"
      sha256 "be091e977fbdaa078db165082d12bc453f875a20aeb0d255718e742f8cbcbaeb"
    else
      url "https://github.com/oomfiecity/fmrules/releases/download/v4.0.3/fmrules-bun-darwin-x64"
      sha256 "4b4d94939cf1751a8f68b290c5664294ce590f89debf857d788322a94f93b51c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oomfiecity/fmrules/releases/download/v4.0.3/fmrules-bun-linux-arm64"
      sha256 "be1c2b66e87baceb0c0e3ba060e631abdf0ceb2e622c62e5bd374990fc1e2810"
    else
      url "https://github.com/oomfiecity/fmrules/releases/download/v4.0.3/fmrules-bun-linux-x64"
      sha256 "f963df787dfcbe23ceeec84e908fae77a4ee7254f56e0ff9c2dc13aa6b3eeaaa"
    end
  end

  def install
    bin.install Dir["*"].first => "fmrules"
  end

  test do
    system "#{bin}/fmrules", "--help"
  end
end
