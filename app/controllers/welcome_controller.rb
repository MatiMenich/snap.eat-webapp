class WelcomeController < ApplicationController

	before_action :set_table, only: [:choose_menu, :check_please]
	skip_before_filter :authenticate_user!
	layout 'public'

	def splash
		render(:layout => "layouts/empty")
	end

	def choose_menu
	end

	def check_please
		@check = Check.new(table_id: @table.id, delivered: false)
	end

	private

	def set_table
		@table = Table.find_by_uid(params[:uid])
	end
end