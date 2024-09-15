class {{name.pascalCase()}} { {{#properties_types}}
  final {{.}};{{/properties_types}}

  {{name.pascalCase()}}({{#properties}}
    this.{{.}},{{/properties}}
  );

  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) {
    return {{name.pascalCase()}}({{#properties}}
      json['{{.}}'],{{/properties}}
    );
  }

  Map<String, dynamic> toJson() {
    return { {{#properties}}
      '{{.}}': {{.}},{{/properties}}
    };
  }
}
