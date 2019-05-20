# frozen_string_literal: true

# app to sort webpages by number of views
class Webpages
  def initialize
    @arr = []
  end

  def run
    read_list
    p display_sort_by_most_page_views
    p display_sort_by_most_unique_views
  end

  def read_list
    File.readlines('webserver.log').each do |line|
      @arr << line.split
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
    @arr.group_by(&:first).map { |k, v| [k, v.count] }.sort.reverse.flatten
  end

  def sort_by_most_unique_views
    @arr.group_by(&:first).map { |k, v| [k, v.uniq.count] }.sort.reverse.flatten
  end
end
