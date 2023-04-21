class Shared::Navbar < Bridgetown::Component
  def initialize(site:, metadata:, resource:)
    @site, @metadata, @resource = site, metadata, resource
  end

  def homepage?
    @resource.relative_url == '/'
  end

  def homepage_sections
    @metadata.main_page.sections.select {|section| section.enabled && section.navbar }
  end

  def top_level_pages
    @site.collections.pages.resources.select { |r| r.data.top_level }.sort_by { |r| r.data.title }
  end

  def scroll_class
    homepage? ? 'ud-menu-scroll' : ''
  end

  def relative_href(section)
    ref = section.slug || section.name
    (homepage? ? '#' : '/#') +  ref
  end
end
