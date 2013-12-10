require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  before { visit root_path }

  subject { page }

  describe "Home Page1" do
    it { should have_content('Sample App') }

    it "should have the right title" do
      expect(page).to have_title("#{base_title}")
    end

    it "shoule not have a custom page title" do
      expect(page).not_to have_title('| Home')
    end
  end

  # describe "Help Page" do
  #   it "should have the content 'Help'" do
  #     visit static_pages_help_path
  #     expect(page).to have_content('Help')
  #   end

  #   it "should have the title 'Help'" do
  #     visit static_pages_help_path
  #     expect(page).to have_title("#{base_title} | Help")
  #   end
  # end

  # describe "About Page" do
  #   it "should have the content 'About Us'" do
  #     visit static_pages_about_path
  #     expect(page).to have_content('About Us')
  #   end

  #   it "should have the title 'About Us'" do
  #     visit static_pages_about_path
  #     expect(page).to have_title("#{base_title} | About Us")
  #   end
  # end

  # describe "Contact Page" do
  #   it "should hava the content 'Contact'" do
  #     visit static_pages_contact_path
  #     expect(page).to have_content 'contact'
  #   end

  #   it "should have the title 'Contact'" do
  #     visit static_pages_contact_path
  #     expect(page).to have_title("#{base_title} | Contact")
  #   end
  # end
end
