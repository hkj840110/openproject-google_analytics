require 'spec_helper'

feature "Google analytics", :type => :feature do
  context 'when track number is provided' do
    before do
      OpenProject::Configuration['ga_track_code'] = 'qwerty123'
    end

    scenario "ga script is displayed" do
      visit root_url

      expect(page).to have_css("span.ga_analytics")
    end
  end

  context 'when track number is not provided' do
    before do
      OpenProject::Configuration['ga_track_code'] = nil
    end

    scenario "ga script is missing" do
      visit root_url

      expect(page).to_not have_css("span.ga_analytics")
    end
  end
end
