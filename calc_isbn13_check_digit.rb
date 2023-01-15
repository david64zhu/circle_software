def calc_isbn13_check_digit(fst_12_digits)
    str_12_digits = fst_12_digits.is_a?(String) ? fst_12_digits : fst_12_digits.to_s

    return nil if !/^\d{12}$/.match?(str_12_digits)

    sum = 0
    str_12_digits.split(//).each_with_index do |ele, ind|
        sum += ind.even? ? ele.to_i * 1 : ele.to_i * 3
    end

    remainder = sum % 10
    remainder == 0 ? 0 : 10 - remainder
end


# p calc_isbn13_check_digit('978014300723')
# p calc_isbn13_check_digit(978014300723)
