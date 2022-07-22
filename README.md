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

## Explaination:
CAP by defualt provides basic CRUD operation but to add logic for validation, determination, call to other api etc. we need handler which can be written in javascript and typescript. Here we are following javascript approach.

To use outofbox feature of CAP you defind a js file with same name as your service cds file but if you want to use different name then you will have define @impl annotation on service cds file.

## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
