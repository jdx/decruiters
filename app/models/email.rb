class Email
  include Mongoid::Document

  has_one :user

  field :subject, type: String
  field :body, type: String
  field :from, type: String
  field :spam_score, type: String
  field :spam_report, type: String
end
