class Builders::DataResources < SiteBuilder
  def build
     hook :site, :post_read do
       add_talks_resources
     end
  end


  def add_talks_resources
    name = "talks"
    site.data.talks.each do |talk|
      add_resource name, "#{Bridgetown::Utils.slugify(talk.title)}.md" do
        ___ talk
        layout :talk
        image "/images/speakers/#{talk.speaker.photo || 'placeholder.png'}"
     end
    end
    site.collections[name].sort_resources!
  end
end
