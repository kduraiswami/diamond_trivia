class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create { |admin| admin.send_reset_password_instructions }

  def password_required?
  	new_record? ? false : super
  end

  devise :database_authenticatable, 
  :recoverable, :rememberable, :trackable, :validatable
  
end
