class Tvshow < ApplicationRecord
  belongs_to :channal ,optional: true
	
	validates :title,:channal_id,presence: true

end
