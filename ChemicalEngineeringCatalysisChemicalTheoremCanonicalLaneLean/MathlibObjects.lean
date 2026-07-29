import ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CatalysisReactor where
  carrier : Type
  topology : TopologicalSpace carrier

structure CatalysisAdmittedObject where
  reactor : CatalysisReactor
  reactionNetwork : Prop
  rateEquation : Prop
  catalystSurface : Type
  catalystTopology : TopologicalSpace catalystSurface
  activeSiteModel : Prop
  conclusion : activeSiteModel

structure CatalysisEndgameState where
  object : CatalysisAdmittedObject

def CatalysisWitnessClosed (O : CatalysisAdmittedObject) : Prop :=
  O.activeSiteModel

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse