import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure CatalystAdmittedObject where
  catalystType : Type
  surfaceSites : Type
  reactionMechanism : Prop
  rateExpression : Prop
  conclusion : rateExpression

structure AdmissibleClass where
  object : CatalystAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CatalystWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CatalystWitnessClosed (O : CatalystAdmittedObject) : Prop :=
  O.rateExpression

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse