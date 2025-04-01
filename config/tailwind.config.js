/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './../_drafts/**/*.html',
    './../_includes/**/*.html',
    './../_layouts/**/*.html',
    './../_posts/*.md',
    './../_pages/**/*.html',
    './../*.md',
    './../*.html',
  ],
  plugins: [
    require('@tailwindcss/typography'),
  ]
} 