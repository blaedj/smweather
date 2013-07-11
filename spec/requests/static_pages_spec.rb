require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }

    # test for existence
    it "should have the content 'SMWeather' " do
      expect(page).to have_content('SMWeather')
    end

    # test for sign-up
    it "should have links to sign-up page" do
      expect(page).to have_link('Create Account', href: signup_path )
    end

    # TODO test for 'text me weather'
    it "should have button to text weather " do
      expect(page).to have_selector('button', text:'Text me the weather')
    end

    # TODO test for Login button

    # TODO test for 'forgot password'


  end

end
