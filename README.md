# Bodega — A Shopify Workflow Gem

Bodega makes it easier for developers and designers to develop themes and deploy stores on Shopify.

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
gem install bodega-shopify
```

## The Bodega Workflow

1. `cd` into your theme folder
2. Run `$ bodega bootstrap`
4. Setup your bodega config file ([See instructions](https://github.com/XXIX/bodega/wiki/Theme-and-Store-Requirements))
5. Replace your development store with your theme by running: `$ bodega replace_theme`
6. Watch and sync your theme folder by running:  `$ bodega watch`
7. Edit your theme files
8. Sync updates with production by running: `$ bodega sync_theme production`

## Building Locally

1. Clone it
2. Run `bundle`
3. Run `rake install`

## Publishing

1. Update the version number in `lib/bodega-shopify/version.rb`
2. Run `gem build bodega-shopify.gemspec`
3. Run `gem push bodega-shopify-0.0.X.gem`

## Contributing

1. Fork it ( https://github.com/xxix/bodega-gem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
