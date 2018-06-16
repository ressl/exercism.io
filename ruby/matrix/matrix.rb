# Class matrix
class Matrix
  def initialize(num)
    @num = num
  end

  def create_matrix
    @num.split("\n").map { |x| x.split(' ').map(&:to_i) }
  end

  def rows
    create_matrix
  end

  def columns
    create_matrix.transpose
  end
end
