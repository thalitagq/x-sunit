class Survivor < ApplicationRecord
	has_one :abduction_report
	before_create :create_report_object

	def create_report_object
    	new_report_object = AbductionReport.new()
		new_report_object.id = self.id 
		new_report_object.create()
  end

end
