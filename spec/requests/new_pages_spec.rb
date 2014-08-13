require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample'" do
      visit '/dummytest/new'
      expect(page).to have_content('sdf')
    end
  end
end