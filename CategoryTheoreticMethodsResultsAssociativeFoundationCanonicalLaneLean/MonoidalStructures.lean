import CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean.YonedaLemma

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure MonoidalCategoryPackage where
  tensorProductDefined : Prop
  associatorNatural : Prop
  unitObjectExists : Prop
  triangleAndPentagonIdentities : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategoryPackage) where
  tensorProductClosed : M.tensorProductDefined
  associatorClosed : M.associatorNatural
  unitObjectClosed : M.unitObjectExists
  coherenceClosed : M.triangleAndPentagonIdentities

def MonoidalCategoryClosed (M : MonoidalCategoryPackage) : Prop :=
  M.tensorProductDefined ∧ M.associatorNatural ∧
  M.unitObjectExists ∧ M.triangleAndPentagonIdentities

theorem monoidal_category_closed_from_evidence
    (M : MonoidalCategoryPackage) (E : MonoidalCategoryEvidence M) :
    MonoidalCategoryClosed M := by
  exact And.intro E.tensorProductClosed
    (And.intro E.associatorClosed
      (And.intro E.unitObjectClosed E.coherenceClosed))

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse