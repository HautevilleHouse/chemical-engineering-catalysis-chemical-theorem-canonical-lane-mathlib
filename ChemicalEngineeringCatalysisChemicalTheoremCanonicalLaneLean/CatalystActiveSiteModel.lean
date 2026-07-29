import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure CatalystActiveSiteModel where
  siteDensity : Prop
  coordinationNumber : Prop
  surfaceGeometry : Prop
  electronicStructure : Prop
  bindingEnergyDistribution : Prop

structure CatalystActiveSiteEvidence (M : CatalystActiveSiteModel) where
  siteDensityClosed : M.siteDensity
  coordinationNumberClosed : M.coordinationNumber
  surfaceGeometryClosed : M.surfaceGeometry
  electronicStructureClosed : M.electronicStructure
  bindingEnergyDistributionClosed : M.bindingEnergyDistribution

def CatalystActiveSiteClosed (M : CatalystActiveSiteModel) : Prop :=
  M.siteDensity ∧ M.coordinationNumber ∧
  M.surfaceGeometry ∧ M.electronicStructure ∧
  M.bindingEnergyDistribution

theorem catalyst_active_site_closed_from_evidence (M : CatalystActiveSiteModel) (E : CatalystActiveSiteEvidence M) : CatalystActiveSiteClosed M :=
  And.intro E.siteDensityClosed
    (And.intro E.coordinationNumberClosed
      (And.intro E.surfaceGeometryClosed
        (And.intro E.electronicStructureClosed E.bindingEnergyDistributionClosed)))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse