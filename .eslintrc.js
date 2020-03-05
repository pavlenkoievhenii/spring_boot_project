module.exports = {
  'parser': 'babel-eslint',
  'env': {
    'browser': true,
    'mocha': true,
    'es6': true,
    'jquery': true,
  },
  'extends': [
    // use the recommended rule set for both plain javascript and vue
    "eslint:recommended",
//    "plugin:vue/recommended"
  ],
  'rules': {
    'indent': ['error', 4],
    'no-underscore-dangle': 'off',
    'max-len': ['error', 150, 4, {
      ignoreUrls: true,
      ignoreComments: false,
      ignoreRegExpLiterals: true,
      ignoreStrings: true,
      ignoreTemplateLiterals: true,
    }],
    'one-var': 'off',
    'default-case':'off',
    'no-multi-assign': 'off',
    'vars-on-top': 'off',
    'func-names': 'off',
    'no-eval': 'off',
    'global-require': 'off',
    'radix': ['error', 'as-needed'],
    'no-plusplus': 'off',
    'no-param-reassign': 'off',
    'camelcase': 'off',
    'spaced-comment': 'off',
    'no-continue': 'off',
    'eol-last': 'off',
    'no-bitwise': 'off',
  },
  'globals': {
    'mstrmojo': true,
    'mstrApp': true,
    'mstrConfig': true,
    'self': true,
    'ActiveXObject': true,
    'microstrategy': true,
    'mstrMobileApp': true,
    'mstr_profile': true,
    'global': true,
  },
};

