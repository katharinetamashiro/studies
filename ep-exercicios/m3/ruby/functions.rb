def factorial (n)
    if (n == 0)
        1
    else
        n * factorial(n-1)
    end        
    
end

def reverse (text)
    n = (text.size)-1
    i=0
    text_array =[]
    text.split("")
    
    while (i < (text.size)) do
        text_array[i] = text[n]
        i += 1
        n -= 1
    end
        return text_array.join("")
end

def sort (array)
    i=0

    while (i < array.size) do
        j=i+1
        while (j < array.size) do
            if (array[i] > array[j])
                array[i], array[j] = array[j], array[i]
            end
            j+=1
        end
        i +=1
    end
    
    return array
end

def upcase (text)
    alphabet = { 'a' => 'A','b' => 'B', 'c' => 'C', 'd' => 'D', 'e' => 'E', 'f' => 'F', 'g' => 'G', 'h'=> 'H', 'i' => 'I', 'j'=> 'J', 'k'=> 'K', 'l'=> 'L', 'm' => 'M', 'n' => 'N', 'o' => 'O', 'p' => 'P', 'q'=> 'Q', 'r'=> 'R', 's'=> 'S', 't'=>'T', 'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' => 'X', 'y' => 'Y', 'z'=> 'Z', 'A' => 'A', 'B' => 'B', 'C' => 'C', 'D' => 'D', 'E' => 'E', 'F' => 'F', 'G' => 'G', 'H' => 'H', 'I' => 'I', 'J' => 'J', 'K' => 'K', 'L' => 'L', 'M' => 'M', 'N' => 'N', 'O' => 'O', 'P' => 'P', 'Q' => 'Q', 'R' => 'R', 'S' => 'S', 'T' => 'T', 'U' => 'U', 'V' => 'V', 'W' => 'W', 'X' => 'X', 'Y' => 'Y', 'Z' => 'Z', " " => " "}
    up=[]
    i=0
    while (i < text.size) do
        char = text[i]
        up[i] = alphabet[char]
        i+=1
    end
    return up.join("")
end
