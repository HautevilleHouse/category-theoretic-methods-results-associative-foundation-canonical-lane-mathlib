import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitNatural : Prop
  counitNatural : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence (P : AdjointFunctorPackage) where
  leftAdjointExistsClosed : P.leftAdjointExists
  rightAdjointExistsClosed : P.rightAdjointExists
  unitNaturalClosed : P.unitNatural
  counitNaturalClosed : P.counitNatural
  triangleIdentitiesClosed : P.triangleIdentities

def AdjointFunctorClosed (P : AdjointFunctorPackage) : Prop :=
  P.leftAdjointExists ∧ P.rightAdjointExists ∧ P.unitNatural ∧ P.counitNatural ∧ P.triangleIdentities

theorem adjoint_functor_closed_from_evidence (P : AdjointFunctorPackage)
    (E : AdjointFunctorEvidence P) : AdjointFunctorClosed P := by
  exact And.intro E.leftAdjointExistsClosed
    (And.intro E.rightAdjointExistsClosed
      (And.intro E.unitNaturalClosed
        (And.intro E.counitNaturalClosed E.triangleIdentitiesClosed)))

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse