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


Note: 

In this section we learn about deploying in hana.
For deploying in hana run cds add hana command. it will add hana configuraiton under cds on package.json.

after that create sap hana db instance in BTP and then create hdi-shared plan hana service instance. 

now run : cds deploy --to hana:poc-db  --store-credentials