require 'pry'
require './candidates'
require './filters'

def qualified_candidates(candidates)
  puts "Candidates that meet your specs:"

  qualified = candidates.select do |c|
    experienced?(c)
    has_enough_github_pts?(c) &&
    has_right_languages?(c) &&
    applied_within_15_days?(c) &&
    is_of_age?(c)
  end
end

pp qualified_candidates(@candidates)