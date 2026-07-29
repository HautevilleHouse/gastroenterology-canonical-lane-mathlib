import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

structure InflammatoryBowelDiseasePackage where
  epithelialBarrierDefect : Prop
  dysregulatedImmuneResponse : Prop
  microbiomeDysbiosis : Prop
  geneticSusceptibility : Prop

structure InflammatoryBowelDiseaseEvidence (I : InflammatoryBowelDiseasePackage) where
  epithelialBarrierDefectClosed : I.epithelialBarrierDefect
  dysregulatedImmuneResponseClosed : I.dysregulatedImmuneResponse
  microbiomeDysbiosisClosed : I.microbiomeDysbiosis
  geneticSusceptibilityClosed : I.geneticSusceptibility

def InflammatoryBowelDiseaseClosed (I : InflammatoryBowelDiseasePackage) : Prop :=
  I.epithelialBarrierDefect ∧ I.dysregulatedImmuneResponse ∧
  I.microbiomeDysbiosis ∧ I.geneticSusceptibility

theorem inflammatory_bowel_disease_closed_from_evidence (I : InflammatoryBowelDiseasePackage)
    (E : InflammatoryBowelDiseaseEvidence I) : InflammatoryBowelDiseaseClosed I := by
  exact And.intro E.epithelialBarrierDefectClosed
    (And.intro E.dysregulatedImmuneResponseClosed
      (And.intro E.microbiomeDysbiosisClosed E.geneticSusceptibilityClosed))

end GastroenterologyCanonicalLaneLean
end HautevilleHouse