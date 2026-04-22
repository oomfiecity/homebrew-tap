class Fmrules < Formula
  desc "Declarative YAML authoring for Fastmail Email Rules"
  homepage "https://github.com/oomfiecity/fmrules"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oomfiecity/fmrules/releases/download/v3.0.0/fmrules-bun-darwin-arm64"
      sha256 "a53dacb7a6971d28feff933df2498926b6f1fd9918f22ea9c0ea793d62354d62"
    else
      url "https://github.com/oomfiecity/fmrules/releases/download/v3.0.0/fmrules-bun-darwin-x64"
      sha256 "4ee153a50c3e5cc9d8206499eda344a2abf5a4484638907157c64b71900c661b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oomfiecity/fmrules/releases/download/v3.0.0/fmrules-bun-linux-arm64"
      sha256 "15c2f990b1cf3aa6aaef1383d4c58cb30ec75852679047488b80293e0f48b699"
    else
      url "https://github.com/oomfiecity/fmrules/releases/download/v3.0.0/fmrules-bun-linux-x64"
      sha256 "ad4a5ae44877250379d69ca2b3a229c53c6ffa19d66c1a4f8293764142ff3b84"
    end
  end

  def install
    bin.install Dir["*"].first => "fmrules"
  end

  test do
    system "#{bin}/fmrules", "--help"
  end
end
