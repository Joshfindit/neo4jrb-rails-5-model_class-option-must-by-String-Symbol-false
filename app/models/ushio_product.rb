class UshioProduct 
  include Neo4j::ActiveNode
  property :name, type: String
  property :description, type: String
  property :sku, type: String

  #has_many :out, :tagged, type: :PRODUCT_TAGGED, model_class: Product                                       
  has_many :out, :tagged, type: :PRODUCT_TAGGED, model_class: ConceptualTag                                  
  #has_many :out, :related, type: :RELATED, model_class: ConceptualTag                                       
  has_many :both, :related, type: :RELATED, model_class: UshioProduct       

end
