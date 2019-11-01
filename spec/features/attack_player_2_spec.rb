feature 'Attacking' do
  scenario 'see Player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Dave attacked Mittens'
  end
  scenario 'reduce Player 2 by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end

  scenario 'be attacked by Player 2' do
  sign_in_and_play
  click_button 'Attack'
  click_button 'OK'
  click_button 'Attack'
  expect(page).to have_content 'Mittens attacked Dave'
end
end
