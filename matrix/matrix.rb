require 'pry'
class Matrix
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def rows
    rows = []
    split = @string.split("\n")
    split.each do |row|
      rows << row.split.map(&:to_i)
    end
    rows
  end

  def columns
    columns = {}
    rows.map do |row|
      row.each_with_index do |int, index|
        if columns[index]
          columns[index] << int
        else
          columns[index] = [int]
        end
      end
    end
    columns
  end

end
