class SearchPage < SitePrism::Page
  set_url "https://www.google.co.uk/"
  set_url_matcher /google.co.uk\/?/

  element :search_field, "input[name='q']"
  element :search_button, "input[name='btnK']"
  element :google_logo, "img#hplogo"
  elements :search_result_titles, "h3.r a"
  elements :search_result_descriptions, "div.srg div.g div div.rc div.s span.st"

  def search_for_term(search_term)
    wait_until_search_field_visible
    search_field.set search_term
    google_logo.click
    wait_until_search_button_visible
    search_button.click
  end

  def get_all_search_results_titles
    arr = []
    wait_for_search_result_titles
    search_result_titles.each {|result| arr << result.text}
    arr
  end

  def get_all_search_results_descriptions
    arr = []
    wait_for_search_result_descriptions
    search_result_descriptions.each {|result| arr << result.text}
    arr
  end

end
