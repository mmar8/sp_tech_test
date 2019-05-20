require 'app.rb'

describe Webpages do
  it 'can display the list of webpages' do
    webpages = Webpages.new
    subject.read_list
    expect(webpages.read_list).to include("/help_page/1 126.318.035.038\n")
  end
end
