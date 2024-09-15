class {{name.pascalCase()}} { {{#properties_types}}
  final {{.}};{{/properties_types}}

  {{name.pascalCase()}}({{#properties}}
    this.{{.}},{{/properties}}
  );

  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) {
    return {{name.pascalCase()}}({{#properties}}
      json['{{..snakeCase()}}'],{{/properties}}
    );
  }

  Map<String, dynamic> toJson() {
    final json = { {{#properties}}
      '{{..snakeCase()}}': {{.}},{{/properties}}
    };

    json.removeWhere((key, value) => value == null);

    return json;
  }
}
