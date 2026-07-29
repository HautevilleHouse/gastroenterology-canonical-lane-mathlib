import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GastroenterologyCanonicalLaneLean
end HautevilleHouse