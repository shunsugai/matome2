class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless url_valid?(value)
      record.errors[attribute] << (options[:message] || 'must be a valid URL') 
    end
  end

  private

  def url_valid?(url)
    uri = URI.parse(url) rescue false
    uri.kind_of?(URI::HTTP) || uri.kind_of?(URI::HTTPS)
  end
end