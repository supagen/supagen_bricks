class {{name.pascalCase()}} { {{#properties_types}}
  final {{.}};{{/properties_types}}

  {{name.pascalCase()}}({{#properties}}
    this.{{.}},{{/properties}}
  );
}
