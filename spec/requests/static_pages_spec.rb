require 'rails_helper'

describe "Static pages" do
  subject { page }
  let(:base_title) { "RoR" }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title("#{base_title} | Home")}
  end

  describe "Help page" do
    before { visit help_path }
  	it { should have_content('Help') }
    it { should have_title("#{base_title} | Help")}
  end

  describe "About page" do
    before { visit about_path }
  	it { should have_content('About Us') }
    it { should have_title("#{base_title} | About")}
  end
end