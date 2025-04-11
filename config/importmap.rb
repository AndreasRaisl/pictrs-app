# Pin npm packages by running ./bin/importmap

pin "application"
pin "canvas" # @2.11.2
pin "@kurkle/color", to: "@kurkle--color.js" # @0.3.4

pin "histogram", to: "histogram.js"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
