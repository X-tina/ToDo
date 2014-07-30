require 'spec_helper'

describe "Users" do
  describe "User page" do
    it "should have content 'You have'" do
    	expect(page).to have_content('You have')
    end
  end
end
