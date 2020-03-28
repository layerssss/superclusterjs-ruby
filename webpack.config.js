const path = require("path");

module.exports = {
  entry: "./lib/supercluster-entry.js",
  mode: "production",
  output: {
    path: path.resolve(__dirname, "./lib"),
    filename: "supercluster-build.js",
  },
  module: {
    rules: [
      {
        test: /\.m?js$/,
        use: {
          loader: "babel-loader",
          options: {
            presets: [
              [
                "@babel/preset-env",
                {
                  targets: {
                    node: 8,
                  },
                },
              ],
            ],
          },
        },
      },
    ],
  },
};
