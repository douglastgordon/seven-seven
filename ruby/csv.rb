module ActsAsCSV
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  class CsvRow
    def initialize(values, headers)
      @values = values
      @headers = headers
    end

    def method_missing(header_name)
      index = @headers.index(header_name.to_s)
      @values[index]
    end
  end

  module InstanceMethods
    def read
      @csv_contents =[]
      filename = self.class.to_s.downcase + ".txt"
      file = File.new(filename)
      @headers = file.gets.chomp.split(", ")

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    def each(&block)
      @csv_contents.each do |contents|
        row_object = CsvRow.new(contents, @headers)
        block.call row_object
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end
  end
end

class RubyCsv
  include ActsAsCSV
  acts_as_csv
end

m = RubyCsv.new
m.each {|row| puts row.one}
m.each {|row| puts row.two}
