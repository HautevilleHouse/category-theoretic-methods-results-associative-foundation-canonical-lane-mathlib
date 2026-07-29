import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure LimitsAndColimits where
  limit : (J : Type u) → (J → Type v) → Type (max u v)
  colimit : (J : Type u) → (J → Type v) → Type (max u v)
  limitUniversal : Prop
  colimitUniversal : Prop

structure LimitsAndColimitsEvidence (LC : LimitsAndColimits) where
  limitUniversalClosed : LC.limitUniversal
  colimitUniversalClosed : LC.colimitUniversal

def LimitsAndColimitsClosed (LC : LimitsAndColimits) : Prop :=
  LC.limitUniversal ∧ LC.colimitUniversal

theorem limits_and_colimits_closed_from_evidence (LC : LimitsAndColimits) (E : LimitsAndColimitsEvidence LC) :
    LimitsAndColimitsClosed LC := by
  exact And.intro E.limitUniversalClosed E.colimitUniversalClosed

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse