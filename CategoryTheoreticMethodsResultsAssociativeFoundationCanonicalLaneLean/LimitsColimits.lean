import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure LimitsColimitsPackage where
  limitExistence : Prop
  colimitExistence : Prop
  universalPropertyLimits : Prop
  universalPropertyColimits : Prop
  limitPreservation : Prop
  colimitPreservation : Prop

structure LimitsColimitsEvidence (L : LimitsColimitsPackage) where
  limitExistenceClosed : L.limitExistence
  colimitExistenceClosed : L.colimitExistence
  universalPropertyLimitsClosed : L.universalPropertyLimits
  universalPropertyColimitsClosed : L.universalPropertyColimits
  limitPreservationClosed : L.limitPreservation
  colimitPreservationClosed : L.colimitPreservation

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.limitExistence ∧ L.colimitExistence ∧ L.universalPropertyLimits ∧
  L.universalPropertyColimits ∧ L.limitPreservation ∧ L.colimitPreservation

theorem limits_colimits_closed_from_evidence (L : LimitsColimitsPackage) (E : LimitsColimitsEvidence L) :
    LimitsColimitsClosed L := by
  exact And.intro E.limitExistenceClosed
    (And.intro E.colimitExistenceClosed
      (And.intro E.universalPropertyLimitsClosed
        (And.intro E.universalPropertyColimitsClosed
          (And.intro E.limitPreservationClosed E.colimitPreservationClosed))))

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse