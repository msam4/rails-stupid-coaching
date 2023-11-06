class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]

    @coach =
      if params[:answer] === "I am going to work"
        "Great!"
      elsif params[:answer].include?("?") === "?"
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
