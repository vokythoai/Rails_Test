class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :welcome_email
  attr_accessor :login
  devise :database_authenticatable, :async, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,:authentication_keys => [:login]
def welcome_email
  Delayed::Job.enqueue AccountMailerJob.new(self)
end
def login=(login)
  @login = login
end

def login
  @login || self.user_name || self.email
end
def self.find_for_database_authentication(warden_conditions)
  conditions = warden_conditions.dup
  if login = conditions.delete(:login)
    where(conditions.to_hash).where(["lower(user_name) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  elsif conditions.has_key?(:user_name) || conditions.has_key?(:email)
    where(conditions.to_hash).first
  end
end
end