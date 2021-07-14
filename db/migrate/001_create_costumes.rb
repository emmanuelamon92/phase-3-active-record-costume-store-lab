# Create a class and inherit from ActiveRecord::Migration

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec

# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.

# what are we trying to do
# create a table called costumes
# id always included with ActiveRecord

class CreateCostumes < ActiveRecord::Migration[5.2]
    #method called change first
    def change
        # combines up and down
        # what are we doing...name of block...t stands for table...t.datatype 
        # name of our columns
        create_table :costumes do |t|
            t.string :name
            t.string :size
            t.string :image_url
            t.float :price
            #created at timestamp and updated at timestamp
            t.timestamps
        end
    end

    # # will just use change^^
    # def up
    #     # method to be run when rake db:rollback is executed
    # end
    # def down
    #     # method to be run when rake db:migrate is executed
    # end
end

