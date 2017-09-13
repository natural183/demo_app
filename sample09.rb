 「本」に関するクラス
class Book
  attr_accessor :title, :author, :page, :publisher, :number

  def initialize(title, author, page, publisher, number)
    @title = title
    @author = author
    @page = page
    @publisher = publisher
    @number = number
  end

  def can_borrow?
    if @number > 0
      "貸出可能です。"
    else
      "貸出できません。"
    end
  end

end

puts ginga_tetsudo = Book.new("銀河鉄道の夜", "宮沢賢治", 130, "ABC文庫", 0)
puts ginga_tetsudo.can_borrow?
  