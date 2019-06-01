# frozen_string_literal: true

module ListsHelper
  def make_title_case(name)
    stop_words = %w[a an and the or for of nor]
    name.split(' ').each_with_index.map { |word, index| stop_words.include?(word) && index > 0 ? word : word.capitalize }.join(' ')
  end
end
