class Portfolio < ApplicationRecord

	validates_presence_of :title, :body, :main_image, :thumb_image



	#different methods to prefore a query.........

	#def self.angular
	#	where(subtitle: 'Angular')
	#end

	#scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Angular')}

	after_initialize :set_defaults #-> rails callback

	def set_defaults
		self.main_image  ||= "https://placehold.it/600x400" #-> ||= -> will set a image if the value is nil
		self.thunb_image ||= "https://placehold.it/350x150" #-> ||= -> will set a image if the value is nil
	end
end
