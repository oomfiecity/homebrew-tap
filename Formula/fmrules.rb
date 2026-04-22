class Fmrules < Formula
  desc "Declarative YAML authoring for Fastmail Email Rules"
  homepage "https://github.com/oomfiecity/fmrules"
  license "MIT"
  version "3.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oomfiecity/fmrules/releases/download/v3.0.0/fmrules-bun-darwin-arm64"
      sha256 "REPLACE_WITH_ARM64_SHA"
    else
      url "https://github.com/oomfiecity/fmrules/releases/download/v3.0.0/fmrules-bun-darwin-x64"
      sha256 "4ee153a50c3e5cc9d8206499eda344a2abf5a4484638907157c64b71900c661b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oomfiecity/fmrules/releases/download/v3.0.0/fmrules-bun-linux-arm64"
      sha256 "REPLACE_WITH_LINUX_ARM64_SHA"
    else
      url "https://github.com/oomfiecity/fmrules/releases/download/v3.0.0/fmrules-bun-linux-x64"
      sha256 "REPLACE_WITH_LINUX_X64_SHA"
    end
  end

  def install
    bin.install Dir["*"].first => "fmrules"
  end

  test do
    system "#{bin}/fmrules", "--help"
  end
end