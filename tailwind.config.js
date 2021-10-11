module.exports = {
    purge: [
        './_includes/**/*.html',
        './_layouts/**/*.html',
        './_posts/*.md',
        './*.html',
    ],
    darkMode: false,
    theme: {
        extend: {
            colors: {
                incomplete: {
                    light: '#ff7c7c',
                    DEFAULT: '#ff4949',
                    dark: '#ff1616',
                },
                complete: {
                    light: '#b0ff7c',
                    DEFAULT: '#7dff49',
                    dark: '#16ff1a',
                },
            },
        },
    },
    variants: {},
    plugins: [
        require('@tailwindcss/typography'),
    ],
}