rs.initiate({
  _id: "replica-set",
  members: [
    { _id: 0, host: "mongo-master:27017" },
    { _id: 1, host: "mongo-node00:27017" },
    { _id: 2, host: "mongo-node01:27017" },
  ],
});
rs.conf();
