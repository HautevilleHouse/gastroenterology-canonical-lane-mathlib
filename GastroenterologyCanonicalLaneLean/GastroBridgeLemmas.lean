import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GastroenterologyCanonicalLaneLean.GastroAdmittedObject

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  O.epithelialBarrierClosed ∧ O.inflammationResolved

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let O := A.object
  exact O.conclusion

end GastroenterologyCanonicalLaneLean
end HautevilleHouse