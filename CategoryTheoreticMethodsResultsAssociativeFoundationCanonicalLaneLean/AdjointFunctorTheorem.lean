import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u -> Type v
  rightAdjoint : Type u -> Type v
  adjunctionIso : Prop
  unitCounit : Prop
  leftAdjointTerm : leftAdjoint
  rightAdjointTerm : rightAdjoint
  adjunctionIsoTerm : adjunctionIso
  unitCounitTerm : unitCounit

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  adjunctionIsoClosed : A.adjunctionIso
  unitCounitClosed : A.unitCounit

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.adjunctionIso ∧ A.unitCounit

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.adjunctionIsoClosed E.unitCounitClosed

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse
