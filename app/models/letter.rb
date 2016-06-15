class Letter < ActiveRecord::Base

  after_create :send_email

  private

  def send_email
    LetterMailer.send_letter(self).deliver_now
  end

end
