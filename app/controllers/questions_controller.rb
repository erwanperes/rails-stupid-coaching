class QuestionsController < ApplicationController
	
	def ask
	end
	
	def answer
	  if params[:question]
			@question = params[:question]
			if @question.downcase == "i am going to work right now!"
				@reponse = "Great!"
			  elsif @question.end_with?("?")
				@reponse = "Silly question, get dressed and go to work!"
			  else
				@reponse = "I don't care, get dressed and go to work!"
			 end
		end
	end
end
