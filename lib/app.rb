class Webpages
  def initialize
    @webpages = []
  end
  def run
    read_list
    p display_sort_by_most_page_views
    p display_sort_by_most_unique_views
  end
  def read_list
    File.readlines('webserver.log').each do |line|
      @webpages << line.split
    end
  end

  def display_sort_by_most_page_views
    sort_by_most_page_views
  end

  def display_sort_by_most_unique_views
    sort_by_most_unique_views
  end 

  private 
  def sort_by_most_page_views
    @webpages.group_by(&:first).map{|k,v| [k, v.count]}.sort.reverse!.flatten
  end

  def sort_by_most_unique_views
    @webpages.group_by(&:first).map{|k,v| [k, v.uniq.count]}.sort.reverse!.flatten
  end
end