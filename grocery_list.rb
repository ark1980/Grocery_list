
class List

        attr_accessor :name, :list, :items

        def initialize(name, date =Time.new)
            @name, @date = name.capitalize, date
            @list = []
        end

        def name
            puts "#{@name.capitalize}`s list, made on #{@date}."
        end

        # This mehtod has alredy made by attr_accessor
        # def list
        #     @list
        # end

        def add(item)
            @list << item.capitalize
        end 

        def delete
            input = gets.chomp.capitalize
            if @list.include?(input)
                @list.delete(input)
                puts "#{input} has removed from your list.\n#{@list}"
            else
                puts "The list does not include this itme.\nPlease enter correct item."
                input = gets.chomp.capitalize
            end
        end


        def show
            puts "You have #{@list.length} item on your list.\n#{@name}`s list = #{@list}"

        end

end

my_list = List.new("alireza")
my_list.name
my_list.list
my_list.add("ice cream")
my_list.add("beer")
my_list.add("potato")
my_list.add("corn")
my_list.add("bread")
my_list.show
# p my_list.list.length
my_list.delete
















