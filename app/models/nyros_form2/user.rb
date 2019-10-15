module NyrosForm2
  class User < ApplicationRecord
  	validates :email,uniqueness: true, format: {
	    with: URI::MailTo::EMAIL_REGEXP, 
	    message: '*Please Enter Your Email'
	  }
    validates_presence_of :name,  message: "*Please Enter Your Name"
    # svalidates_presence_of :mobile, message: "*Please Enter Your Mobile"
    validates_format_of :mobile, :with =>  /\d[0-9]\)*\z/ , :message => "*Please Enter a Valid Mobile Number"



  end
end
