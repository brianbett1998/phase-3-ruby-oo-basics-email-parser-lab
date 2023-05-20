# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    unique_emails = remove_duplicates(emails)
    parse_emails(unique_emails)
  end

  private

  def remove_duplicates(emails)
    emails.split(/[,\s]+/).uniq
  end

  def parse_emails(emails)
    emails.map(&:strip)
  end
end
