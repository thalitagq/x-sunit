class Survivor < ApplicationRecord
	has_one :abduction_report
	#after_update :percentage_abduced #:percentage_non_abduced
	#after_find :percentage_abduced #:percentage_non_abduced
	

	#def percentage_abduced
	#	total = Survivor.count
	#	abduced = ('where((SELECT Count(*) FROM survivors WHERE abduced = true)')
		
		#percentage = (abduced*100)/total

		
		
	#end
end
