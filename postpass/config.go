package postpass

/* config stuff
 * should go into commandline arguments
 */
const (
	Host                 = "/var/run/postgresql"
	DBName               = "postpass"
	QuickMediumThreshold = 150
	MediumSlowThreshold  = 150000
	ListenPort           = 8081
)
