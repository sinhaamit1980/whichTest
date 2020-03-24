Given(/^I am on the Television page$/) do
  television_landing_page.load
end

And(/^I can see option to filter the product$/) do
  expect(television_landing_page).to have_product_filter
end

When(/^I filter by brand '(.*)'$/) do|brand_name|
  television_landing_page.more_filter_button.click
  television_landing_page.filter_by_brand(brand_name)
end

Then(/^I can see product gallery filtered by brand '(.*)'$/) do|brand_name|
  television_landing_page.product_cards.each do|product|
    expect(product.product_brand.text).eql?(brand_name)
  end
end