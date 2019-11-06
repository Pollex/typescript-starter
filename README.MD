Node Typescript Cookiecutter Template
----
This is a [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/) template. Use this template to quickly set-up a new Node project with typescript, testing, coverage support and a docker development environment.

# Quickstart
Make sure Node is installed with NPM and run the following command to generate a project.

```
npx cookiecutter https://github.com/Pollex/typescript-starter.git
```

This command will prompt a few questions and then create the project in a folder named after your service. (1st question)

# Template features
This template creates a Docker based Node.JS project with Typescript support. Below are a few key features:

 - Typescript support
 - Auto-compile and run
 - Docker intergrated
   - Develop in a container
   - Build production images
 - ESLint with:
   - Typescript
   - Prettier
 - Mocha & Chai Unit-Testing
 - NYC / Istanbul code-coverage

# Template contents
The resulting project folder will contain the following files.

```
├── Dockerfile
├── .dockerignore
├── .eslintrc.json
├── .gitignore
├── package.json
├── src
│   ├── app.spec.ts
│   └── app.ts
├── tsconfig.json
├── .vscode
│   └── settings.json
└── yarn.lock
```

