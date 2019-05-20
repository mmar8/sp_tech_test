class Webpages
  def read_list
    @webpages = []
    File.readlines('webserver.log').each do |line|
      @webpages << line.split
    end
  end
end