require 'app.rb'

describe Webpages do
  it 'can display the list of webpages' do
    webpages = Webpages.new
    subject.read_list
    expect(webpages.read_list).to include("/help_page/1 126.318.035.038\n")
  end

  it 'sorts webpages by most page views' do
    webpages = Webpages.new
    webpages.read_list
    expect(webpages.sort_by_most_page_views).to include("/index", 82)
  end

  it 'sorts webpages by most unique views' do
    webpages = Webpages.new
    webpages.read_list
    expect(webpages.sort_by_most_unique_views).to include("/index", 23)
  end
        
end
