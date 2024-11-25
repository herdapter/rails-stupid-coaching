class QuestionsControllesController < ApplicationController
  attr_reader :reponse
  def ask
  end
  def answer
    @reponse = ""
    if params[:ask] == "I am going to work"
      @reponse = "Great!"
    elsif params[:ask].include?("?")
      @reponse = "Silly question, get dressed and go to work!"
    else
      @reponse = "I don't care, get dressed and go to work!"
    end
  end
end
