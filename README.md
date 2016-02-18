![Dougie](http://carboncostume.com/wordpress/wp-content/uploads/2014/06/dougheffernan.jpg)

Who else would you want to delivery your theme files to Shopify?

# Dougie — A Shopify Workflow Gem

Dougie makes it easier for developers and designers to develop themes and deploy stores on Shopify.

## Benefits

+ Manage multiple shops and themes
+ Easily switch between multiple themes/stores
+ Only sync updated theme files

## Features

1. Sync local theme files with live Shopify stores using the [Shopify Theme gem](https://github.com/Shopify/shopify_theme/)
2. Deploy your theme to multiple stores

## Planned Features

+ Copy products, collections, pages, blogs and articles between Shopify stores

## Installation

```
gem install dougie
```

## The Bodega Workflow

1. `cd` into your theme folder
2. Run `$ dougie bootstrap`
3. Add your store API keys to the `_stores.yml` file
4. Replace your development store with your theme by running: `$ dougie replace_theme`
5. Watch and sync your theme folder by running:  `$ dougie watch`
6. Edit your theme files
7. Sync updates with production by running: `$ dougie sync_theme production`

## Getting API keys

1. Login to the Admin of your store
2. Go to `Apps`
3. Click on `Private Apps`
4. Click `Create private app`
5. Give the app a name, like `Dougie`
6. Copy and paste the `API Key` and `Password` into the `_stores.yml` file in your theme folder under `development` and update the store URL
7. Repeat for a production store

## Building Locally

1. Clone it
2. Run `bundle`
3. Run `rake install`

## Publishing

1. Update the version number in `lib/dougie/version.rb`
2. Run `gem build dougie.gemspec`
3. Run `gem push dougie-0.0.X.gem`

## Contributing

1. Fork it ( https://github.com/xxix/dougie/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
