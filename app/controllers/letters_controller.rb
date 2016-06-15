class LettersController < ApplicationController

  def index
  end

  def create
    if params[:letter][:recipient].blank? || params[:letter][:message].blank?
      redirect_to root_url, flash: {error: "Invalid Letter"}
    else 
      letter = Letter.new({
        poem: params[:letter][:poem],
        recipient: params[:letter][:recipient],
        message: params[:letter][:message],
      })
      letter.save
      redirect_to letters_path, flash: {alert: "Letter has been sent"}
    end
  end

end
