class Rakutenclip < ActiveRecord::Base
  def show
    search_items(item_code)
    puts("---- show")
  end
end
