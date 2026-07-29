import CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean.UniversalConstruction

/-!
# Adjoint Functor Package
-/

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure AdjointFunctorPackage (C D : CategoryObject) where
  leftAdjoint : C.carrier → D.carrier
  rightAdjoint : D.carrier → C.carrier
  adjunctionUnit : Prop
  adjunctionCounit : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence {C D : CategoryObject} (A : AdjointFunctorPackage C D) where
  adjunctionUnitClosed : A.adjunctionUnit
  adjunctionCounitClosed : A.adjunctionCounit
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorClosed {C D : CategoryObject} (A : AdjointFunctorPackage C D) : Prop :=
  A.adjunctionUnit ∧ A.adjunctionCounit ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence {C D : CategoryObject}
    (A : AdjointFunctorPackage C D) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.adjunctionUnitClosed (And.intro E.adjunctionCounitClosed E.triangleIdentitiesClosed)

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse