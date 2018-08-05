class AbductionReport < ApplicationRecord
	belongs_to :survivor, optional: true
	after_save :update_survivor, :check_abduction
	after_update :update_survivor, :check_abduction

	#uptade survivors' table when abduction_reports is updated
	def update_survivor
	survivor = Survivor.find(self.id)
	amount = AbductionReport.find(self.id).amount	
	survivor.update!(abduction_reports: amount)
	end

	def check_abduction
		reports = AbductionReport.find(self.id).amount
		survivor = Survivor.find(self.id)

		if reports >= 3
			
			survivor.update!(abducted: "true")
		end
		
	end

end
