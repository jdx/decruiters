class Email
  include Mongoid::Document

  has_one :user

  field :subject, type: String
  field :body, type: String
  field :from, type: String
end
