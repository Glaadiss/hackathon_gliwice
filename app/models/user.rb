class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :notifications
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'
  has_many :sended_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_one :company

  def messages
    received_messages + sended_messages
  end

  def full_name
    "#{firstname} #{lastname}"
  end
end
