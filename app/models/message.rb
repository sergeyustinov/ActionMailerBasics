class Message
  include ActiveModel::Model

  attr_accessor :subject, :email, :message

  validates :subject, :message, presence: true
  validates_email_format_of :email
  
  def send_message
    return unless valid?

    MessageMailer.new_message(self).deliver_now
  end
end
