module.exports = {
  db: {
	  connectionStr: 'postgres://' + process.env.RDS_USERNAME + ':' + process.env.RDS_PASSWORD + '@' + process.env.RDS_HOSTNAME + ':' + process.env.RDS_PORT + '/' + process.env.RDS_DB_NAME || 'postgres://localhost:5432/recycling'
  }
};
