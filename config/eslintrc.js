module.exports = {
    "env": {
        "browser": true,
        "es6": true,
        "node": true,
    },
    "extends": ["airbnb","eslint:recommended", "plugin:react/recommended"],
    "parserOptions": {
        "ecmaFeatures": {
            "experimentalObjectRestSpread": true,
            "jsx": true,
        },
        "sourceType": "module",
    },
    "plugins": [
    "babel",
    "react",
    "react-native",
  ],
    "rules": {
    "babel/generator-star-spacing": 1,
    "babel/new-cap": 1,
    "babel/array-bracket-spacing": 1,
    "babel/object-curly-spacing": 1,
    "babel/object-shorthand": 1,
    "babel/arrow-parens": 1,
    "babel/no-await-in-loop": 1,
//    "react-native/no-unused-styles": 2,
    "react-native/split-platform-components": 2,

    //"indent": [
    //  "error",
    //  2
    //],
    "linebreak-style": [
      "error",
      "unix",
    ],
    //    "quotes": [
    //  "error",
    //  "single"
    //],
//    "semi": [
//      "error",
//      "always"
//    ]
  },
};
