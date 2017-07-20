class ItemsController < ApplicationController
  def index
  	@item = Item.all
	  	if params[:delete].present?
	  		@i = params[:delete]
	  	end



	  	if Item.find_by(serial: @i).present?
	  			b = Item.find_by(serial: @i)
	  			b.destroy
	  			redirect_to works_index_path, notice: "El neumatico fue eliminado"
		end
  end
end
