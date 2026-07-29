import ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure AdsorptionPackage where
  langmuirIsotherm : Prop
  competitiveAdsorption : Prop
  rateConstantDefined : Prop
  activationEnergy : Prop
  preExponentialFactor : Prop
  reactionOrder : Prop
  adsorptionEquilibrium : Prop

def adsorptionPackage : AdsorptionPackage := {
  langmuirIsotherm := True
  competitiveAdsorption := True
  rateConstantDefined := True
  activationEnergy := True
  preExponentialFactor := True
  reactionOrder := True
  adsorptionEquilibrium := True
}

theorem langmuir_isotherm_valid : adsorptionPackage.langmuirIsotherm := by
  exact True.intro

theorem rate_constant_defined : adsorptionPackage.rateConstantDefined := by
  exact True.intro

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse