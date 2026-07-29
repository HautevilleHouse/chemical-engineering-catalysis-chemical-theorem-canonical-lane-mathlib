import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure ThermodynamicConsistencyPackage where
  reactionEnthalpy : Type u
  gibbsFreeEnergyProfile : Type v
  microkineticReversibility : Prop
  equilibriumConstant : Prop
  transitionStateTheory : Prop
  partitionFunctions : Prop

structure ThermodynamicConsistencyEvidence (T : ThermodynamicConsistencyPackage) where
  reactionEnthalpyClosed : T.reactionEnthalpy
  gibbsFreeEnergyProfileClosed : T.gibbsFreeEnergyProfile
  microkineticReversibilityClosed : T.microkineticReversibility
  equilibriumConstantClosed : T.equilibriumConstant
  transitionStateTheoryClosed : T.transitionStateTheory
  partitionFunctionsClosed : T.partitionFunctions

def ThermodynamicConsistencyClosed (T : ThermodynamicConsistencyPackage) : Prop :=
  T.reactionEnthalpy ∧ T.gibbsFreeEnergyProfile ∧ T.microkineticReversibility ∧
  T.equilibriumConstant ∧ T.transitionStateTheory ∧ T.partitionFunctions

theorem thermodynamic_consistency_closed_from_evidence
    (T : ThermodynamicConsistencyPackage) (E : ThermodynamicConsistencyEvidence T) :
    ThermodynamicConsistencyClosed T := by
  exact And.intro E.reactionEnthalpyClosed
    (And.intro E.gibbsFreeEnergyProfileClosed
      (And.intro E.microkineticReversibilityClosed
        (And.intro E.equilibriumConstantClosed
          (And.intro E.transitionStateTheoryClosed
            E.partitionFunctionsClosed))))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse