TESTS_SRC_CPP = \
	tests/trigger/test_all_triggers.cpp \
	tests/trigger/test_symmetrical_crank.cpp \
	tests/trigger/test_trigger_decoder.cpp \
	tests/trigger/test_trigger_decoder_2.cpp \
	tests/trigger/test_trigger_noiseless.cpp \
	tests/trigger/test_trigger_multi_sync.cpp \
	tests/trigger/test_trigger_input_adc.cpp \
	tests/trigger/test_miata_na_tdc.cpp \
	tests/trigger/test_cam_vvt_input.cpp \
	tests/trigger/test_2jz_vvt.cpp \
	tests/trigger/test_real_cranking_miata_NA.cpp \
	tests/trigger/test_real_cranking_miata_na6.cpp \
	tests/trigger/test_real_cranking_nissan_vq40.cpp \
	tests/trigger/test_real_cas_24_plus_1.cpp \
	tests/trigger/test_trigger_skipped_wheel.cpp \
	tests/trigger/test_real_4b11.cpp \
	tests/trigger/test_real_4g93.cpp \
	tests/trigger/test_real_volkswagen.cpp \
	tests/trigger/test_real_nb2_cranking.cpp \
	tests/trigger/test_real_gm_24x.cpp \
	tests/trigger/test_real_k24a2.cpp \
	tests/trigger/test_real_k20.cpp \
	tests/trigger/test_map_cam.cpp \
	tests/trigger/test_rpm_multiplier.cpp \
	tests/trigger/test_quad_cam.cpp \
	tests/trigger/test_nissan_vq_vvt.cpp \
	tests/trigger/test_override_gaps.cpp \
	tests/trigger/test_injection_scheduling.cpp \
	tests/sent/test_sent.cpp \
	tests/ignition_injection/injection_mode_transition.cpp \
	tests/ignition_injection/test_startOfCrankingPrimingPulse.cpp \
	tests/ignition_injection/test_multispark.cpp \
	tests/ignition_injection/test_ignition_scheduling.cpp \
	tests/ignition_injection/test_fuelCut.cpp \
	tests/ignition_injection/test_fuel_computer.cpp \
	tests/ignition_injection/test_injector_model.cpp \
	tests/lua/test_lua_basic.cpp \
	tests/lua/test_lookup.cpp \
	tests/lua/test_lua_e38.cpp \
	tests/lua/test_lua_e65.cpp \
	tests/lua/test_lua_ford.cpp \
	tests/lua/test_lua_vag.cpp \
	tests/lua/test_lua_honda.cpp \
	tests/lua/test_lua_kia.cpp \
	tests/lua/test_lua_nissan.cpp \
	tests/lua/test_lua_with_engine.cpp \
	tests/lua/test_lua_hooks.cpp \
	tests/lua/test_lua_Leiderman_Khlystov.cpp \
	tests/lua/test_can_filter.cpp \
	tests/lua/test_lua_vin.cpp \
	tests/test_change_engine_type.cpp \
	tests/util/test_scaled_channel.cpp \
	tests/util/test_timer.cpp \
	tests/system/test_periodic_thread_controller.cpp \
	tests/test_util.cpp \
	tests/test_start_stop.cpp \
	tests/test_hardware_reinit.cpp \
	tests/test_ion.cpp \
	tests/test_kline_bytes_aggregator.cpp \
	tests/test_hip9011.cpp \
	tests/test_engine_math.cpp \
	tests/test_throttle_model.cpp \
	tests/test_fasterEngineSpinningUp.cpp \
	tests/test_dwell_corner_case_issue_796.cpp \
	tests/test_idle_controller.cpp \
	tests/test_launch.cpp \
	tests/test_fuel_map.cpp \
	tests/test_gear_detector.cpp \
	tests/ignition_injection/test_fuel_wall_wetting.cpp \
	tests/test_one_cylinder_logic.cpp \
	tests/test_tunerstudio.cpp \
	tests/test_pwm_generator.cpp \
	tests/test_log_buffer.cpp \
	tests/test_signal_executor.cpp \
	tests/test_cpp_memory_layout.cpp \
	tests/test_pid_auto.cpp \
	tests/test_pid.cpp \
	tests/test_accel_enrichment.cpp \
	tests/test_gpiochip.cpp \
	tests/test_deadband.cpp \
	tests/test_knock.cpp \
	tests/test_lambda_monitor.cpp \
	tests/sensor/basic_sensor.cpp \
	tests/sensor/func_sensor.cpp \
	tests/sensor/function_pointer_sensor.cpp \
	tests/sensor/mock_sensor.cpp \
	tests/sensor/sensor_reader.cpp \
	tests/sensor/lin_func.cpp \
	tests/sensor/resist_func.cpp \
	tests/sensor/therm_func.cpp \
	tests/sensor/func_chain.cpp \
	tests/sensor/redundant.cpp \
	tests/sensor/test_sensor_init.cpp \
	tests/sensor/table_func.cpp \
	tests/util/test_closed_loop_controller.cpp \
	tests/test_stft.cpp \
	tests/test_hpfp.cpp \
	tests/test_hpfp_integrated.cpp \
	tests/test_fuel_math.cpp \
	tests/test_binary_log.cpp \
	tests/test_dynoview.cpp \
	tests/test_gpio.cpp \
	tests/test_limp.cpp \
	tests/test_can_rx.cpp \
	tests/test_can_serial.cpp \
	tests/test_can_wideband.cpp \
	tests/test_hellen_board_id.cpp \
	tests/sensor/test_frequency_sensor.cpp \
	tests/sensor/test_turbocharger_speed_converter.cpp \
	tests/sensor/test_vehicle_speed_converter.cpp \
	tests/actuators/test_aux_valves.cpp \
	tests/actuators/test_antilag.cpp \
	tests/actuators/test_boost.cpp \
	tests/actuators/test_dc_motor.cpp \
	tests/actuators/test_etb.cpp \
	tests/actuators/test_etb_integrated.cpp \
	tests/actuators/test_fan_control.cpp \
	tests/actuators/test_fuel_pump.cpp \
	tests/actuators/test_gppwm.cpp \
	tests/actuators/test_main_relay.cpp \
	tests/actuators/test_stepper.cpp \
	tests/actuators/test_tacho.cpp \
	tests/actuators/test_vvt.cpp \
