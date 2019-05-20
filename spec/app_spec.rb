require 'app.rb' # frozen_string_literal: true

describe Webpages do
  it 'can display the list of webpages' do
    webpages = Webpages.new
    subject.read_list
    expect(webpages.read_list).to include("/help_page/1 126.318.035.038\n")
  end

  it 'sorts webpages by most page views' do
    webpages = Webpages.new
    webpages.read_list
    expect(webpages.display_sort_by_most_page_views).to include('/index', 82)
  end

  it 'sorts webpages by most unique views' do
    webpages = Webpages.new
    webpages.read_list
    expect(webpages.display_sort_by_most_unique_views).to include('/index', 23)
  end

  it 'runs app' do
    expect { subject.run }.not_to raise_error
  end
end
