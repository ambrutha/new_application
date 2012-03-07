class UserMailer < ActionMailer::Base
  default :from => "ambrutha@railsfactory.org"
def send_mail(user)
@user=user
@u=@user.vericode
mail( :to => " #{user.email}", :subject =>"welcome")
end
def sent(x)
@x=x
mail( :to => " <#{x}>", :subject =>"welcome")
end
def send_email(u)
#@u=@user.vericode
mail( :to => " #{u}", :subject =>"welcome")
end
end
