class PortfoliosController < ApplicationController
	before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
	layout 'portfolio'
	def index
		@portfolio_item = Portfolio.all
	end
	def angular
		@angular_portfolio_items = Portfolio.angular
	end
	def new
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build }
	end
	def create
		@portfolio_item = Portfolio.new(portfolio_params)
		if @portfolio_item.save
			redirect_to portfolios_path, notice: 'Portfolio item was successfully created.'
		else
			render :new
		end
	end
	def edit
	end
	
	def update
		if @portfolio_item.update(portfolio_params)
			redirect_to portfolios_url, notice: 'Portfolio item was successfully created.'
		else 
			render :edit
		end
	end
	def destroy
		@portfolio_item.destroy

		redirect_to @portfolio_item
	end
	private 
	def set_portfolio
		@portfolio_item = Portfolio.find(params[:id])
	end
	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, 
			technologies_attributes: [:name])
	end
end
