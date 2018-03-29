module PageTitle
	extend ActiveSupport::Concern
	included do 
		before_action :set_title
	end
	def set_title
  	@page_title = "Devcamp Portfolio | My App"
  	@seo_keywords = "Tran Tho Phuc Portfolio"
  end
end
