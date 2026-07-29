import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GastroenterologyCanonicalLaneLean

structure GastroSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GastroAdmittedObject where
  space : GastroSpace
  mucosaModel : Prop
  epithelialBarrierClosed : Prop
  inflammationResolved : Prop
  conclusion : epithelialBarrierClosed ∧ inflammationResolved

end GastroenterologyCanonicalLaneLean
end HautevilleHouse