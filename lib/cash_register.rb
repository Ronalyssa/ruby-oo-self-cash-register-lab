require "pry"

class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction

    

    def initialize( discount=0)
        @total = 0
        @discount = discount
        @items = []
       
    end

    def discount
        @discount = 20
    end
    
    # def total(total)
    #     @total = total
    # end

    def add_item(title,price,quantity= 1)
        @total += price * quantity
        quantity.times do
            @items << title
        end
    end

    def apply_discount
       #binding.pry
        discount_amount = @total * (discount / 100.00)
        @total = @total - discount_amount
        "After the discount, the total comes to $#{@total}."
    end

    # def items(title)
    #     @items << title
    # end

    # def void_last_transaction(item, price)
    #     if items !== 0
    #         @total -= price
    #     else
    #         @total = 0
    #     end

    #end


end
