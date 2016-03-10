class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subscriptions

  def subscribed? schedule_id
    subscription = Subscription.where(schedule_id: schedule_id)
    subscription.empty? ? false : true
  end
end
