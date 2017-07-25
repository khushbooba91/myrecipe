requre 'test_helper'

class ChefTest <ActiveSupport::TestCase
    def setup
        @chef = Chef.new(name:"khsuhb", email:"jk@gmail.com")
    end
    
    test "chef should be valid" do
        assert @chef.valid?
    end
    test "chef should be present" do
    
    end
    test "chef should be valid" do
        @chef.name = ""
        assert_not @chef.valid?
    end
    
    
end