import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure CatalystSurfaceStructurePackage where
  activeSiteGeometry : Type u
  coordinationNumber : Type v
  surfaceTermination : Prop
  stepEdgeDefectDensity : Prop
  adsorbateBindingGeometry : Prop
  surfaceReconstruction : Prop
  electronicStructureBulkSlab : Prop

structure CatalystSurfaceStructureEvidence (C : CatalystSurfaceStructurePackage) where
  activeSiteGeometryClosed : C.activeSiteGeometry
  coordinationNumberClosed : C.coordinationNumber
  surfaceTerminationClosed : C.surfaceTermination
  stepEdgeDefectDensityClosed : C.stepEdgeDefectDensity
  adsorbateBindingGeometryClosed : C.adsorbateBindingGeometry
  surfaceReconstructionClosed : C.surfaceReconstruction
  electronicStructureBulkSlabClosed : C.electronicStructureBulkSlab

def CatalystSurfaceStructureClosed (C : CatalystSurfaceStructurePackage) : Prop :=
  C.activeSiteGeometry ∧ C.coordinationNumber ∧ C.surfaceTermination ∧
  C.stepEdgeDefectDensity ∧ C.adsorbateBindingGeometry ∧
  C.surfaceReconstruction ∧ C.electronicStructureBulkSlab

theorem catalyst_surface_structure_closed_from_evidence
    (C : CatalystSurfaceStructurePackage) (E : CatalystSurfaceStructureEvidence C) :
    CatalystSurfaceStructureClosed C := by
  exact And.intro E.activeSiteGeometryClosed
    (And.intro E.coordinationNumberClosed
      (And.intro E.surfaceTerminationClosed
        (And.intro E.stepEdgeDefectDensityClosed
          (And.intro E.adsorbateBindingGeometryClosed
            (And.intro E.surfaceReconstructionClosed
              E.electronicStructureBulkSlabClosed)))))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse