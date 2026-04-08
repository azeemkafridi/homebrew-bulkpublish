# Homebrew Tap for BulkPublish

Social media automation API for AI agents, LLMs, and developers.

## Install

```bash
brew tap azeemkafridi/bulkpublish
brew install bulkpublish
```

## Usage

```javascript
const { BulkPublish } = require('bulkpublish');
const bp = new BulkPublish({ apiKey: 'bp_your_key_here' });
const { channels } = await bp.channels.list();
```

## Links

- [API Docs](https://app.bulkpublish.com/docs)
- [GitHub](https://github.com/azeemkafridi/bulkpublish-api)
- [npm](https://www.npmjs.com/package/bulkpublish)
- [PyPI](https://pypi.org/project/bulkpublish/)
