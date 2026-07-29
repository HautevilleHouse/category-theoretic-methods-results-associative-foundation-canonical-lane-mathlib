import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure MonoidalStructurePackage where
  tensorProductDefined : Prop
  associatorNatural : Prop
  leftUnitorNatural : Prop
  rightUnitorNatural : Prop
  pentagonIdentity : Prop
  triangleIdentity : Prop

structure MonoidalStructureEvidence (P : MonoidalStructurePackage) where
  tensorProductDefinedClosed : P.tensorProductDefined
  associatorNaturalClosed : P.associatorNatural
  leftUnitorNaturalClosed : P.leftUnitorNatural
  rightUnitorNaturalClosed : P.rightUnitorNatural
  pentagonIdentityClosed : P.pentagonIdentity
  triangleIdentityClosed : P.triangleIdentity

def MonoidalStructureClosed (P : MonoidalStructurePackage) : Prop :=
  P.tensorProductDefined ∧ P.associatorNatural ∧ P.leftUnitorNatural ∧
  P.rightUnitorNatural ∧ P.pentagonIdentity ∧ P.triangleIdentity

theorem monoidal_structure_closed_from_evidence (P : MonoidalStructurePackage)
    (E : MonoidalStructureEvidence P) : MonoidalStructureClosed P := by
  exact And.intro E.tensorProductDefinedClosed
    (And.intro E.associatorNaturalClosed
      (And.intro E.leftUnitorNaturalClosed
        (And.intro E.rightUnitorNaturalClosed
          (And.intro E.pentagonIdentityClosed E.triangleIdentityClosed))))

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse