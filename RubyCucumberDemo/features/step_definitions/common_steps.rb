假如 /转到新窗口/ do
	page.driver.browser.close
	page.driver.browser.switch_to.window(page.driver.window_handles.last)
end

那么(/^:我可以在页面上看到如下信息:$/) do |table|
	sleep 1
	table.hashes.each do |t|
		expect(page).to have_text(t['文字'])
	end
	sleep 1
end

