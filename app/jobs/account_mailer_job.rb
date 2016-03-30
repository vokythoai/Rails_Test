AccountMailerJob= Struct.new(:accounts) do
  def perform
   AccountMailer.welcome(accounts).deliver
  end
end
