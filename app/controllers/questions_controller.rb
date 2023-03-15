class QuestionsController < ApplicationController
  before_action :find_question, only: %i[show destroy]
  before_action :find_test, only: %i[index create]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    questions = @test.questions.pluck(:body)
    render plain: questions.join("\n")
  end

  def show
    render plain: "#{@question.body}"
  end

  def new
  end

  def create
    question = @test.questions.build(question_params)
    if question.save
      render plain: 'Question successfully created'
    else
      render plain: 'Question was not created due to incorrect input form'
    end
  end

  def destroy
    @question.destroy
    render plain: 'Question deleted'
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def find_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Question not found'
  end
end
