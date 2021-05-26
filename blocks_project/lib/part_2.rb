def all_words_capitalized?(arr)
    arr.all? do |item|
        # item[0] == item[0].upcase && item[1..-1]==item[1..-1].downcase
        item.capitalize == item
    end
end

# def no_valid_url?(arr)
#     arr.none? do |item|
#         item.end_with?('.com','.net','.io','.org')
#     end
# end

def no_valid_url?(arr)
    valid_endings=['.com','.net','.io','.org']
    arr.none? do |url|
        valid_endings.any? { |ending| url.end_with?(ending) }
    end
end

def any_passing_students?(arr)
    arr.any? do |stu|
        stu[:grades].sum/(stu[:grades].size*1.0)>=75
    end
end