module MixinSitemap
  
  def self.included(base)
    base.extend ClassMethods
    base.send(:include, InstanceMethods)
  end
  
  module InstanceMethods

    private
      def generate_sitemap
        sitemap = Sitemap.new
        sitemap.build
        sitemap.save
        sitemap.update_google
      end

  end
  
  module ClassMethods
    
    def self.extended(base)
      base.after_save :generate_sitemap
    end
    
    def find_for_sitemap
      find(:all)
    end

  end
  
end