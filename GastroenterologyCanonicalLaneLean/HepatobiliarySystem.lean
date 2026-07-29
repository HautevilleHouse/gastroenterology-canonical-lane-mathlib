import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

structure HepatobiliarySystemPackage where
  hepatocyteFunction : Prop
  bileSecretion : Prop
  bilirubinMetabolism : Prop
  portalCirculation : Prop

structure HepatobiliarySystemEvidence (H : HepatobiliarySystemPackage) where
  hepatocyteFunctionClosed : H.hepatocyteFunction
  bileSecretionClosed : H.bileSecretion
  bilirubinMetabolismClosed : H.bilirubinMetabolism
  portalCirculationClosed : H.portalCirculation

def HepatobiliarySystemClosed (H : HepatobiliarySystemPackage) : Prop :=
  H.hepatocyteFunction ∧ H.bileSecretion ∧
  H.bilirubinMetabolism ∧ H.portalCirculation

theorem hepatobiliary_system_closed_from_evidence (H : HepatobiliarySystemPackage)
    (E : HepatobiliarySystemEvidence H) : HepatobiliarySystemClosed H := by
  exact And.intro E.hepatocyteFunctionClosed
    (And.intro E.bileSecretionClosed
      (And.intro E.bilirubinMetabolismClosed E.portalCirculationClosed))

end GastroenterologyCanonicalLaneLean
end HautevilleHouse