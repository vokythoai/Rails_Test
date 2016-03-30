class AccountMailer < ApplicationMailer
    def welcome(account)
      mail(to: "vokythoai@gmail.com",subject: "welcome to new",content_type: "text/html")
    end
end
