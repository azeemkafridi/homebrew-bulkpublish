class Bulkpublish < Formula
  desc "Social media automation API for AI agents — SDK and MCP server"
  homepage "https://github.com/azeemkafridi/bulkpublish-api"
  url "https://registry.npmjs.org/bulkpublish/-/bulkpublish-1.0.2.tgz"
  sha256 "f3eb5ad9dc98fafc9eede795cf4dfc47115f6e37ec119b63d70ef403c646f50e"
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
