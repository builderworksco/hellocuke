class HelloworldPage
  include PageObject

  page_url "http://localhost:8000/app/helloworld.html"
# page_url "file:///home/neopragma/workspace/hellocuke/app/helloworld.html"

  form :language_form, :id => "language_form_1"
  select :selector, :id => "selector"
  div :greeting, :id => "greeting"
  h1 :no_results, :id => "noResultsTitle"

end
