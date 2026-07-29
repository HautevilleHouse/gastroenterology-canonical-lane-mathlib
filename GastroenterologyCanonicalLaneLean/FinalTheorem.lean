import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

def ConstrainedGastroenterologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gastroenterology_endgame (A : AdmissibleClass) :
    ConstrainedGastroenterologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GastroenterologyCanonicalLaneLean
end HautevilleHouse