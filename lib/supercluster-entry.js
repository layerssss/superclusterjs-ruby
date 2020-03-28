const Supercluster = require("supercluster").default;

global.callSupercluster = (method, options, points, ...args) => {
  const supercluster = new Supercluster(options);
  supercluster.load(points);
  return supercluster[method].call(supercluster, ...args);
};
