import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/{{model_name}}.dart';

class {{model_name.pascalCase()}}Repository {
  Future<List<{{model_name.pascalCase()}}>> findAll({required int id}) async {
    final response = await Supabase.instance.client.from('{{table_name}}').select();

    return response.map((e) => {{model_name.pascalCase()}}.fromJson(e)).toList();
  }

  Future<{{model_name.pascalCase()}}> findOne({required int id}) async {
    final response = await Supabase.instance.client
        .from('{{table_name}}')
        .select()
        .eq('id', id)
        .single();

    return {{model_name.pascalCase()}}.fromJson(response);
  }

  Future<void> create({required {{model_name.pascalCase()}} {{model_name.camelCase()}}}) async {
    await Supabase.instance.client.from('{{table_name}}').insert({{model_name.camelCase()}}.toJson());
  }

  Future<void> update({required {{model_name.pascalCase()}} {{model_name.camelCase()}}}) async {
    await Supabase.instance.client
        .from('{{table_name}}')
        .update({{model_name.camelCase()}}.toJson())
        .eq('id', {{model_name.camelCase()}}.id);
  }

  Future<void> delete({required int id}) async {
    await Supabase.instance.client.from('{{table_name}}').delete().eq('id', id);
  }
}
