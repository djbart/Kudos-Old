module.exports = {
  build: {
    "index.html": "index.html",
    "app.js": [
      "javascripts/app.js"
    ],
    "blockies.js": [
      "javascripts/blockies.js"
    ],
    "app.css": [
      "stylesheets/app.css"
    ],
    "images/": "images/"
  },
  deploy: [
    "KudosCoin",
    "ConvertLib"
  ],
  rpc: {
    host: "localhost",
    port: 8545
  }
};
