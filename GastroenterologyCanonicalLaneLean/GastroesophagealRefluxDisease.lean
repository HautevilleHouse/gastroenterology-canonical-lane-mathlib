import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

structure GastroesophagealRefluxDiseasePackage where
  lowerEsophagealSphincterDysfunction : Prop
  hiatalHernia : Prop
  impairedEsophagealClearance : Prop
  delayedGastricEmptying : Prop

structure GastroesophagealRefluxDiseaseEvidence (G : GastroesophagealRefluxDiseasePackage) where
  lowerEsophagealSphincterDysfunctionClosed : G.lowerEsophagealSphincterDysfunction
  hiatalHerniaClosed : G.hiatalHernia
  impairedEsophagealClearanceClosed : G.impairedEsophagealClearance
  delayedGastricEmptyingClosed : G.delayedGastricEmptying

def GastroesophagealRefluxDiseaseClosed (G : GastroesophagealRefluxDiseasePackage) : Prop :=
  G.lowerEsophagealSphincterDysfunction ∧ G.hiatalHernia ∧
  G.impairedEsophagealClearance ∧ G.delayedGastricEmptying

theorem gastroesophageal_reflux_disease_closed_from_evidence (G : GastroesophagealRefluxDiseasePackage)
    (E : GastroesophagealRefluxDiseaseEvidence G) : GastroesophagealRefluxDiseaseClosed G := by
  exact And.intro E.lowerEsophagealSphincterDysfunctionClosed
    (And.intro E.hiatalHerniaClosed
      (And.intro E.impairedEsophagealClearanceClosed E.delayedGastricEmptyingClosed))

end GastroenterologyCanonicalLaneLean
end HautevilleHouse