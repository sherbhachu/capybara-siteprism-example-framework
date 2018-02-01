Given(/^I have successfully navigated to the Google homepage$/) do
  @search_page = SearchPage.new
  @search_page.load
end

And(/^I enter "([^"]*)" as the search term$/) do |search_term|
  @search_page.search_for_term search_term
end

Then(/^I can see that All search result titles contain the word "([^"]*)"$/) do |word_to_check|
  all_search_results_titles = @search_page.get_all_search_results_titles
  all_search_results_titles.each {|title| expect(title.downcase).to include(word_to_check.downcase)}
end

Then(/^I can see that All search result descriptions contain the word "([^"]*)"$/) do |word_to_check|
  all_search_results_desc = @search_page.get_all_search_results_descriptions
  all_search_results_desc.each {|desc| expect(desc.downcase).to include(word_to_check.downcase)}
end
