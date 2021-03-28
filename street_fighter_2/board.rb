def streetFighterSelection(fighters, position, moves)
  StreetFighterBoard.new(fighters, position).move(moves)
end

class StreetFighterBoard
  def initialize(characters, position = [0, 0])
    @line_numer, @row_numer = position
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
    @characters[@line_numer][@row_numer]
  end

  def up
    @line_numer -= 1 unless @line_numer == 0
  end

  def down
    @line_numer += 1 unless @line_numer == 1
  end

  def left
    if @row_numer == 0
      @row_numer = 5
    else
      @row_numer -= 1
    end
  end

  def right
    if @row_numer == 5
      @row_numer = 0
    else
      @row_numer += 1
    end
  end

  def method_missing(method, *args, &block)
    raise 'Whaddya doing? 👀'
  end
end
