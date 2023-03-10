class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
    @words = @contents.split(' ') 
    @current_reading_index = 0
  end

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @words.count
  end

  def reading_time(wpm) 
    return ((@words.count).to_f/wpm).ceil
  end

  def reading_chunk(wpm, minutes)
    current_words = wpm * minutes
    start_index = @current_reading_index
    end_index = start_index + (current_words - 1)
    if end_index < @words.count - 1
      return @words[start_index..end_index].join(' ')
      @current_reading_index += current_words
    else
      end_index = @words.count - 1
      return @words[start_index..end_index].join(' ')
      @current_reading_index = 0
    end   
    
  end  
end

