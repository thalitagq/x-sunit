class AbductionReport < ApplicationRecord
	belongs_to :survivor, optional: true
end
