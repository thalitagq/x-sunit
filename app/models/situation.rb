class Situation < ApplicationRecord
	belongs_to :survivors

	after_save :update_situation
	after_update :update_situation


	def self.update_situation
		total_survivors = Survivor.count
		situation = Situation.new()
		
		#conn = ActiveRecord::Base.connection
		
		total_abducted = Survivor.where('abducted = true').count		
		total_non_abducted = total_survivors - total_abducted

		perc_abducted = (total_abducted*100)/total_survivors
		per_non_abducted = (total_non_abducted*100)/total_survivors

		situation.update(total_survivors: total_survivors, total_non_abducted_percentage: per_non_abducted, total_abducted_percentage: perc_abducted)
		return situation
	end



end
