def streetFighterSelection(fighters, position, moves)
  StreetFighterBoard.new(fighters, position).move(moves)
end

class StreetFighterBoard
  def initialize(characters, position = [0, 0])
    @column_number, @row_number = position
    @characters = characters
  end

  def move(moves)
    moves.map do |move|
      send(move)
      current_character
    end
  end

  private

  def current_character
    @characters[@column_number][@row_number]
  end

  def up
    @column_number = 0
  end

  def down
    @column_number = 1
  end

  def left
    if @row_number == 0
      @row_number = 5
    else
      @row_number -= 1
    end
  end

  def right
    if @row_number == 5
      @row_number = 0
    else
      @row_number += 1
    end
  end

  def method_missing(method, *args, &block)
    raise 'Whaddya doing? 👀'
  end
end
