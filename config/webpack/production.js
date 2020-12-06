process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

warnings: true

NODE_ENV=production RAILS_ENV=production rails assets:precompile --trace