require 'rails_helper'
# As a user
# When I visit "/"
# And I select "Colorado" from the dropdown
# And I click on "Locate Members from the House"
# Then my path should be "/search" with "state=CO" in the parameters
# And I should see a message "7 Results"
# And I should see a list of 7 the members of the house for Colorado
# And they should be ordered by seniority from most to least
# And I should see a name, role, party, and district for each member
RSpec.feature "searching for house members from a state" do
  it "returns a list of relevant candidates" do
    visit '/'
    select 'Colorado', :from => 'state'
    click_on "Locate Members of the House"

    expect(current_path).to eq("/search?state=CO")
    expect(page).to have_content("7 Results")
r  end
end
