require 'spec_helper'

describe "User" do
  describe "User page" do
    it "should have content 'To Do'" do
    	visit '/user'
      expect(page).to have_content('To Do')
    end
  end
end
