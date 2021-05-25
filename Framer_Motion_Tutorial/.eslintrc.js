module.exports = {
    env: {
        node: true,
        es2020: true,
        browser: true,
    },
    extends: [
        "eslint:recommended",
        "plugin:react/recommended",
        "plugin:prettier/recommended",
    ],
    parserOptions: {
        ecmaFeatures: {
            jsx: true,
        },
        ecmaVersion: 12,
        sourceType: "module",
    },
    plugins: ["react", "prettier", "html"],
    rules: {
        "no-console": "error",
        "prettier/prettier": [
            "error",
            {
                endOfLine: "lf",
            },
        ],
    },
};
