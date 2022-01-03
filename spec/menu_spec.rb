require 'menu'

describe Menu do
    it "can print dishes" do
        dbl_print_menu = double("Menu with dishes", :name => "Rice", :price => "£2.00")
        expect(dbl_print_menu.name).to eq("Rice")
        expect(dbl_print_menu.price).to eq ("£2.00")
    end
end