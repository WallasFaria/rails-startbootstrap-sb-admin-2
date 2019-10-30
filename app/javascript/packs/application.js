// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require('popper.js')
require("bootstrap/dist/js/bootstrap.bundle")
require("jquery.easing/jquery.easing")
require('@fortawesome/fontawesome-free/js/all')
require('imports-loader?define=>false!datatables.net')(window, $)
require('imports-loader?define=>false!datatables.net-bs4')(window, $)
require('./shared/sb-admin-2')

// Examples
require("chartkick")
require("chart.js")

require('./shared/demo/chart-area-demo')
require('./shared/demo/chart-bar-demo')
require('./shared/demo/chart-pie-demo')


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
