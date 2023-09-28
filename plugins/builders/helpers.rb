class Builders::Helpers < SiteBuilder
  def build
    helper :talk_from_slug do |slug|
      @site.collections.talks.resources.detect {|talk| talk.data.slug == slug }
    end
  end
end
