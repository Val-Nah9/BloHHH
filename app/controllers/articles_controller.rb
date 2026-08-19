class ArticlesController < ApplicationController
	
	def new
	end
	
	def create
		render plain: params[:article].inspect

		# Раньше (до Rails 8) выводило сразу без пере-направления и без ошибки (в Rails 5)
		redirect_to articles_path			# (Перенаправляем на страницу index)
	end

end
