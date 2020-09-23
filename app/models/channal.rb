class Channal < ApplicationRecord
	
	has_many :tvshows ,dependent: :destroy

	validates :title,:channal_type,presence: true
	
	def self.channal_types
		types = [
			["Entertainment","entertainment"],
			["Movies","movies"],
			["Music","music"],
			["Kids","kids"],
			["Religious","religious"],
		]
		return types;
	end

	def self.channal_list
		@channal = Channal.all.map { |e| [e.title.try(:titleize),e.id]  }
	end

end
