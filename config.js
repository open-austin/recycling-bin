module.exports = {
  db: {
    connectionStr: process.env.DATABASE_URL || 'postgres://localhost:5432/recycling'
  }
};
