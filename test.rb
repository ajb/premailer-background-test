require 'nokogiri'
require 'premailer'

html = <<EOF
<html>
<head>
<style type='text/css'>
body {
  background-color: #ffffff;
}
</style>
</head>
<body>
Hi!
</body>
</html>
EOF

premailer = Premailer.new(html, :warn_level => Premailer::Warnings::SAFE, with_html_string: true)


puts "output:"

puts premailer.to_inline_css
