class Letter < ActiveRecord::Base

  after_create :send_letter

  private

  def send_letter
  end

end
