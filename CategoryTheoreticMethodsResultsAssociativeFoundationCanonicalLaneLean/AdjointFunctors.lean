import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure AdjointFunctors where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  unit : ∀ (A : Type u), A → rightAdjoint (leftAdjoint A)
  counit : ∀ (B : Type v), leftAdjoint (rightAdjoint B) → B
  triangleIdentities : Prop

structure AdjointFunctorsEvidence (Adj : AdjointFunctors) where
  unitClosed : Adj.unit
  counitClosed : Adj.counit
  triangleIdentitiesClosed : Adj.triangleIdentities

def AdjointFunctorsClosed (Adj : AdjointFunctors) : Prop :=
  Adj.unit True ∧ Adj.counit True ∧ Adj.triangleIdentities

theorem adjoint_functors_closed_from_evidence (Adj : AdjointFunctors) (E : AdjointFunctorsEvidence Adj) :
    AdjointFunctorsClosed Adj := by
  refine ⟨?_, ?_, ?_⟩
  · exact E.unitClosed True
  · exact E.counitClosed True
  · exact E.triangleIdentitiesClosed

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse