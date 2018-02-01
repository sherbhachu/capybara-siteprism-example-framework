After do |scenario|
  if scenario.failed?
    page.driver.browser.manage.window.maximize
    page.driver.browser.save_screenshot("reports/#{scenario.name}.png")
    encoded_img = page.driver.browser.screenshot_as(:base64)
    embed("data:image/png;base64,#{encoded_img}",'image/png', scenario.name)
  end
end
