import HautevilleHouse.GastroenterologyCanonicalLaneLean.GastroFinalTheorem

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := "gastroenterology-canonical-lane",
    theoremObject := "Gastroenterology admissible-class bridge",
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "theorem-specific endgame closes over admitted class; unrestricted closure remains carried"
  }

theorem theorem_specific_endgame_checked :
  ∀ A : AdmissibleClass, ConstrainedGastroClosure A := by
  intro A
  exact constrained_gastro_endgame A

end GastroenterologyCanonicalLaneLean
end HautevilleHouse