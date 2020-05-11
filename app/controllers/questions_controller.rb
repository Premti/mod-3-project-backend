class QuestionsController < ApplicationController

    def index
        questions = Question.all
        render json: questions, :include => [:incorrect_answers, :correct_answer], :except => [:updated_at, :created_at]
        
    end 
end
