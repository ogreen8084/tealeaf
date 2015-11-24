def concat(str)
  begin
    puts str + ' world'
  rescue TypeError => e
    logger.log e.message
    sleep(5)
    retry

  ensure

  end
end

concat('hello')
concat(2)
