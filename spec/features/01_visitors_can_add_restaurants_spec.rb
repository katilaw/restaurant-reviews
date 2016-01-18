require "rails_helper"

# [√] A restaurant must have a name, address, city, state, and zip code. It can optionally have a description.
# [√] Visiting the `/restaurants/new` path should display a form for creating a new restaurant.
# [√] When adding a new restaurant, if I fill out the form correctly, I should see the page for the newly created restaurant.
# [√] When adding a new restaurant, if I fill out the form incorrectly and submit the form, I should see the form and be displayed the validation errors.


feature "visitors can add restaurants" do
  scenario "visitor adds new restaurant successfully" do

    visit new_restaurant_path
    expect(page).to have_content "New Restaurant Form"

    fill_in 'Name', with: "Figaro's"
    fill_in 'Address', with: "105 Beach St"
    fill_in 'City', with: "Boston"
    fill_in 'State', with: "Massachusetts"
    fill_in 'Zip', with: "02111"
    fill_in 'Description', with: "This old-school-style Italian deli serves breakfast fare & a range of sandwiches, roll-ups & salads."

    click_button "Add Restaurant"

    expect(page).to have_content "Restaurant added successfully"
    expect(page).to have_content "Figaro's"
    expect(page).to have_content "This old-school-style Italian deli serves breakfast fare & a range of sandwiches, roll-ups & salads."
  end

  scenario "visitor does not provide proper information for a restaurant" do
    visit new_restaurant_path

    click_button "Add Restaurant"
    expect(page).to have_content "Name can't be blank. Address can't be blank. City can't be blank. State can't be blank. Zip can't be blank. Zip is the wrong length (should be 5 characters). Zip is not a number"
  end
end
