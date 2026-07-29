import HautevilleHouse.CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure CategoryObject where
  carrier : Type u
  categoryStructure : Prop
  limitsExist : Prop
  colimitsExist : Prop
  yonedaEmbedding : Prop

structure CategoryAdmittedObject where
  object : CategoryObject
  finiteLimitsExist : Prop
  finiteColimitsExist : Prop
  yonedaFullFaithful : Prop
  adjointFunctorFreeTheorem : Prop
  monadicityTheorem : Prop
  conclusion : finiteLimitsExist ∧ finiteColimitsExist ∧ yonedaFullFaithful ∧ adjointFunctorFreeTheorem ∧ monadicityTheorem

def CategoryObjectClosed (O : CategoryAdmittedObject) : Prop :=
  O.finiteLimitsExist ∧ O.finiteColimitsExist ∧ O.yonedaFullFaithful ∧ O.adjointFunctorFreeTheorem ∧ O.monadicityTheorem

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse