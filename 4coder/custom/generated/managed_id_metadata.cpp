function void
initialize_managed_id_metadata(Application_Links *app){
defcolor_bar = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_bar"));
defcolor_base = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_base"));
defcolor_pop1 = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_pop1"));
defcolor_pop2 = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_pop2"));
defcolor_back = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_back"));
defcolor_margin = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_margin"));
defcolor_margin_hover = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_margin_hover"));
defcolor_margin_active = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_margin_active"));
defcolor_list_item = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_list_item"));
defcolor_list_item_hover = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_list_item_hover"));
defcolor_list_item_active = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_list_item_active"));
defcolor_cursor = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_cursor"));
defcolor_at_cursor = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_at_cursor"));
defcolor_highlight_cursor_line = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_highlight_cursor_line"));
defcolor_highlight = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_highlight"));
defcolor_at_highlight = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_at_highlight"));
defcolor_mark = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_mark"));
defcolor_text_default = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_text_default"));
defcolor_comment = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_comment"));
defcolor_comment_pop = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_comment_pop"));
defcolor_keyword = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_keyword"));
defcolor_str_constant = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_str_constant"));
defcolor_char_constant = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_char_constant"));
defcolor_int_constant = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_int_constant"));
defcolor_float_constant = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_float_constant"));
defcolor_bool_constant = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_bool_constant"));
defcolor_preproc = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_preproc"));
defcolor_include = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_include"));
defcolor_special_character = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_special_character"));
defcolor_ghost_character = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_ghost_character"));
defcolor_highlight_junk = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_highlight_junk"));
defcolor_highlight_white = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_highlight_white"));
defcolor_paste = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_paste"));
defcolor_undo = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_undo"));
defcolor_back_cycle = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_back_cycle"));
defcolor_text_cycle = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_text_cycle"));
defcolor_line_numbers_back = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_line_numbers_back"));
defcolor_line_numbers_text = managed_id_declare(app, string_u8_litexpr("colors"), string_u8_litexpr("defcolor_line_numbers_text"));
view_rewrite_loc = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_rewrite_loc"));
view_next_rewrite_loc = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_next_rewrite_loc"));
view_paste_index_loc = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_paste_index_loc"));
view_is_passive_loc = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_is_passive_loc"));
view_snap_mark_to_cursor = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_snap_mark_to_cursor"));
view_ui_data = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_ui_data"));
view_highlight_range = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_highlight_range"));
view_highlight_buffer = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_highlight_buffer"));
view_render_hook = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_render_hook"));
view_word_complete_menu = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_word_complete_menu"));
view_lister_loc = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_lister_loc"));
view_previous_buffer = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("view_previous_buffer"));
buffer_map_id = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("buffer_map_id"));
buffer_eol_setting = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("buffer_eol_setting"));
buffer_lex_task = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("buffer_lex_task"));
buffer_wrap_lines = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("buffer_wrap_lines"));
sticky_jump_marker_handle = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("sticky_jump_marker_handle"));
attachment_tokens = managed_id_declare(app, string_u8_litexpr("attachment"), string_u8_litexpr("attachment_tokens"));
}