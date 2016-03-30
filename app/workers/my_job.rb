

NewsletterJob = Struct.new(:text, :emails) do
  def perform
    emails.each { |e| NewsletterMailer.deliver_text_to_email(text, e) }
  end
end