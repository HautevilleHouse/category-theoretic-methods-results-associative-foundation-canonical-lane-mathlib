import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure LimitColimitPackage where
  diagramShape : Type u
  limitObject : Type v
  colimitObject : Type v
  universalProperty : Prop
  limitObjectTerm : limitObject
  colimitObjectTerm : colimitObject
  universalPropertyTerm : universalProperty

structure LimitColimitEvidence (L : LimitColimitPackage) where
  limitUniversalClosed : L.universalProperty
  colimitUniversalClosed : L.universalProperty

def LimitColimitClosed (L : LimitColimitPackage) : Prop :=
  L.universalProperty

theorem limit_colimit_closed_from_evidence (L : LimitColimitPackage) (E : LimitColimitEvidence L) :
    LimitColimitClosed L := by
  exact E.limitUniversalClosed

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse
