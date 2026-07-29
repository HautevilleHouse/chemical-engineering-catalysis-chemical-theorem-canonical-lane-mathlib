import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure SabatierPrinciplePackage where
  volcanoPlot : Type u
  descriptorOptimum : Type v
  scalingRelation : Prop
  bindingEnergyDescriptor : Prop
  adsorptionFreeEnergyLinear : Prop
  rateMaximumIdentified : Prop

structure SabatierPrincipleEvidence (S : SabatierPrinciplePackage) where
  volcanoPlotClosed : S.volcanoPlot
  descriptorOptimumClosed : S.descriptorOptimum
  scalingRelationClosed : S.scalingRelation
  bindingEnergyDescriptorClosed : S.bindingEnergyDescriptor
  adsorptionFreeEnergyLinearClosed : S.adsorptionFreeEnergyLinear
  rateMaximumIdentifiedClosed : S.rateMaximumIdentified

def SabatierPrincipleClosed (S : SabatierPrinciplePackage) : Prop :=
  S.volcanoPlot ∧ S.descriptorOptimum ∧ S.scalingRelation ∧
  S.bindingEnergyDescriptor ∧ S.adsorptionFreeEnergyLinear ∧ S.rateMaximumIdentified

theorem sabatier_principle_closed_from_evidence
    (S : SabatierPrinciplePackage) (E : SabatierPrincipleEvidence S) :
    SabatierPrincipleClosed S := by
  exact And.intro E.volcanoPlotClosed
    (And.intro E.descriptorOptimumClosed
      (And.intro E.scalingRelationClosed
        (And.intro E.bindingEnergyDescriptorClosed
          (And.intro E.adsorptionFreeEnergyLinearClosed
            E.rateMaximumIdentifiedClosed))))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse