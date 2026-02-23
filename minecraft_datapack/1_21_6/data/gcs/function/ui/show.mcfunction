# ============================================
# GCS - Dialog Gösterici
# Kullanım: function gcs:ui/show {ui:"gcs:admin/main_menu"}
# ============================================

# Yetki kontrolü
execute unless score @s gcs.auth matches 1.. run return fail

# Dialog'u göster
$dialog show @s $(ui)
