**Attention:** 1.6.0 is not a recommended version to use because of known issues where pods can get stuck (due to controller publish/unpublish failures) during cluster upgrades or during node reboot (as seen in [#987](https://github.com/kubernetes-sigs/gcp-compute-persistent-disk-csi-driver/pull/987)). Users should upgrade directly to the 1.7 branch.


# v1.6.0 - Changelog since v1.5.1

## Changes by Kind

### Feature

- Allow to specify how frequently to poll for AttachDisk operation status, or any other global\regional\zonal operation. ([#956](https://github.com/kubernetes-sigs/gcp-compute-persistent-disk-csi-driver/pull/956), [@sagor999](https://github.com/sagor999))

### Bug or Regression

- Default to MAXPROCS=1 to improve memory usage on nodes with many CPUs. ([#969](https://github.com/kubernetes-sigs/gcp-compute-persistent-disk-csi-driver/pull/969), [@mattcary](https://github.com/mattcary))

### Uncategorized

- Lets users clone a regional disk from a zonal disk if one of the replica zones of the clone matches the zone of the source disk. ([#890](https://github.com/kubernetes-sigs/gcp-compute-persistent-disk-csi-driver/pull/890), [@amacaskill](https://github.com/amacaskill))

## Dependencies

### Added
_Nothing has changed._

### Changed
- github.com/prometheus/client_golang: [v1.11.0 → v1.11.1](https://github.com/prometheus/client_golang/compare/v1.11.0...v1.11.1)

### Removed
_Nothing has changed._
