db.createUser(
    {
        user: "services",
        pwd: "welcome",
        roles: [
            {
                role: "readWrite",
                db: "mydb"
            }
        ]
    }
);