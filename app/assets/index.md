# Humble Kit
## A flexible CSS tool kit for internal applications
-----

### SASS file structure

```
  stylesheets
  └── base
  |   |
  |   ├── _mixins.scss
  |   ├── _reset.scss
  |   ├── _typography.scss
  |   └── _variables.scss
  └── elements
  |   |
  |   ├── _flex.scss
  |   ├── _forms.scss
  |   ├── _links.scss
  |   ├── _lists.scss
  |   └── _tables.scss
  └── modules
  |   |
  |   ├── _buttons.scss
  |   └── _media.scss
  └── structure
  |   |
  |   ├── _containers.scss
  |   ├── _grid.scss
  |   └── _layout.scss
  └── theme
      |
      ├── _decorations.scss
      └── _skins.scss

```

***Humble Kit*** is an ongoing css tool kit project that is steeped in Agile-mindedness, scalable and modular Sass, with the ultimate goal of providing a quick, flexible, and responsible way to style in a team environment. Consistency and maintainability are at the core of the project and rapid-iterations are the driving cause.

***Humble Kit*** plays well with Bootstrap, most notably the javascript components. It's also fairly easy (once you get in there) to modify and extend the tool kit by extending `@mixins` and modifying default variables.

***Humble Kit*** has been thoughtfully crafted to be used when developing and maintaining internal web applications for Stitch Fix.