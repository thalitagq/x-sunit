class AbductionReport < ApplicationRecord
	belongs_to :survivor, optional: true
	after_save :update_survivor
	after_update :update_survivor

	def update_survivor
	survivor = Survivor.find(self.id)
	amount = AbductionReport.find(self.id).amount	
	survivor.update!(abduction_reports: amount)
	end

end
