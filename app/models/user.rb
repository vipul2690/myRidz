class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sales_managers, class_name: 'User', foreign_key: 'sales_head_id'
  belongs_to :sales_head, class_name: 'User'
end
