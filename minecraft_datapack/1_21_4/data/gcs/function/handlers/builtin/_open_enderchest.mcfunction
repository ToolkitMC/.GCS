# Geciktirilmiş enderchest açma
# Bu fonksiyon schedule ile çağrılır

# Tüm oyunculara uygulanır (en son tetikleyen)
execute as @a[scores={gcs.exec=1..}] run function gcs:handlers/builtin/_do_open_ec
