class Bulkpublish < Formula
  desc "Social media automation SDK for AI agents and developers"
  homepage "https://github.com/azeemkafridi/bulkpublish-api"
  url "https://registry.npmjs.org/bulkpublish/-/bulkpublish-1.3.2.tgz"
  sha256 "67aa00384aa9029a943765c2c1e93476e9e82c97f1dc1613dde7ca8e31f5d956"
  license "MIT"

  depends_on "node@22"

  def install
    # No `bin.install_symlink Dir[libexec/"bin/*"]` here on purpose: the
    # `bulkpublish` package declares no `bin`, so that line has always
    # symlinked an empty list. This formula installs a LIBRARY, which is what
    # the caveats below say and what the test asserts. Put the line back the
    # day the package ships an executable.
    system "npm", "install", *std_npm_args
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
