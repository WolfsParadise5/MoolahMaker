require 'space'

class Property < Space

    def initialize(name, price, housePrice, hotelPrice, rentAmount, rentHouseAmount, rentHotelAmount)
        super(name)
        @owner = "Bank"
        @PRICE = price
        @HOUSE_PRICE = housePrice
        @HOTEL_PRICE = hotelPrice
        @house_amount = 0
        @hotel_amount = 0
        @RENT_AMOUNT = rentAmount
        @RENT_HOUSE_AMOUNT = rentHouseAmount
        @RENT_HOTEL_AMOUNT = rentHotelAmount
    end

    def price
        @PRICE
    end

    def housePrice
        @HOUSE_PRICE
    end

    def hotelPrice
        @HOTEL_PRICE
    end

    def houseAmount
        @house_amount
    end

    def hotelAmount
        @hotel_amount

    def rentAmount
        @RENT_AMOUNT
    end

    def rentHouseAmount
        @RENT_HOUSE_AMOUNT
    end

    def rentHotelAmount
        @RENT_HOTEL_AMOUNT
    end

    def calcRent
        return @RENT_AMOUNT + (@house_amount * @RENT_HOUSE_AMOUNT) + (@hotel_amount * @RENT_HOTEL_AMOUNT)
    end       

end