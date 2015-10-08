ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22,
"Spot" => 237 }

lowest = ages.values.sort.first

puts ages.select { |key, value| value == lowest }

