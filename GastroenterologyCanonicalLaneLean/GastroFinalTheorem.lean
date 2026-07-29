import HautevilleHouse.GastroenterologyCanonicalLaneLean.GastroBridgeLemmas
import HautevilleHouse.GastroenterologyCanonicalLaneLean.GastroGateLemmas

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

def ConstrainedGastroClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gastro_endgame (A : AdmissibleClass) : ConstrainedGastroClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GastroenterologyCanonicalLaneLean
end HautevilleHouse