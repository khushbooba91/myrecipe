require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
   def setup
       @recipe = Recipe.new(name:"handvooo", summary:"ajdasjdlajsdlkajsdlak", desc:"aanklsjdnlakjnsdlajknsdlkajsndlakjnsdlkajnasda")
   end  
   
   test "recipe shoud be valid" do
       assert @racipe.valid?
   end
   
    test "name shoud be valid" do
       @recipe.name = " "
       assert_not @racipe.valid?
    end
    test "name length shoud be valid" do
       @recipe.name = "a"*101
       assert_not @recipe.valid?
    end
    test "summary shoud be valid" do
      @recipe.summary = "b"*101
      assert_not @recipe.valid?
    end
  
end