require 'spec_helper'

describe "signing in through linkedin", type: :feature do
  it "signs me in/out" do
    visit '/'
    click_link 'Login'
    click_link 'Logout'

    page.should have_content "Login"
  end
end
