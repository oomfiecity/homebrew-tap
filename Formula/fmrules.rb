class Fmrules < Formula
  desc "Declarative YAML authoring for Fastmail Email Rules"
  homepage "https://github.com/oomfiecity/fmrules"
  version "4.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oomfiecity/fmrules/releases/download/v4.0.2/fmrules-bun-darwin-arm64"
      sha256 "fa659318c3ea6b02f7fe6e022170cdec5af655c8d1c8101d09a043d56183632f"
    else
      url "https://github.com/oomfiecity/fmrules/releases/download/v4.0.2/fmrules-bun-darwin-x64"
      sha256 "c3dcd3f818043587bd2c34b90bf6d4714226de56797d101597f8f6459550ab02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/oomfiecity/fmrules/releases/download/v4.0.2/fmrules-bun-linux-arm64"
      sha256 "bb068ddf4eccc61fdfd74edcb886e77f00ae31b4a16507012ebd66481c4c5c44"
    else
      url "https://github.com/oomfiecity/fmrules/releases/download/v4.0.2/fmrules-bun-linux-x64"
      sha256 "bfa92e707aa38186df234e3298b7b2a57a32d08f50339adddd007d3c10783e32"
    end
  end

  def install
    bin.install Dir["*"].first => "fmrules"
  end

  test do
    system "#{bin}/fmrules", "--help"
  end
end
