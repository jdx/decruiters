class Email
  include Mongoid::Document

  belongs_to :user

  field :subject, type: String
  field :body, type: String
  field :from, type: String
end
