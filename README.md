# "Hello, World!" with Cucumber

This is a trivial sample project to demonstrate the use of Cucumber to check the functionality of a webapp. The app is a single web page that displays "Hello, World!" 

## Overview

The app presents a drop-down list of languages from which the user may choose. It then displays the phrase "Hello, World!" in the selected language.

We assume the user wants to see the name of his/her language in that language, while the programmers who support the app need to see the English names of the languages. Therefore, the SELECT element on the web page contains the native name of each language while the Gherkin scenarios refer to the languages by their English names. For example, the SELECT element has "Espa&ntilde;ol" while the Gherkin scenario has "Spanish."

## Suggested uses

When showing people how to use Cucumber, you can use the sample app to show the directory structure and files one would typically set up in a Cucumber project (features, step_definitions, support, etc.).

When showing people how to do test-driven development at the BDD/ATDD level, you can demonstrate the steps to add support for a new language to the app. 

## Execution

Run cukes and display screens

```shell
rake
```

Run cukes headless, format results as HTML, write results to hellocukes.html

```shell
rake headless
```


