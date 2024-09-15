import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/{{model_name}}.dart';

class {{model_name.pascalCase()}}Repository {

  Future<List<{{model_name.pascalCase()}}>> findAll({required int id}) async {
    final response = await Supabase.instance.client
        .from('{{table_name}}')
        .select();
    if (response.error != null) {
      throw response.error!;
    }
    return response.data!.map((e) => {{model_name.pascalCase()}}.fromJson(e)).toList();
  }

  Future<{{model_name.pascalCase()}}> findOne({required int id}) async {
    final response = await Supabase.instance.client
        .from('{{table_name}}')
        .select()
        .eq('id', id)
        .single();
    if (response.error != null) {
      throw response.error!;
    }
    return {{model_name.pascalCase()}}.fromJson(response.data);
  }

  Future<{{model_name.pascalCase()}}> create({required {{model_name.pascalCase()}} {{model_name}}}) async {
    final response = await Supabase.instance.client
        .from('{{table_name}}')
        .upsert({{model_name}}.toJson());
    if (response.error != null) {
      throw response.error!;
    }
    return {{model_name.pascalCase()}}.fromJson(response.data);
  }

  Future<{{model_name.pascalCase()}}> update({required {{model_name.pascalCase()}} {{model_name}}}) async {
    final response = await Supabase.instance.client
        .from('{{table_name}}')
        .update({{model_name}}.toJson())
        .eq('id', {{model_name}}.id);
    if (response.error != null) {
      throw response.error!;
    }
    return {{model_name.pascalCase()}}.fromJson(response.data);
  }

  Future<{{model_name.pascalCase()}}> delete({required int id}) async {
    final response = await Supabase.instance.client
        .from('{{table_name}}')
        .delete()
        .eq('id', id);
    if (response.error != null) {
      throw response.error!;
    }
    return {{model_name.pascalCase()}}.fromJson(response.data);
  }
}
