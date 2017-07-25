class Chef < ActiveRecord::Base
   has_many:recipes
   before_save {self.email = self.email.downcase}
   validates :name, presence:true, length: {minimum:5, maximum:10}
   validates :email, presence:true, length: {minimum:5, maximum:100}, uniqeness:{case_sensitive:false}
end

#recipe = chef.recipes.build(name:"asdad", summary="", desc="")
#chef.errors.full_messages --> email has already taken