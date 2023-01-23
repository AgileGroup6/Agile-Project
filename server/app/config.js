var SOLR_HOST = "http://database:8983/";
if (process.NODE_ENV === "development") {
  SOLR_HOST = "http://localhost:8983";
}

module.exports = {
  DATA_HOST: "/slides",
  SOLR_HOST: SOLR_HOST,
};
