const { environment } = require('@rails/webpacker')

const { environment } = require('@rails/webpacker')

cont webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery';

    jQuery: 'jquery';

    Popper: ['popper.js', 'default']
}))

module.exports = environment
