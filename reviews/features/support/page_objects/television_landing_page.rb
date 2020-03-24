class TelevisionLandingPage < SitePrism::Page

  set_url '/reviews/televisions'

  element :product_filter, 'aside[data-test-element="product-filters"]'
  element :more_filter_button, 'button[data-which-id="more-filters"]'
  element :lg_brand_checkbox, 'div[data-which-id="sticky-facets-container"] label[for="brands_lg"]'
  element :samsung_brand_checkbox, 'div[data-which-id="sticky-facets-container"] label[for="brands_samsung"]'
  element :filter_done_button, 'div[data-which-id="more_filters-filter-summary"] button[data-which-id="done-button"]'

  sections :product_cards, 'ul[data-test-element="product-list"] li#product-card-wrapper div[data-which-id="product-card"]' do
    element :product_brand, 'div[data-which-id="manufacturer-model"] span:nth-child(1)'
    element :model_number, 'div[data-which-id="manufacturer-model"] span:nth-child(2)'
    element :product_image, 'img[data-test-element="product-image"]'
  end

  def filter_by_brand(brand_name)
    case brand_name
      when 'LG'
        Capybara.scroll_to(Capybara.find('div[data-which-id="sticky-facets-container"] input#brands_lg'), align: :center)
        lg_brand_checkbox.click
      when 'Samsung'
        Capybara.scroll_to(Capybara.find('div[data-which-id="sticky-facets-container"] input#brands_samsung'), align: :center)
        samsung_brand_checkbox.click
    end
    wait_until {filter_done_button.visible?}
    filter_done_button.click
  end

end


