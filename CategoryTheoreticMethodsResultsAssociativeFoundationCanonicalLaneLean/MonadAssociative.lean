import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure MonadAssociativePackage where
  monadUnit : Type u -> Type v
  monadMultiplication : Type u -> Type v
  associativityLaw : Prop
  unitLawLeft : Prop
  unitLawRight : Prop
  kleisliComposition : Prop

structure MonadAssociativeEvidence (M : MonadAssociativePackage) where
  associativityLawClosed : M.associativityLaw
  unitLawLeftClosed : M.unitLawLeft
  unitLawRightClosed : M.unitLawRight
  kleisliCompositionClosed : M.kleisliComposition

def MonadAssociativeClosed (M : MonadAssociativePackage) : Prop :=
  M.associativityLaw ∧ M.unitLawLeft ∧ M.unitLawRight ∧ M.kleisliComposition

theorem monad_associative_closed_from_evidence (M : MonadAssociativePackage) (E : MonadAssociativeEvidence M) :
    MonadAssociativeClosed M := by
  exact And.intro E.associativityLawClosed (And.intro E.unitLawLeftClosed (And.intro E.unitLawRightClosed E.kleisliCompositionClosed))

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse