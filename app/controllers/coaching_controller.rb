class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

  def coach_answer(query)
    if query == "I am going to work right now!"
      answer = "Ok"
    elsif query.include?("?")
      answer = "Silly question"
    else
      answer = "I don't care!"
    end
  end
end
