class ConceptualTag 
  include Neo4j::ActiveNode
  property :name, type: String

  has_many :out, :related, type: :RELATED, model_class: ConceptualTag
  has_many :in, :tagged_products, type: :TAGGED, model_class: UshioProduct


end
