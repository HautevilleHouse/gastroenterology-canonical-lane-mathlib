import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

structure HelicobacterPyloriPackage where
  ureaseActivity : Prop
  flagellaMotility : Prop
  adhesionFactors : Prop
  immuneEvasion : Prop

structure HelicobacterPyloriEvidence (H : HelicobacterPyloriPackage) where
  ureaseActivityClosed : H.ureaseActivity
  flagellaMotilityClosed : H.flagellaMotility
  adhesionFactorsClosed : H.adhesionFactors
  immuneEvasionClosed : H.immuneEvasion

def HelicobacterPyloriClosed (H : HelicobacterPyloriPackage) : Prop :=
  H.ureaseActivity ∧ H.flagellaMotility ∧
  H.adhesionFactors ∧ H.immuneEvasion

theorem helicobacter_pylori_closed_from_evidence (H : HelicobacterPyloriPackage)
    (E : HelicobacterPyloriEvidence H) : HelicobacterPyloriClosed H := by
  exact And.intro E.ureaseActivityClosed
    (And.intro E.flagellaMotilityClosed
      (And.intro E.adhesionFactorsClosed E.immuneEvasionClosed))

end GastroenterologyCanonicalLaneLean
end HautevilleHouse