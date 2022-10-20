# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).
- refer link: https://cap.cloud.sap/docs/node.js/services#srv-impls


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.


Add Actions: 

https://cap.cloud.sap/docs/advanced/fiori
https://cap.cloud.sap/docs/node.js/cds-ql#UPDATE

MBT plugin installation : https://sap.github.io/cloud-mta-build-tool/download/
MTA Plugin installation: https://developers.sap.com/tutorials/cp-cf-install-cliplugin-mta.html

now run : cds deploy --to hana:poc-db  --store-credentials
cds add hana, xsuaa, approuter, mta --for production
npm install --g mbt
mbt build -t gen --mtar mta.tar
cf deploy gen/mta.tar
hana credential: DBADMIN/HanaTest@1