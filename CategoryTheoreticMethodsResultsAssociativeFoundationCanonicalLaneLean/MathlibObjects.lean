import CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.CategoryTheory.Basic

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CategoryObject where
  carrier : Type
  categoryStructure : CategoryTheory.CategoryStruct carrier
  definitional : CategoryTheory.Category carrier

structure CategoricalAdmittedObject where
  object : CategoryObject
  hasLimits : Prop
  hasColimits : Prop
  yonedaEmbedding : Type
  yonedaTopology : TopologicalSpace yonedaEmbedding
  fullFaithful : Prop
  conclusion : fullFaithful

structure CategoryEndgameState where
  object : CategoricalAdmittedObject

def CategoricalWitnessClosed (O : CategoricalAdmittedObject) : Prop :=
  O.fullFaithful

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse