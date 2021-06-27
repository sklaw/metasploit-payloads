	.file	"metapi.c"
	.text
	.globl	_api_instance
	.data
	.align 32
_api_instance:
	.long	_packet_get_tlv_value_bool
	.long	_packet_get_tlv_value_raw
	.long	_packet_add_completion_handler
	.long	_packet_add_exception
	.long	_packet_add_group
	.long	_packet_add_request_id
	.long	_packet_add_tlv_bool
	.long	_packet_add_tlv_group
	.long	_packet_add_tlv_qword
	.long	_packet_add_tlv_raw
	.long	_packet_add_tlv_string
	.long	_packet_add_tlv_uint
	.long	_packet_add_tlv_wstring
	.long	_packet_add_tlv_wstring_len
	.long	_packet_add_tlvs
	.long	_packet_call_completion_handlers
	.long	_packet_enum_tlv
	.long	_packet_get_tlv
	.long	_packet_get_tlv_group_entry
	.long	_packet_get_tlv_string
	.long	_packet_is_tlv_null_terminated
	.long	_packet_remove_completion_handler
	.long	_packet_transmit
	.long	_packet_transmit_empty_response
	.long	_packet_transmit_response
	.long	_packet_get_tlv_value_string
	.long	_packet_create
	.long	_packet_create_group
	.long	_packet_create_response
	.long	_packet_get_type
	.long	_packet_get_tlv_value_qword
	.long	_packet_get_tlv_meta
	.long	_packet_get_tlv_value_uint
	.long	_packet_destroy
	.long	_packet_get_tlv_value_wstring
	.long	_packet_get_tlv_value_reflective_loader
	.long	_command_deregister_all
	.long	_command_register_all
	.long	_command_handle
	.long	_thread_destroy
	.long	_thread_join
	.long	_thread_kill
	.long	_thread_run
	.long	_thread_sigterm
	.long	_thread_create
	.long	_thread_open
	.long	_create_remote_thread
	.long	_core_update_thread_token
	.long	_lock_create
	.long	_lock_acquire
	.long	_lock_destroy
	.long	_lock_release
	.long	_event_destroy
	.long	_event_poll
	.long	_event_signal
	.long	_event_create
	.long	_channel_exists
	.long	_channel_is_interactive
	.long	_channel_is_flag
	.long	_channel_create
	.long	_channel_create_datagram
	.long	_channel_create_pool
	.long	_channel_create_stream
	.long	_channel_find_by_id
	.long	_channel_close
	.long	_channel_default_io_handler
	.long	_channel_get_class
	.long	_channel_get_id
	.long	_channel_interact
	.long	_channel_open
	.long	_channel_read
	.long	_channel_read_from_buffered
	.long	_channel_write
	.long	_channel_write_to_buffered
	.long	_channel_write_to_remote
	.long	_channel_get_native_io_context
	.long	_channel_get_type
	.long	_channel_get_buffered_io_context
	.long	_channel_get_flags
	.long	_channel_destroy
	.long	_channel_set_buffered_io_handler
	.long	_channel_set_flags
	.long	_channel_set_interactive
	.long	_channel_set_native_io_context
	.long	_channel_set_type
	.long	_scheduler_initialize
	.long	_scheduler_destroy
	.long	_scheduler_insert_waitable
	.long	_scheduler_signal_waitable
	.long	_scheduler_waitable_thread@4
	.long	_utf8_to_wchar
	.long	_wchar_to_utf8
	.long	_inject_dll
	.long	_inject_via_apcthread
	.long	_inject_via_remotethread
	.long	_inject_via_remotethread_wow64
	.long	_core_update_desktop
	.long	_list_add
	.long	_list_clear
	.long	_list_enumerate
	.long	_list_push
	.long	_list_remove
	.long	_list_remove_at
	.long	_list_count
	.long	_list_create
	.long	_list_get
	.long	_list_pop
	.long	_list_shift
	.long	_list_destroy
	.globl	_met_api
	.align 4
_met_api:
	.long	_api_instance
	.ident	"GCC: (GNU) 9.3-win32 20200320"
	.def	_packet_get_tlv_value_bool;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_raw;	.scl	2;	.type	32;	.endef
	.def	_packet_add_completion_handler;	.scl	2;	.type	32;	.endef
	.def	_packet_add_exception;	.scl	2;	.type	32;	.endef
	.def	_packet_add_group;	.scl	2;	.type	32;	.endef
	.def	_packet_add_request_id;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_bool;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_group;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_qword;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_raw;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_string;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_wstring;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlv_wstring_len;	.scl	2;	.type	32;	.endef
	.def	_packet_add_tlvs;	.scl	2;	.type	32;	.endef
	.def	_packet_call_completion_handlers;	.scl	2;	.type	32;	.endef
	.def	_packet_enum_tlv;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_group_entry;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_string;	.scl	2;	.type	32;	.endef
	.def	_packet_is_tlv_null_terminated;	.scl	2;	.type	32;	.endef
	.def	_packet_remove_completion_handler;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_empty_response;	.scl	2;	.type	32;	.endef
	.def	_packet_transmit_response;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_string;	.scl	2;	.type	32;	.endef
	.def	_packet_create;	.scl	2;	.type	32;	.endef
	.def	_packet_create_group;	.scl	2;	.type	32;	.endef
	.def	_packet_create_response;	.scl	2;	.type	32;	.endef
	.def	_packet_get_type;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_qword;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_meta;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_uint;	.scl	2;	.type	32;	.endef
	.def	_packet_destroy;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_wstring;	.scl	2;	.type	32;	.endef
	.def	_packet_get_tlv_value_reflective_loader;	.scl	2;	.type	32;	.endef
	.def	_command_deregister_all;	.scl	2;	.type	32;	.endef
	.def	_command_register_all;	.scl	2;	.type	32;	.endef
	.def	_command_handle;	.scl	2;	.type	32;	.endef
	.def	_thread_destroy;	.scl	2;	.type	32;	.endef
	.def	_thread_join;	.scl	2;	.type	32;	.endef
	.def	_thread_kill;	.scl	2;	.type	32;	.endef
	.def	_thread_run;	.scl	2;	.type	32;	.endef
	.def	_thread_sigterm;	.scl	2;	.type	32;	.endef
	.def	_thread_create;	.scl	2;	.type	32;	.endef
	.def	_thread_open;	.scl	2;	.type	32;	.endef
	.def	_create_remote_thread;	.scl	2;	.type	32;	.endef
	.def	_core_update_thread_token;	.scl	2;	.type	32;	.endef
	.def	_lock_create;	.scl	2;	.type	32;	.endef
	.def	_lock_acquire;	.scl	2;	.type	32;	.endef
	.def	_lock_destroy;	.scl	2;	.type	32;	.endef
	.def	_lock_release;	.scl	2;	.type	32;	.endef
	.def	_event_destroy;	.scl	2;	.type	32;	.endef
	.def	_event_poll;	.scl	2;	.type	32;	.endef
	.def	_event_signal;	.scl	2;	.type	32;	.endef
	.def	_event_create;	.scl	2;	.type	32;	.endef
	.def	_channel_exists;	.scl	2;	.type	32;	.endef
	.def	_channel_is_interactive;	.scl	2;	.type	32;	.endef
	.def	_channel_is_flag;	.scl	2;	.type	32;	.endef
	.def	_channel_create;	.scl	2;	.type	32;	.endef
	.def	_channel_create_datagram;	.scl	2;	.type	32;	.endef
	.def	_channel_create_pool;	.scl	2;	.type	32;	.endef
	.def	_channel_create_stream;	.scl	2;	.type	32;	.endef
	.def	_channel_find_by_id;	.scl	2;	.type	32;	.endef
	.def	_channel_close;	.scl	2;	.type	32;	.endef
	.def	_channel_default_io_handler;	.scl	2;	.type	32;	.endef
	.def	_channel_get_class;	.scl	2;	.type	32;	.endef
	.def	_channel_get_id;	.scl	2;	.type	32;	.endef
	.def	_channel_interact;	.scl	2;	.type	32;	.endef
	.def	_channel_open;	.scl	2;	.type	32;	.endef
	.def	_channel_read;	.scl	2;	.type	32;	.endef
	.def	_channel_read_from_buffered;	.scl	2;	.type	32;	.endef
	.def	_channel_write;	.scl	2;	.type	32;	.endef
	.def	_channel_write_to_buffered;	.scl	2;	.type	32;	.endef
	.def	_channel_write_to_remote;	.scl	2;	.type	32;	.endef
	.def	_channel_get_native_io_context;	.scl	2;	.type	32;	.endef
	.def	_channel_get_type;	.scl	2;	.type	32;	.endef
	.def	_channel_get_buffered_io_context;	.scl	2;	.type	32;	.endef
	.def	_channel_get_flags;	.scl	2;	.type	32;	.endef
	.def	_channel_destroy;	.scl	2;	.type	32;	.endef
	.def	_channel_set_buffered_io_handler;	.scl	2;	.type	32;	.endef
	.def	_channel_set_flags;	.scl	2;	.type	32;	.endef
	.def	_channel_set_interactive;	.scl	2;	.type	32;	.endef
	.def	_channel_set_native_io_context;	.scl	2;	.type	32;	.endef
	.def	_channel_set_type;	.scl	2;	.type	32;	.endef
	.def	_scheduler_initialize;	.scl	2;	.type	32;	.endef
	.def	_scheduler_destroy;	.scl	2;	.type	32;	.endef
	.def	_scheduler_insert_waitable;	.scl	2;	.type	32;	.endef
	.def	_scheduler_signal_waitable;	.scl	2;	.type	32;	.endef
	.def	_scheduler_waitable_thread@4;	.scl	2;	.type	32;	.endef
	.def	_utf8_to_wchar;	.scl	2;	.type	32;	.endef
	.def	_wchar_to_utf8;	.scl	2;	.type	32;	.endef
	.def	_inject_dll;	.scl	2;	.type	32;	.endef
	.def	_inject_via_apcthread;	.scl	2;	.type	32;	.endef
	.def	_inject_via_remotethread;	.scl	2;	.type	32;	.endef
	.def	_inject_via_remotethread_wow64;	.scl	2;	.type	32;	.endef
	.def	_core_update_desktop;	.scl	2;	.type	32;	.endef
	.def	_list_add;	.scl	2;	.type	32;	.endef
	.def	_list_clear;	.scl	2;	.type	32;	.endef
	.def	_list_enumerate;	.scl	2;	.type	32;	.endef
	.def	_list_push;	.scl	2;	.type	32;	.endef
	.def	_list_remove;	.scl	2;	.type	32;	.endef
	.def	_list_remove_at;	.scl	2;	.type	32;	.endef
	.def	_list_count;	.scl	2;	.type	32;	.endef
	.def	_list_create;	.scl	2;	.type	32;	.endef
	.def	_list_get;	.scl	2;	.type	32;	.endef
	.def	_list_pop;	.scl	2;	.type	32;	.endef
	.def	_list_shift;	.scl	2;	.type	32;	.endef
	.def	_list_destroy;	.scl	2;	.type	32;	.endef
