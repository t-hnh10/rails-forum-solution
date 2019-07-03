class QuestionsController < ApplicationController

    def index
        redirect_to root_path
    end
    
    def show
        @question = Question.find(params[:id])

        @answers = @question.answers.order(created_at: :desc)
    end

    def create
        @question = Question.new(question_params)
        if @question.valid? 
            @question.save
            redirect_to Question.last 
        end
 end
 

    private
    def question_params
        params.require(:question).permit(:email, :body)
    end
end