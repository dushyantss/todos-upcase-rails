require 'rails_helper'

feature 'User completes todo' do
  include Features

  scenario 'successfully' do
    sign_in
    create_todo('Buy milk')

    click_on 'Mark Complete'

    expect(page).to display_completed_todo('Buy milk')
  end
end
