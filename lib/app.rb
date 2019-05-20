class Webpages
  def initialize
    @webpages = []
  end
  
  def read_list
    File.readlines('webserver.log').each do |line|
      @webpages << line.split
    end
  end

  def sort_by_most_page_views
    @webpages.group_by(&:first).map{|k,v| [k, v.count]}.sort.reverse!.flatten
  end
end