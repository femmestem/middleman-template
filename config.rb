require 'warning'

# Suppress warnings about obsolete/deprecated methods used by dependencies
Gem.path.each do |path|
  Warning.ignore(//, path)
end

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

# Pretty URLs
# https://middlemanapp.com/advanced/pretty-urls/
activate :directory_indexes

activate :livereload, :host => "127.0.0.1",
         :livereload_css_target => nil

activate :autoprefixer do |prefix|
  prefix.browsers = "last 3 versions"
end

activate :aria_current

set :haml, { :format => :html5 }

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end
