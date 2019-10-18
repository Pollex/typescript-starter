Node Typescript Cookiecutter Template
----
This is a [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/) template. Use this template to quickly set-up a new Node project with typescript, testing and coverage support.

# Quickstart
Make sure Node is installed with NPM and run the following command to generate a project.

```
npx cookiecutter https://github.com/Pollex/typescript-starter.git
```

This command will prompt a few questions and then create the project in a folder named after your service. (1st question)

# Template features
This template creates a Docker based Node.JS project with Typescript support. Below are a few key features:

 - Typescript support
 - ESLint with:
   - Typescript
   - Prettier
 - Mocha & Chai Unit-Testing
 - NYC / Istanbul code-coverage

# Template contents
The resulting project folder will contain the following files.

```
├── .vscode
│   └── settings.json
├── src
│   ├── app.spec.ts
│   └── app.ts
├── .eslintrc.json
├── tsconfig.json
├── package.json
├── yarn.lock
└── .gitignore
```

