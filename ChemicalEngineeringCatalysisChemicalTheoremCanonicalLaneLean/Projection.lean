import ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def catalysisProjection : Projection CatalysisEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem catalysis_projection_idempotent (x : CatalysisEndgameState) :
    catalysisProjection.toFun (catalysisProjection.toFun x) = catalysisProjection.toFun x := by
  exact catalysisProjection.idempotent x

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse