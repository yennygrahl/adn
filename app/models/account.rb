class Account < ActiveRecord::Base
	validates :codigo, presence: true
	validates :descripcion, presence: true

	has_ancestry
	
	acts_as_tree order: "padre"
end

