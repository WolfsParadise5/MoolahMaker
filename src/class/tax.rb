require 'space'

class Tax < Space

    def initialize(taxPercentWallet,taxPercentProp,taxPercentHouse,taxPercentSkyscraper)
        @taxPercentWallet = taxPercentWallet
        @taxPercentProp = taxPercentProp
        @taxPercentHouse = taxPercentHouse
        @taxPercentSkyscraper = taxPercentSkyscraper
    end

    def calcTax(walletValue, totalHouse, houseVal, totalSkyscraper, skyscraperVal, totalPropVal)
        @totalWallet = walletValue * taxPercentWallet
        @totalHouse = houseVal * totalHouse * taxPercentHouse
        @totalSkyscraper = skyscraperVal * totalSkyscraper * taxPercentSkyscraper
        return @totalWallet + @totalHouse + @totalSkyscraper
    end
end