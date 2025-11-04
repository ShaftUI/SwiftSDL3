# SDL3 Custom Patches

This directory contains custom patches that have been applied to the SDL3 source code. These patches should be reapplied when updating the SDL3 source.

## Patches

1. **0001-commit-30c6977.patch** - Shaft patch: use scrollingDeltaX/Y
   - Commit: 30c6977bd7b77108d1b1fcc55400ba74106b64e3

2. **0002-commit-e32d317.patch** - Update
   - Commit: e32d3177624439e651b805263bd0ac0fe4dd305f

3. **0003-commit-a56a797.patch** - Linux scroll
   - Commit: a56a797f584de4e4cf3470f2e2dbf2e7fba6edf0

5. **0005-add-modulemap.patch** - Add Swift module map for SDL3
   - Critical: Required for Swift Package Manager integration
   - Creates the module.modulemap file that exposes SDL3 C API to Swift

6. **0006-comment-precise-scrolling.patch** - Comment out precise scrolling delta scaling
   - Comments out the precise scrolling delta scaling code in SDL_cocoamouse.m
   - Prevents over-scaling of trackpad scroll events

7. **0007-sync-mouse-button-state.patch** - Sync mouse button state with hardware
   - Adds Cocoa_SyncMouseButtonState function that uses NSEvent.pressedMouseButtons to synchronize SDL's tracked button state with macOS hardware state
   - Ensures event.motion.state accurately reflects actual button presses
   - Calls sync in mouseMoved: handler before sending motion events to maintain consistency

## How to Apply Patches

After updating the SDL3 source code, apply these patches in order:

```bash
# Apply all patches
git apply patches/0001-commit-30c6977.patch
git apply patches/0002-commit-e32d317.patch
git apply patches/0003-commit-a56a797.patch
git apply patches/0004-commit-f20e32b.patch
git apply patches/0005-add-modulemap.patch
git apply patches/0006-comment-precise-scrolling.patch
git apply patches/0007-sync-mouse-button-state.patch
```

Or apply them all at once:

```bash
git apply patches/*.patch
```

## Troubleshooting

If patches fail to apply cleanly due to conflicts:

1. Try applying patches one by one to identify which one fails
2. Use `git apply --3way` to perform a three-way merge
3. Or manually apply the changes by reviewing the patch file

```bash
# Three-way merge (requires the repository to be a git repo)
git apply --3way patches/0001-commit-30c6977.patch

# Check what would be applied without actually applying
git apply --check patches/0001-commit-30c6977.patch

# View patch statistics
git apply --stat patches/0001-commit-30c6977.patch
```

## Patch Creation Date

Created: October 20, 2025

