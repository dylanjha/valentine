class LetterMailer < ApplicationMailer

  def send_letter(letter)
    @letter = letter
    mail subject: "New valentine letter",
              to: @letter.recipient
  end

end
