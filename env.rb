require 'yaml'

$CONF = YAML.load_file('config.yaml')
$BROWSER=$CONF['browser']
$BASE_URL=$CONF['base_url']