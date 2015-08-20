class HelloworldPage
  include PageObject

  page_url "http://localhost:8000/"

  form :language_form, id: "language_form_1"
  select :selector, id: "selector"
  div :greeting, id: "greeting"
  h1 :no_results, id: "noResultsTitle"
  a :greeting_clearer, id: "greeting_clearer"

  def clear_greeting
    self.link_elements.first.click
  end

end
