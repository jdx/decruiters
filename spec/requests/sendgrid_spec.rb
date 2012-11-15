require 'spec_helper'

describe "Sendgrid" do
  describe "POST /sendgrid" do
    it "Records an email" do
      user = FactoryGirl.create(:user)
      expect { post('/sendgrid', {
          to: "#{user.id}@email.com",
          from: user.email_addresses.first
        })
      }.to change(user.emails, :count)
        .from(0)
        .to(1)
    end
  end
end
