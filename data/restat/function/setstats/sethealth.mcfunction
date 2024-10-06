#$attribute @s max_health base set $(health) 

attribute @s max_health modifier remove ss.health
$attribute @s max_health modifier add ss.health $(health) add_value
