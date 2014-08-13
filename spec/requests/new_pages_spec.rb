require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/dummytest/new'
      expect(page).to have_content('Sample App')
    end
  end
end