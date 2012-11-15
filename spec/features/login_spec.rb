require 'spec_helper'

describe "signing in through linkedin", type: :feature do
  it "signs me in" do
    visit '/'
    click_link 'Login'

    page.should have_content "Logout"
  end
end
