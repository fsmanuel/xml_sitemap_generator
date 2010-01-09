require 'fileutils'

sitemap_config = File.dirname(__FILE__) + '/../../../config/sitemap_config.yml'
FileUtils.cp File.dirname(__FILE__) + '/sitemap_config.yml.tpl', sitemap_config unless File.exist?(sitemap_config)
sitemap_xsl = File.dirname(__FILE__) + '/../../../public/sitemap.xsl'
FileUtils.cp File.dirname(__FILE__) + '/sitemap.xsl.tpl', sitemap_xsl unless File.exist?(sitemap_xsl)