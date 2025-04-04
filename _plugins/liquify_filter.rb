# FIXME This plugin could be replaced by https://github.com/gemfarmer/jekyll-liquify
# but we need https://github.com/gemfarmer/jekyll-liquify/pull/10 to be merged first

module Jekyll
  module LiquidFilter
    def liquify(input)
      Liquid::Template.parse(input).render(@context)
    end
  end
end

Liquid::Template.register_filter(Jekyll::LiquidFilter)
