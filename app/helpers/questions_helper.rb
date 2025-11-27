module QuestionsHelper
  def question_header(question)
    if question.persisted?
      "Edit #{question.test} Question"
    else
      "Create New #{question.test} Question"
    end
  end

  def show_questions
    questions = @test.questions.pluck(:body)
    questions.join("\n")
  end
end
