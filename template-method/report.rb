class Report
  def initialize
    @title = '月次報告'
    @text = %w(順調 最高の調子)
  end

  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  def output_body
    @text.each do |line|
      output_line(line)
    end
  end

  def output_start
  end

  def output_head
    output_line(@title)
  end

  def output_body_start
  end

  def output_line
    raise 'Called abstract method: output_body'
  end

  def output_body_end
  end

  def output_end
  end
end