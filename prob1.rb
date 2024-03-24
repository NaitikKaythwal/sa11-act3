def extract_urls(text)
  pattern = /(?:https?|ftp):\/\/\S+(?=\b)/
  url = text.scan(pattern)
  url.flatten
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

p extract_urls(sample_text)
