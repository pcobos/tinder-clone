const { environment } = require('@rails/webpacker')

// This code snippet sets up jQuery for us
const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment
