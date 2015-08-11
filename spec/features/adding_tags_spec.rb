require_relative '../../app/models/tag'


feature 'Adding tags' do

  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.makersacademy.com/'
    fill_in 'title', with: 'Makers Academy'

    fill_in 'tag',  with: 'education' # for now, let's input a single tag value.
    #later on we can go for multiple tags.

    click_button 'Create Link'
    link = Link.first
    expect(link.tags).to include('education')
  end

end