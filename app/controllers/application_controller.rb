class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include PageTitle
  
  before_action :set_coppyright

  def set_coppyright
  	@coppyright = DevcampViewTool::Renderer.coppyright 'Tran Tho Phuc', 'All right'
  end
end

module DevcampViewTool
	class Renderer
		def self.coppyright name, msg
			"&copy; #{Time.now.year} | <b> #{name} </b> #{msg}".html_safe
		end
	end
end
