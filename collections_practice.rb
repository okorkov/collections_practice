def sort_array_asc(array)
    result = array.clone
    result.sort
end

def sort_array_desc(array)
    result = array.clone
    result.sort.reverse
end

def sort_array_char_count(strings)
    result = strings.clone
    strings.sort {|a, b| a.length <=> b.length}
end

def swap_elements(array)
    result = array.clone
    array[1] = result[2]
    array[2] = result[1]
    array
end

def swap_elements_from_to(array, from, to)
    result = array.clone
    array[to] = result[from]
    array[from] = result[to]
    array
end

def reverse_array(array)
    result = array.clone
    result.reverse
end

def kesha_maker(array)
    result = Array.new
    array.each do |string|
        string[2] = '$'
        result << string
    end
    result
end

def find_a(array)
    array.select {|string| string.start_with?('a')}
end

def sum_array(array)
    array.inject {|sum, number| sum + number}
end

def add_s(array)
    result = Array.new
    array.each_with_index.collect do |element, index| 
      if index != 1
        result << "#{element}s"
      else
        result << element
      end
    end
    result
end