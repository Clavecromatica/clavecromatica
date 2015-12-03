class DiscoMailer < ActionMailer::Base
  default from: "griselda.011112@gmail.com"
  def  new_disco(disco)
    @disco = disco
      
    User.all.each do |user|
      mail(to: user.email, subject: "nuevo disco")
      
    end
  end
end
