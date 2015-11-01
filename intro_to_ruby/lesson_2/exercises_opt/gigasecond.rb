

class Gigasecond
  SECONDS_IN_DAY = 60 * 60 * 24
  DAYS_IN_GIGASECONDS = 1_000_000_000


  def self.from(dt)
    dt + DAYS_IN_GIGASECONDS
  end

end