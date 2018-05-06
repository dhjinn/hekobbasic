class EventsController < ApplicationController
	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		@event.update_attribute(:teacher_id, current_teacher.id)
		@event.save
		redirect_to teacher_path(current_teacher.id)
	end


	def event_params
		params.require(:event).permit(
			:name, :price, :max, :duration, :instructor, 
			:topic, :provided, :prerequisites, :materials, :when)
	end
end
