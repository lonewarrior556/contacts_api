class Contact < ActiveRecord::Base
  validates :email, presence: true
  validates :user_id, presence: true
  validates :name, presence: true

  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many :contact_shares

  has_many :shared_users, :through => :contact_shares, :source => :user

end
