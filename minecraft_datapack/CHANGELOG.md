# Changelog

All notable changes to the Global Command System will be documented in this file.

## [1.0-Enhanced] - 2026-02-12

### ✨ Added
- **Validation System**: Handler validation and permission checking
  - `gcs:validation/validate_handler` - Validates handler existence and status
  - `gcs:validation/check_permissions` - Checks user permissions
- **Backup System**: Configuration backup and restore
  - `gcs:backup/create_backup` - Creates configuration backup
  - `gcs:backup/restore_backup` - Restores from backup
- **Performance Monitoring**: System performance tracking
  - `gcs:performance/monitor` - Shows performance statistics
  - Track active/inactive handlers
  - Resource usage monitoring
- **Error Handling**: Improved error messages
  - `gcs:error/handler_not_found` - User-friendly handler not found error
  - `gcs:error/insufficient_permissions` - Permission error with details
- **Advanced Admin Tools**:
  - `gcs:admin/bulk_toggle` - Bulk enable/disable handlers
  - `gcs:admin/import_config` - Import configurations

### 🔧 Fixed
- Removed `$` from non-macro lines in all .mcfunction files
- Fixed macro syntax validation
- Corrected JSON formatting in tag files

### 📦 Changed
- Updated `pack.mcmeta`:
  - Pack format: 61 (supports 48-61)
  - Added vanilla features support
  - Improved description formatting
- Updated tag files:
  - Added `replace: false` to prevent conflicts
  - Changed to object format with `required: false`
- Enhanced core/load.mcfunction:
  - Added performance scoreboard (gcs.perf)
  - Added MIT License notice
  - Improved welcome message

### 📄 Documentation
- Added MIT License
- Updated README with new features
- Added improvement section

### 🏗️ Technical
- All handlers now use proper macro syntax
- Improved code organization
- Better error handling throughout
- Performance optimizations

## [1.0] - 2026-02-12

### Added
- Initial release
- Dynamic command system with 13-19 handler limit
- Modular architecture
- Admin panel with full management tools
- Permission system
- Built-in help handler
- Category-based organization

---

**Note**: This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
