class SitemapController < ApplicationController
  def sitemap
    render :file => 'sitemap/sitemap.xml', :content_type => 'application/xml'
  end
end
