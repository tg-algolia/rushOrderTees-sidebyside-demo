# Algolia Index Comparison Tool

A side-by-side comparison tool for comparing search results across two Algolia indices. Perfect for comparing keyword search vs neural search, or comparing different index configurations.

## Features

- Side-by-side search result comparison
- Support for both keyword and neural search modes
- Synchronized search queries and pagination
- Customizable hit card attributes
- Responsive design

## Deploying to Netlify

### One-Click Deploy

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy)

### Manual Deployment

1. Fork or clone this repository
2. Connect your repository to Netlify
3. Configure the environment variables (see below)
4. Deploy!

## Environment Variables

You need to configure the following environment variables in your Netlify project:

### Index 1 Configuration

- `INDEX1_APP_ID` - Your Algolia Application ID for the first index
- `INDEX1_API_KEY` - Your Algolia Search-Only API Key for the first index
- `INDEX1_INDEX_NAME` - The name of your first Algolia index
- `INDEX1_SEARCH_MODE` - Search mode: `keyword` or `neural`

### Index 2 Configuration

- `INDEX2_APP_ID` - Your Algolia Application ID for the second index
- `INDEX2_API_KEY` - Your Algolia Search-Only API Key for the second index
- `INDEX2_INDEX_NAME` - The name of your second Algolia index
- `INDEX2_SEARCH_MODE` - Search mode: `keyword` or `neural`

### Display Attributes Configuration

- `TITLE_ATTR` - The attribute name to use for the product title (e.g., `title`)
- `IMAGE_ATTR` - The attribute name to use for the product image (e.g., `lifestyleImage`)
- `FIELD1_ATTR` - The attribute name for the first field (e.g., `product-style`)
- `FIELD1_LABEL` - Display label for the first field (e.g., `Style`)
- `FIELD2_ATTR` - The attribute name for the second field (e.g., `brand`)
- `FIELD2_LABEL` - Display label for the second field (e.g., `Brand`)

### Other Configuration

- `HITS_PER_PAGE` - Number of results to show per page (e.g., `18`)

### Example Configuration

Here's an example of how to set your environment variables in Netlify:

```
INDEX1_APP_ID=HWJ52H4D98
INDEX1_API_KEY=acf4472d88acbb00d11d755012189218
INDEX1_INDEX_NAME=product_catalog
INDEX1_SEARCH_MODE=keyword

INDEX2_APP_ID=T3J6BKODKM
INDEX2_API_KEY=85be8167f9237efc6997e81f8af59f73
INDEX2_INDEX_NAME=demo_rot_ns
INDEX2_SEARCH_MODE=neural

TITLE_ATTR=title
IMAGE_ATTR=lifestyleImage
FIELD1_ATTR=product-style
FIELD1_LABEL=Style
FIELD2_ATTR=brand
FIELD2_LABEL=Brand

HITS_PER_PAGE=18
```

## How to Set Environment Variables in Netlify

1. Log in to your Netlify account
2. Select your site
3. Go to **Site settings** > **Environment variables**
4. Click **Add a variable**
5. Add each environment variable listed above
6. Save your changes
7. Trigger a new deployment

## Local Development

For local development, you can edit the values directly in `config.js` or create a local build script to inject your values.

## Security Note

Make sure to use **Search-Only API Keys** from Algolia, not Admin API Keys. Search-Only API Keys are safe to expose in client-side code.

## License

MIT
