# Dougie — A Shopify Workflow Gem

Dougie makes it easier for developers and designers to develop themes and deploy stores on Shopify.

## Benefits

+ Use your text editor of choice to edit theme files
+ Automatically keep theme files in sync
+ Manage multiple shops and themes at once
+ Easily switch between multiple themes/stores

## Features

1. Sync local theme files with live Shopify stores using the [Shopify Theme gem](https://github.com/Shopify/shopify_theme/)
2. Deploy your theme to development and production stores

## Planned Features

+ Copy products, collections, pages, blogs and articles between Shopify stores

## Installation

```
gem install dougie
```

## The Bodega Workflow

1. `cd` into your theme folder
2. Run `$ doguie bootstrap`
4. Add your store API keys to `_stores.yml` file ([See instructions](https://github.com/XXIX/dougie/wiki/Theme-and-Store-Requirements))
5. Replace your development store with your theme by running: `$ dougie replace_theme`
6. Watch and sync your theme folder by running:  `$ dougie watch`
7. Edit your theme files
8. Sync updates with production by running: `$ dougie sync_theme production`

## Building Locally

1. Clone it
2. Run `bundle`
3. Run `rake install`

## Publishing

1. Update the version number in `lib/dougie/version.rb`
2. Run `gem build dougie.gemspec`
3. Run `gem push dougie-0.0.X.gem`

## Contributing

1. Fork it ( https://github.com/xxix/dougie-gem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
