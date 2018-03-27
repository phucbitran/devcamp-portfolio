class PortfoliosController < ApplicationController
	# before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
	def index
		@portfolio_item = Portfolio.all
	end
	def new
		@portfolio_item = Portfolio.new
	end
	def create
		@portfolio_item = Portfolio.new(portfolio_params)
		if @portfolio_item.save
			redirect_to portfolios_path, notice: 'Portfolio item was successfully created.'
		else
			render :new
		end
	end
	private 
	def set_portfolio
		@portfolio_item = Portfolio.find(params[:id])
	end
	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
	end
end
