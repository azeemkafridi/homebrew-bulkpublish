class Bulkpublish < Formula
  desc "Social media automation API for AI agents — SDK and MCP server"
  homepage "https://github.com/azeemkafridi/bulkpublish-api"
  url "https://registry.npmjs.org/bulkpublish/-/bulkpublish-1.0.1.tgz"
  sha256 "bf50069da53ce71e94ae86d12db0c8bc7a0b70826fa2049a98666a3e3a607684"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir[libexec/"bin/*"]
  end

  def caveats
    <<~EOS
      BulkPublish SDK installed. To use:

        export BULKPUBLISH_API_KEY=bp_your_key_here
        node -e "const { BulkPublish } = require('bulkpublish'); ..."

      Get your API key at https://app.bulkpublish.com/settings/developer

      Python SDK also available:
        pip install bulkpublish
    EOS
  end

  test do
    assert_predicate libexec/"lib/node_modules/bulkpublish/dist/index.js", :exist?
  end
end
