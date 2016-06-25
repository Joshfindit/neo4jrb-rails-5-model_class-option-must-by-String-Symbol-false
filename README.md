# neo4jrb-rails-5-model_class-option-must-by-String-Symbol-false

Created for figuring out why this error is happening:


```
ArgumentError in UshioProductsController#index
model_class option must by String, Symbol, false, nil, or an Array of Symbols/Strings (was UshioProduct(description: String, name: String, sku: String)) (Class#tagged_products)

Extracted source (around line #6):
              

  has_many :out, :related, type: :RELATED, model_class: ConceptualTag
  has_many :in, :tagged_products, type: :TAGGED, model_class: UshioProduct


end

Rails.root: /Users/Temp/Freshagain.Templated

Application Trace | Framework Trace | Full Trace
app/models/conceptual_tag.rb:6:in `<class:ConceptualTag>'
app/models/conceptual_tag.rb:1:in `<top (required)>'
app/models/ushio_product.rb:8:in `<class:UshioProduct>'
app/models/ushio_product.rb:1:in `<top (required)>'
app/controllers/ushio_products_controller.rb:7:in `index'
Request

Parameters:

None
Toggle session dump
Toggle env dump
Response

Headers:

None
```
