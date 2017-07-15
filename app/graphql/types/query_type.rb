Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :movie, Types::MovieType do
   argument :id, !types.ID
   resolve -> (obj, args, ctx) {
     Movie.find(args[:id])
   }
 end

 field :actor, Types::ActorType do
   argument :id, !types.ID
   resolve -> (obj, args, ctx) {
     Actor.find(args[:id])
   }
 end
end
